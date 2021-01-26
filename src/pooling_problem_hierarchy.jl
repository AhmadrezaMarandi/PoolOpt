using Mosek
using Polyopt
using JuMP
using LinearAlgebra


function elimination_equality(data_a)
 I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost=data_a;

 Ma_lamb=maximum(Lambda);
 Mi_lamb=minimum(Lambda);
 MO=maximum(C_J);
 UIindex=getindex.(findall(!iszero,1 ./ UI),2)
 ULindex=getindex.(findall(!iszero,1 ./ UL),2);
 UJindex=getindex.(findall(!iszero,1 ./ UJ),2);
 SizeUIindex=size(UIindex);
 SizeUJindex=size(UJindex);
 SizeULindex=size(ULindex);
 CIindex=getindex.(findall(!iszero,1 ./ C_I),2);
 CLindex=getindex.(findall(!iszero,1 ./ C_L),2);
 CJindex=getindex.(findall(!iszero,1 ./ C_J),2);
 SizeCIindex=size(CIindex);
 SizeCJindex=size(CJindex);
 SizeCLindex=size(CLindex);
 lCIindex=getindex.(findall(!iszero,lCI),2);
 lCLindex=getindex.(findall(!iszero,lCL),2);
 lCJindex=getindex.(findall(!iszero,lCJ),2);

 Poolinputsize=zeros(L,1); # number of inputs feed each pool
 Poolinput=Array{Any}(undef,L); # contains inputs' indeces that feed pool l, for each pool l.

 for l in 1:L
    a=findall(!iszero,AI[:,l]);
    Poolinput[l]=collect(a) ; #a cell whose elements are a vector including pools l's inputs

    Poolinputsize[l,:] .= Int(size(a,1));
 end

 Pooloutputsize=zeros(L,1); # number of outputs for each pool
 Pooloutput=Array{Any}(undef,L); # contains outputs' indeces of pool l, for each pool l.

 for l in 1:L
    a=findall(!iszero,AL[l,:]);
    Pooloutput[l]=a ; #a cell whose elements are a vector including pools' outputs
    Pooloutputsize[l,:] .= Int(size(a,1));
 end

 Inputoutputsize=zeros(I,1);
 Inputoutput=Array{Any}(undef,I);

 for i in 1:I
    a=findall(!iszero,AJ[i,:]);
    Inputoutput[i]=collect(a) ; #a cell whose elements are a vector including inputs' outputs
    Inputoutputsize[i,:] .= Int(size(a,1));
 end

 n=L*K+Int(sum(Pooloutputsize))+
      Int(sum(Inputoutputsize))+Int(sum(Poolinputsize))-L*(K+1);



 y = variables("y:\n",n);
 #y=collect(1:n);
 yout=y[1:Int(sum(Pooloutputsize))];# pool-output
 # print("yout:\n",yout);
 yin=y[Int(sum(Pooloutputsize))+1:Int(sum(Pooloutputsize))+Int(sum(Inputoutputsize))]; # input-output
 # print("yin:\n",yin);
 assignedNumber=Int(sum(Pooloutputsize))+Int(sum(Inputoutputsize));
 # print("assigned number sofar: \n", assignedNumber);
 # making the matrices in the polynomial{Float64,1} format
 z=variables("z" ,maximum([L*K,L*J,I*L,I*J]));
 #z=zeros(1,maximum([L*K,L*J,I*L,I*J]));

 P_lk=reshape(0.1*z[1:L*K],L,K);
 Y_lj=reshape(0.1*z[1:L*J],L,J);
 Y_il=reshape(0.1*z[1:I*L],I,L);
 Y_ij=reshape(0.1*z[1:I*J],I,J);

 #constructing the input-output variables as Y_ij
   for i=1:I
    for j=1:Int(Inputoutputsize[i])
      h=Inputoutput[i];
      Y_ij[i,h[j]]=yin[Int(sum(Inputoutputsize[1:i-1]))+j];
    end
    for j=1:J
      if !(j in Inputoutput[i])
        Y_ij[i,j]=0;
      end
    end
    if i==I
       # printstyled("=================Input-output variables are build!=================\n",color=:yellow)
       printstyled("=================Input-output variables are build!=================\n",color=:yellow)
    end
   end

 for l=1:L
  #constructing the pool-output variables as Y_lj
    for j=1:Int(Pooloutputsize[l])
      h=Pooloutput[l];
      Y_lj[l,h[j]]=yout[Int(sum(Pooloutputsize[1:l-1]))+j];
    end
    for j=1:J
      if !(j in Pooloutput[l])
        Y_lj[l,j]=0;
      end
    end
    if l==L
         # printstyled("=================Pool-output variables are build!=================\n",color=:yellow)
         printstyled("=================Pool-output variables are build!=================\n",color=:yellow)
    end
 end


 for l=1:L
  if Poolinputsize[l]>=K+1
    # the elimination will be on the input-pools variables when the incoming arcs are enough
    p=y[assignedNumber+1:assignedNumber+K];
    yinpool=y[assignedNumber+K+1: assignedNumber+K+Int(Poolinputsize[l])-(K+1)]; # input-pool
    assignedNumber=assignedNumber+K+Int(Poolinputsize[l])-(K+1);
    # print("assigned number sofar: \n", assignedNumber);
    #constructing the concentration variables as p_lk
      P_lk[l,:]=p[:];
      if l==L
        # printstyled("=================Concentration variables are build!=================\n",color=:yellow)
        printstyled("=================Concentration variables are build!=================\n",color=:yellow)
      end
    #constructing the input-pool variables as Y_il
    h=Lambda[Poolinput[l],:];
    A=[ones(1,Int(Poolinputsize[l]));
        h'] ; # A is the coeffiecient matrix of the input flow variables
       # print(A)
    (Q,R)=qr(A); #Q is full rank (K+1)*(K+1) and R is uppertriangular (K+1)*Inputsize(l)
    #Solving elimination (25) in Marandi, de Klerk, Dahl's paper
    Q =Q*Matrix(LinearAlgebra.I,K+1,K+1);


    h=sum(Y_lj[l,:]);
    Pvec=[];
    for k=1:K
      Pvec=[Pvec;h*((Ma_lamb-Mi_lamb)*P_lk[l,k]+Mi_lamb)];
    end
    Pvec=[h;Pvec];
      # R[:,1:K+1] yinpool[sum(Poolinputsize[1:l-1])+1:sum(Poolinputsize[1:l-1])+K+1]=h*Q'*[1;P_lk[l,:]]-R[:,K+2:end]*[Y_il[k+1:end]]
     #we use pseudoinverse for elimination
     A_plas=pinv(R[:,1:K+1]);


     y_help=A_plas*(Q'*Pvec - R[:,K+2:end]*yinpool);

      hh=Poolinput[l];
      for i=1:Int(Poolinputsize[l]) #elimination of the first K+1 feeding inputs
        if i<=K+1
          Y_il[Int(hh[i]),l]=y_help[i];
         #h itself is Any but h[1] is Poly. Also, right side is float
        else
          Y_il[Int(hh[i]),l]=yinpool[i-K-1];
        end
      end
      for i=1:I
        if !(i in hh)
          Y_il[i,l]=0;
        end
      end
    if l==L
      # printstyled("==========Input-pool variables are build, considering elimination of the equality constraints!=============\n \n",color=:yellow)
      printstyled("==========Input-pool variables are build, considering elimination of the equality constraints!=============\n \n",color=:yellow)
    end
  else
     # the elimination will be on the input-pools and concentration variables
    p=y[assignedNumber+1:assignedNumber+Int(Poolinputsize[l])-1];
    # yinpool=y[assignedNumber+K+1: assignedNumber+K+Int(Poolinputsize[l])-(K+1)]; # input-pool
    assignedNumber=assignedNumber+Int(Poolinputsize[l])-1;
    #Solving elimination (25) in Marandi, de Klerk, Dahl's paper
    #constructing the concentration variables as p_lk
    for k=1:Int(Poolinputsize[l])-1
      P_lk[l,k]=p[k];
    end
    h=Lambda[Poolinput[l],:];
    A=[ones(1,Int(Poolinputsize[l]));
        h'] ; # A is the coeffiecient matrix of the input flow variables
       # print(A)
    Q,R=qr(A); #Q is full rank (K+1)*(K+1) and R is uppertriangular (K+1)*Inputsize(l)

    # println(Matrix{Int}(LinearAlgebra.I,K+1,K+1))
    Q= Q * Matrix(LinearAlgebra.I,K+1,K+1);

    Q= Q';


    # 0=Q'*[1; P_lk]


    h=-pinv(Q[Int(Poolinputsize[l])+1:K+1,Int(Poolinputsize[l])+1:K+1])*Q[Int(Poolinputsize[l])+1:K+1,1:Int(Poolinputsize[l])]*[1/(Ma_lamb-Mi_lamb);p+(Mi_lamb/(Ma_lamb-Mi_lamb))*ones(Int(Poolinputsize[l])-1,1)]-(Mi_lamb/(Ma_lamb-Mi_lamb))*ones(-Int(Poolinputsize[l])+K+1,1);
    for k=Int(Poolinputsize[l]):K
      P_lk[l,k]=h[k-Int(Poolinputsize[l])+1];
    end
    if l==L
        # printstyled("=================Concentration variables are build!=================\n",color=:yellow)
        printstyled("=================Concentration variables are build!=================\n",color=:yellow)
    end
    h=sum(Y_lj[l,:]);
    Pvec=[];
    for k=1:K
      Pvec=[Pvec;h*((Ma_lamb-Mi_lamb)*P_lk[l,k]+Mi_lamb)];
    end
    Pvec=[h;Pvec];
      # R[:,1:K+1] yinpool[sum(Poolinputsize[1:l-1])+1:sum(Poolinputsize[1:l-1])+K+1]=h*Q'*[1;P_lk[l,:]]-R[:,K+2:end]*[Y_il[k+1:end]]
     #we use pseudoinverse for elimination
     A_plas=pinv(R);
      y_help=A_plas*Q[1:Int(Poolinputsize[l]),:]*Pvec;
      hh=Poolinput[l];
      for i=1:Int(Poolinputsize[l]) #elimination of the first K+1 feeding inputs
          Y_il[Int(hh[i]),l]=y_help[i];
      end
      for i=1:I
        if !(i in hh)
          Y_il[i,l]=0;
        end
      end
    if l==L
      printstyled("==========Input-pool variables are build, considering elimination of the equality constraints!=============\n \n",color=:yellow)
    end
  end
 end

 printstyled("==========The model is being constructed ... =============\n \n",color=:yellow)





 f= MO * ( sum(costI .* Y_il) +
   sum(costL .* Y_lj)+
   sum(costJ .* Y_ij)-
   sum((sum(Y_ij,dims=1) + sum(Y_lj, dims=1) ) * Demandcost) #the first sum is to convert one-lenght array to a polynomial
   );
 printstyled("==========Objective function is constructed! =============\n \n",color=:yellow);

 SizeCIindex=size(CIindex,1);
 SizeCJindex=size(CJindex,1);
 SizeCLindex=size(CLindex,1);
 SizelCIindex=size(lCIindex,1);
 SizelCJindex=size(lCJindex,1);
 SizelCLindex=size(lCLindex,1);

 g=Polyopt.Poly{Int64}[];
 #capacity ristrictions
 for i=1:SizeCIindex

  g=[g;
    1-(MO/ C_I[CIindex[i]])*(sum(Y_il[CIindex[i],:])+
                sum(Y_ij[CIindex[i],:]))];
 end
 for i=1:SizelCIindex
       g=[g;
           -(lCI[lCIindex[i]])/ (MO*(L+J))+(1/(L+J))*(sum(Y_il[lCIindex[i],:])+
                           sum(Y_ij[lCIindex[i],:])
                          )];
 end
 for l=1:SizeCLindex
       g=[g;
           1-MO/(C_L[CLindex[l]])*(sum(Y_lj[CLindex[l],:])) ];
 end

 for l=1:SizelCLindex
       g=[g;
           -(lCL[lCLindex[l]])/(MO*(J))+(1/J)*(sum(Y_lj[lCLindex[l],:])) ];
 end


 for j=1:SizeCJindex
      # print("CJindex:", CJindex[j]);
      # print("\n")
       g=[g;
           1-MO/(C_J[CJindex[j]])*(sum(Y_ij[:,CJindex[j]])+
                         sum(Y_lj[:,CJindex[j]]))];
 end
 for j=1:SizelCJindex
       g=[g;
           -(lCJ[lCJindex[j]])/(MO*(I+L))+(1/(I+L))*(sum(Y_ij[:,CJindex[j]])+
                                           sum(Y_lj[:,CJindex[j]]))];
 end

 #MU_max constraint
 for j=1:J
    for k=1:K
      # if Mi_lamb>=0
        g=[g;
            (1/(max(Mu_max[j,k],0)*(I+L)-sum(min.(Lambda[:,k],0))-min(0,Mi_lamb)*L))*(Mu_max[j,k]*(sum(Y_ij[:,j])+sum(Y_lj[:,j]))-
                                        (sum(Lambda[:,k].*Y_ij[:,j])+
                                          (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
                                                    Mi_lamb*sum(Y_lj[:,j])
                                        ))];
      # elseif Mu_max[j,k]>=0
      #           g=[g;
      #       (1/((Mu_max[j,k])*(I+L)-sum(min(Lambda[:,k],0))-Mi_lamb*J))*(Mu_max[j,k]*(sum(Y_ij[:,j])+sum(Y_lj[:,j]))-
      #                                   (sum(Lambda[:,k].*Y_ij[:,j])+
      #                                     (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
      #                                               Mi_lamb*sum(Y_lj[:,j])
      #                                   ))];
      # else
      #     g=[g;
      #       (1/(-sum(min(Lambda[:,k],0))-Mi_lamb*J))*(Mu_max[j,k]*(sum(Y_ij[:,j])+sum(Y_lj[:,j]))-
      #                                   (sum(Lambda[:,k].*Y_ij[:,j])+
      #                                     (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
      #                                               Mi_lamb*sum(Y_lj[:,j])
      #                                   ))];
      # end
    end


 end
 #Mu_min constraint
  for j=1:J
    for k=1:K
        help=1/Mu_min[j,k];
        if help!=0
            # if min( Mu_min[j,k],Mi_lamb)>=0
             g=[g;
               (1/(sum(max.(Lambda[:,k],0))+L*(Ma_lamb-Mi_lamb)+L*max(0,Mi_lamb)-min(Mu_min[j,k],0)*(I+L)))*(sum(Lambda[:,k].*Y_ij[:,j])+
                            (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
                             Mi_lamb*sum(Y_lj[:,j])-
                             (Mu_min[j,k])*(sum(Y_ij[:,j])+
                                      sum(Y_lj[:,j])
                                      )
                             )];
            # elseif
            #     g=[g;
            #    (1/((Ma_lamb*I+L-Mu_min[j,k]*(I+L))))*(sum(Lambda[:,k].*Y_ij[:,j])+
            #                         (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
            #                         Mi_lamb*sum(Y_lj[:,j])-
            #                         (Mu_min[j,k])*(sum(Y_ij[:,j])+sum(Y_lj[:,j]))
            #                         )];
            # end
        end
    end
  end

  #sign constraints
  for l=1:L
     for k=1:K
        g=[g;
            P_lk[l,k]];
      end
  end
  for i=1:I
     for l=1:L
        if(AI[i,l]==1)
          g=[g;
            (1/((J+(I-1))))*Y_il[i,l]];
          end
      end
  end

  for j=1:J
     for l=1:L
        if(AL[l,j]==1)
        g=[g;
            (1/(I+(J-1)))*Y_lj[l,j]];
        end
     end
  end
  for j=1:J
      for i=1:I
          if(AJ[i,j]==1)
          g=[g;
              Y_ij[i,j]];
         end
      end
  end
  #pipe capacity restriction
  g=[g;
       (ones(SizeUIindex[1],1)-((MO./UI[UIindex]).*Y_il[UIindex]))[:,1]];


   g=[g;
       (ones(SizeULindex[1],1)-((MO./UL[ULindex]).*Y_lj[ULindex]))[:,1]];


  g=[g;
       (ones(SizeUJindex[1],1)-((MO./UJ[UJindex]).*Y_ij[UJindex]))[:,1]];


  printstyled("====================Constraints are constructed!=============\n",color=:yellow)
	f,g ,n
end

function with_equality(data_a)
  I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost=data_a;
 Ma_lamb=maximum(Lambda);
 Mi_lamb=minimum(Lambda);
 MO=maximum(C_J);

 UIindex=getindex.(findall(!iszero,1 ./ UI),2);
 ULindex=getindex.(findall(!iszero,1 ./ UL),2);
 UJindex=getindex.(findall(!iszero,1 ./ UJ),2);
 SizeUIindex=size(UIindex);
 SizeUJindex=size(UJindex);
 SizeULindex=size(ULindex);
 CIindex=getindex.(findall(!iszero,1 ./ C_I),2);
 CLindex=getindex.(findall(!iszero,1 ./ C_L),2);
 CJindex=getindex.(findall(!iszero,1 ./ C_J),2);



 SizeCIindex=size(CIindex);
 SizeCJindex=size(CJindex);
 SizeCLindex=size(CLindex);
 lCIindex=getindex.(findall(!iszero,lCI),2);
 lCLindex=getindex.(findall(!iszero,lCL),2);
 lCJindex=getindex.(findall(!iszero,lCJ),2);

 Poolinputsize=zeros(L,1); # number of inputs feed each pool
 Poolinput=Array{Any}(undef,L); # contains inputs' indeces that feed pool l, for each pool l.

 for l in 1:L
    a=findall(!iszero,AI[:,l]);
    Poolinput[l]=collect(a) ; #a cell whose elements are a vector including pools l's inputs
    Poolinputsize[l,:] .=Int(size(a,1));
 end

 Pooloutputsize=zeros(L,1); # number of outputs for each pool
 Pooloutput=Array{Any}(undef,L); # contains outputs' indeces of pool l, for each pool l.

 for l in 1:L
    a=findall(!iszero,AL[l,:]);
    Pooloutput[l]=a ; #a cell whose elements are a vector including pools' outputs
    Pooloutputsize[l,:] .=Int(size(a,1));
 end

 Inputoutputsize=zeros(I,1);
 Inputoutput=Array{Any}(undef,I);
 for i in 1:I
    a=findall(!iszero,AJ[i,:]);
    Inputoutput[i]=collect(a) ; #a cell whose elements are a vector including inputs' outputs
    Inputoutputsize[i,:] .=Int(size(a,1));
 end

 n=L*K+Int(sum(Pooloutputsize))+
            Int(sum(Inputoutputsize))+Int(sum(Poolinputsize));



 y=variables("y" ,n);
 #y=collect(1:n);
 yout=y[1:Int(sum(Pooloutputsize))];# pool-output
 yin=y[Int(sum(Pooloutputsize))+1:Int(sum(Pooloutputsize))+Int(sum(Inputoutputsize))]; # input-output
 assignedNumber=Int(sum(Pooloutputsize))+Int(sum(Inputoutputsize));
 ypool=y[assignedNumber+1:assignedNumber+L*K]; # P_lk
 assignedNumber=assignedNumber+L*K;
 yinputpool=y[assignedNumber+1:assignedNumber+Int(sum(Poolinputsize))];
 # println("OK")
 #  making the matrices in the polynomial{Float64,1} format
 z=variables("z" ,maximum([L*K,L*J,I*L,I*J]));
 #z=zeros(1,maximum([L*K,L*J,I*L,I*J]));

 P_lk=reshape(0.1*z[1:L*K],L,K);
 Y_lj=reshape(0.1*z[1:L*J],L,J);
 Y_il=reshape(0.1*z[1:I*L],I,L);
 Y_ij=reshape(0.1*z[1:I*J],I,J);

   P_lk_index=zeros(L,K);
   Y_lj_index=zeros(L,J);
   Y_il_index=zeros(I,L);
   Y_ij_index=zeros(I,J);
 #constructing the input-output variables as Y_ij
     for i=1:I
        for j=1:Int(Inputoutputsize[i])
            h=Inputoutput[i];
            Y_ij[i,h[j]]=yin[Int(sum(Inputoutputsize[1:i-1]))+j];
            Y_ij_index[i,h[j]]=sort(indexin([yin[Int(sum(Inputoutputsize[1:i-1]))+j]],y))[1];
        end
        for j=1:J
            if !(j in Inputoutput[i])
                Y_ij[i,j]=0;
            end
        end
        if i==I
             printstyled("=================Input-output variables are build!=================\n",color=:yellow)
        end
     end

 for l=1:L
    #constructing the pool-output variables as Y_lj
        for j=1:Int(Pooloutputsize[l])
            h=Pooloutput[l];
            Y_lj[l,h[j]]=yout[Int(sum(Pooloutputsize[1:l-1]))+j];
            Y_lj_index[l,h[j]]=sort(indexin([yout[Int(sum(Pooloutputsize[1:l-1]))+j]],y))[1];
        end
        for j=1:J
            if !(j in Pooloutput[l])
                Y_lj[l,j]=0;
            end
        end
        if l==L
                 printstyled("=================Pool-output variables are build!=================\n",color=:yellow)
        end

 # constructing the input-pool
        for i=1:Int(Poolinputsize[l])
            h=Poolinput[l];
            Y_il[h[i],l]=yinputpool[Int(sum(Poolinputsize[1:l-1]))+i];
            Y_il_index[h[i],l]=sort(indexin([yinputpool[Int(sum(Poolinputsize[1:l-1]))+i]],y))[1];
        end
        for i=1:I
            if !(i in Poolinput[l])
                Y_il[i,l]=0;
            end
        end
        if l==L
                 printstyled("=================Input-Pool variables are build!=================\n",color=:yellow)
        end
        P_lk[l,:]=ypool[(l-1)*K+1:l*K];
        P_lk_index[l,:]=sort(indexin(ypool[(l-1)*K+1:l*K],y));
        if l==L
                 printstyled("=================Pool_specification variables are build!=================\n",color=:yellow)
        end
 end
 printstyled("==========The model is being constructed ... =============\n \n",color=:yellow)


 # display(P_lk)
 # display(Y_il)
 # display(Y_lj)
 # display(Y_ij)

 f=MO*(sum(costI .*Y_il)+
   sum(costL .*Y_lj)+
   sum(costJ .*Y_ij)-
   sum((sum(Y_ij,dims=1)+sum(Y_lj,dims=1))*Demandcost) #the first sum is to convert one-lenght array to a polynomial
   );
 printstyled("==========Objective function is constructed! =============\n \n",color=:yellow)

 SizeCIindex=size(CIindex,1);
 SizeCJindex=size(CJindex,1);
 SizeCLindex=size(CLindex,1);
 SizelCIindex=size(lCIindex,1);
 SizelCJindex=size(lCJindex,1);
 SizelCLindex=size(lCLindex,1);

 eq=Polyopt.Poly{Int64}[]; #equality constraints
 for l=1:L
    # balance constraint of input and output of a pool l
    eq=[eq;
     (1/I)*(sum(Y_il[:,l])-sum(Y_lj[l,:]));
    (1/J)*(-sum(Y_il[:,l])+sum(Y_lj[l,:]))]; #just for replacing with 2 inequalities
    # balance between input and outputs specifications of a pool l

    for k=1:K
        lhelp=Lambda[:,k];
        # println("lhelp'*Y_il[:,l]",lhelp'*Y_il[:,l])
        eq=[eq;
         (1/(Ma_lamb*I))*(lhelp'*Y_il[:,l]-((Ma_lamb-Mi_lamb)*P_lk[l,k]+Mi_lamb)*sum(Y_lj[l,:]));
        (1/(Ma_lamb*J))*(-lhelp'*Y_il[:,l]+((Ma_lamb-Mi_lamb)*P_lk[l,k]+Mi_lamb)*sum(Y_lj[l,:]))];
    end
 end


 g=Polyopt.Poly{Int64}[];#inequality constraints
 #capacity ristrictions
 for i=1:SizeCIindex

    g=[g;
        1-(MO/C_I[CIindex[i]])*(sum(Y_il[CIindex[i],:])+
                                sum(Y_ij[CIindex[i],:]))];
 end
 for i=1:SizelCIindex
       g=[g;
            - (lCI[lCIindex[i]])/(MO*(L+J))+(1/(L+J))*(sum(Y_il[lCIindex[i],:])+
                                                     sum(Y_ij[lCIindex[i],:])
                                                    )];
 end
 for l=1:SizeCLindex
       g=[g;
           1 - MO/(C_L[CLindex[l]])*(sum(Y_lj[CLindex[l],:])) ];
 end

 for l=1:SizelCLindex
       g=[g;
           - (lCL[lCLindex[l]])/(MO*(J))+(1/J)*(sum(Y_lj[lCLindex[l],:])) ];
 end

 for j=1:SizeCJindex
       g=[g;
           1 - MO/(C_J[CJindex[j]])*(sum(Y_ij[:,CJindex[j]])+
                                   sum(Y_lj[:,CJindex[j]]))];
 end
 for j=1:SizelCJindex
       g=[g;
           - (lCJ[lCJindex[j]])/(MO*(I+L))+(1/(I+L))*(sum(Y_ij[:,CJindex[j]])+
                                                     sum(Y_lj[:,CJindex[j]]))];
 end

#MU_max constraint
 for j=1:J
    for k=1:K
      # if Mi_lamb>=0
        g=[g;
            (1/(max(Mu_max[j,k],0)*(I+L)-sum(min.(Lambda[:,k],0))-min(0,Mi_lamb)*L))*(Mu_max[j,k]*(sum(Y_ij[:,j])+sum(Y_lj[:,j]))-
                                        (sum(Lambda[:,k].*Y_ij[:,j])+
                                          (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
                                                    Mi_lamb*sum(Y_lj[:,j])
                                        ))];
      # elseif Mu_max[j,k]>=0
      #           g=[g;
      #       (1/((Mu_max[j,k])*(I+L)-sum(min(Lambda[:,k],0))-Mi_lamb*J))*(Mu_max[j,k]*(sum(Y_ij[:,j])+sum(Y_lj[:,j]))-
      #                                   (sum(Lambda[:,k].*Y_ij[:,j])+
      #                                     (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
      #                                               Mi_lamb*sum(Y_lj[:,j])
      #                                   ))];
      # else
      #     g=[g;
      #       (1/(-sum(min(Lambda[:,k],0))-Mi_lamb*J))*(Mu_max[j,k]*(sum(Y_ij[:,j])+sum(Y_lj[:,j]))-
      #                                   (sum(Lambda[:,k].*Y_ij[:,j])+
      #                                     (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
      #                                               Mi_lamb*sum(Y_lj[:,j])
      #                                   ))];
      # end
    end


 end
 #Mu_min constraint
  for j=1:J
    for k=1:K
        help=1/Mu_min[j,k];
        if help!=0
            # if min( Mu_min[j,k],Mi_lamb)>=0
             g=[g;
               (1/(sum(max(Lambda[:,k],0))+L*(Ma_lamb-Mi_lamb)+L*max(0,Mi_lamb)-min(Mu_min[j,k],0)*(I+L)))*(sum(Lambda[:,k].*Y_ij[:,j])+
                            (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
                             Mi_lamb*sum(Y_lj[:,j])-
                             (Mu_min[j,k])*(sum(Y_ij[:,j])+
                                      sum(Y_lj[:,j])
                                      )
                             )];
            # elseif
            #     g=[g;
            #    (1/((Ma_lamb*I+L-Mu_min[j,k]*(I+L))))*(sum(Lambda[:,k].*Y_ij[:,j])+
            #                         (Ma_lamb-Mi_lamb)*(sum(P_lk[:,k].*Y_lj[:,j]))+
            #                         Mi_lamb*sum(Y_lj[:,j])-
            #                         (Mu_min[j,k])*(sum(Y_ij[:,j])+sum(Y_lj[:,j]))
            #                         )];
            # end
        end
    end
  end

 #sign constraints
 for l=1:L
    for k=1:K
        g=[g;
            P_lk[l,k]];
    end
 end
 for i=1:I
    for l=1:L
        if(AI[i,l]==1)
        g=[g;
            Y_il[i,l]];
        end
    end
 end

 for j=1:J
    for l=1:L
        if(AL[l,j]==1)
        g=[g;
            Y_lj[l,j]];
        end
    end
 end
 for j=1:J
    for i=1:I
        if(AJ[i,j]==1)
        g=[g;
            Y_ij[i,j]];
        end
    end
 end
 #pipe capacity restriction
  g=[g;
       (ones(SizeUIindex[1],1) - ((MO./UI[UIindex]).*Y_il[UIindex]))[:,1]];


   g=[g;
       (ones(SizeULindex[1],1) - ((MO./UL[ULindex]).*Y_lj[ULindex]))[:,1]];


  g=[g;
       (ones(SizeUJindex[1],1)-((MO./UJ[UJindex]).*Y_ij[UJindex]))[:,1]];

  f,g,eq,n
end


function pooling_with_eq_BSOS(data_a , d::Int, k::Int)

	@time f_eq, g_eq, eq_eq, n_eq=with_equality(data_a);
	 f_eqscale = maximum(abs.(f_eq.c));
    # f_eqscale=1;
    f_eq=Polyopt.truncate(1/f_eqscale*f_eq);
    g_eq=Array{Polyopt.Poly{Float64},1}(g_eq);
    for i=1:length(g_eq)
        g_eq[i] = Polyopt.truncate(0.9*g_eq[i])
    end
    eq_eq=Array{Polyopt.Poly{Float64},1}(eq_eq);
    for i=1:length(eq_eq)
        eq_eq[i] = Polyopt.truncate(0.9*eq_eq[i])
    end
    	I = Array{Int,1}[ collect(1:n_eq) ];
      y=variables("y",n_eq);
   for j=1:size(I,1)
            z=variables("z",size(I[j],1));
            Ihelp=I[j];
            for i=1:size(Ihelp,1)
                z[i]=y[Ihelp[i]]^2;
            end
            g_eq=[g_eq;
                 1-sum(z)*(1/size(Ihelp,1))];
   end
   println("$(size([g_eq;eq_eq]))")
      prob = bsosprob_chordal(d, k, I, f_eq, [g_eq;eq_eq]);
      printstyled("====================MOSEK is solving the problem... =============\n",color=:yellow)
      time_solution=@elapsed X, t, l, y ,solsta = solve_mosek(prob, tolrelgap=1e-10);
      return( t*f_eqscale,solsta, time_solution)
end

function pooling_without_eq_BSOS(data_a , d::Int, k::Int)


	@time f, g, n=elimination_equality(data_a);
    println("f before scaling:",f)
    fscale = maximum(abs.(f.c));
     # fscale=1;
    f=Polyopt.truncate(1/fscale*f);

    g=Array{Polyopt.Poly{Float64},1}(g);
    for i=1:length(g)
        g[i] = Polyopt.truncate(0.9*g[i])
    end
    I = Array{Int,1}[ collect(1:n) ];
    y=variables("y",n);

      for j=1:size(I,1)
            z=variables("z",size(I[j],1));
            Ihelp=I[j];
            for i=1:size(Ihelp,1)
                z[i]=y[Ihelp[i]]^2;
            end
            g=[g;
                 1-sum(z)*(1/size(Ihelp,1))];
   end
   println("$(size(g))")
   println("$(fscale)")

      prob = bsosprob_chordal(d, k, I, f, g);
      #row uniqueness
      # q=size(Al,1);
      # Ahelp=prob.El[1];
      # A=prob.Al[1]*Ahelp';
      # for i=1:q
      #    Ahelp=prob.El[i];
      #     A=[A;
      #     prob.Al[i]*Ahelp'];
      # end
      # prob.Al=unique_ro(A,Al);
      # printstyled("====================MOSEK is solving the problem... =============\n",color=:yellow)
      # io = fileio +".txt";
      time_solution=@elapsed X, t, l,  y ,solsta= solve_mosek(prob, tolrelgap=1e-10);
      deg=Array{Int64}[];
      for j=1:size(g,1)
        deg=[deg;
          g[j].deg];
      end
      tau=maximum(deg);
      tau=maximum([f.deg, 2*k , d*tau]);
      return( t*fscale,solsta,time_solution)
end

function pooling_with_eq_Sparse_BSOS(data_a , d::Int, k::Int)


	@time f_eq, g_eq, eq_eq, n_eq=with_equality(data_a);
	 f_eqscale = maximum(abs.(f_eq.c));
    # f_eqscale=1;
    f_eq=Polyopt.truncate(1/f_eqscale*f_eq);
    g_eq=Array{Polyopt.Poly{Float64},1}(g_eq);
    for i=1:length(g_eq)
        g_eq[i] = Polyopt.truncate(0.9*g_eq[i])
    end
    eq_eq=Array{Polyopt.Poly{Float64},1}(eq_eq);
    for i=1:length(eq_eq)
        eq_eq[i] = Polyopt.truncate(0.9*eq_eq[i])
    end
    y=variables("y",n_eq);
    	 I_block = Polyopt.chordal_embedding(Polyopt.correlative_sparsity(f_eq,[g_eq;eq_eq]));


   for j=1:size(I_block,1)
            z=variables("z",size(I_block[j],1));
            Ihelp=I_block[j];
            for i=1:size(Ihelp,1)
                z[i]=y[Ihelp[i]]^2;
            end
            g_eq=[g_eq;
                 1-sum(z)*(1/size(Ihelp,1))];
   end
   println("$(size(g_eq))")
   println("$(size(I_block))")
      prob = bsosprob_chordal(d, k, I_block, f_eq, g_eq,eq_eq);
       printstyled("====================MOSEK is solving the problem... =============\n",color=:yellow)
     time_solution=@elapsed X, t, l,  y ,solsta = solve_mosek(prob, tolrelgap=1e-10);
      return( size(I_block),t*f_eqscale,solsta,time_solution)
   # return(I_block)
end

function pooling_without_eq_Sparse_BSOS(data_a , d::Int, k::Int)


	f, g, n=elimination_equality(data_a);
	 fscale = maximum(abs.(f.c));
    # fscale=1;
    f=Polyopt.truncate(1/fscale*f);
    g=Array{Polyopt.Poly{Float64},1}(g);
    for i=1:length(g)
        g[i] = Polyopt.truncate(0.9*g[i])
    end

    	I = Polyopt.chordal_embedding(Polyopt.correlative_sparsity(f,g));
      y=variables("y",n);
   for j=1:size(I,1)
            z=variables("z",size(I[j],1));
            Ihelp=I[j];
            for i=1:size(Ihelp,1)
                z[i]=y[Ihelp[i]]^2;
            end
            g=[g;
                 1-sum(z)*(1/size(Ihelp,1))];
   end
   println("$(size(g))")
      prob = bsosprob_chordal(d, k, I, f, g);
      printstyled("====================MOSEK is solving the problem... =============\n",color=:yellow)
      time_solution=@elapsed X, t, l,  y ,solsta = solve_mosek(prob, tolrelgap=1e-10);
      return( size(I),t*fscale,solsta, time_solution)
end

function pooling_with_eq_Merge_Sparse_BSOS(data_a , d::Int, k::Int)


  @time f_eq, g_eq, eq_eq, n_eq=with_equality(data_a);
   f_eqscale = maximum(abs.(f_eq.c));
    # f_eqscale=1;
    f_eq=Polyopt.truncate(1/f_eqscale*f_eq);
    g_eq=Array{Polyopt.Poly{Float64},1}(g_eq);
    for i=1:length(g_eq)
        g_eq[i] = Polyopt.truncate(0.9*g_eq[i])
    end
    eq_eq=Array{Polyopt.Poly{Float64},1}(eq_eq);
    for i=1:length(eq_eq)
        eq_eq[i] = Polyopt.truncate(0.9*eq_eq[i])
    end
      I_block = Polyopt.chordal_embedding(Polyopt.correlative_sparsity(f_eq,[g_eq;eq_eq]));
      printstyled("====================Checking the overlaps between the cliques... =============\n",color=:yellow)
      #        I=Array{Array{Int64,1},1}(size(I_block)[1]);
      # l=1;
      # while l<=size(I,1)
      #   I[l]=[];
      #   q=1;
      #   if size(I_block,1)>=1
      #     while q<=size(I_block,1)
      #      if size(intersect(I_block[q],Y_il[:,l]),1)>0
      #          I[l]=union(I_block[q],I[l]);
      #          deleteat!(I_block,q);
      #       else
      #          q=q+1;
      #      end
      #     end
      #     l=l+1;
      #   else
      #       deleteat!(I,l);
      #   end
      # end
      # l=1;
      # while l<=size(I,1)
      #   if size(I[l],1)==0
      #     deleteat!(I,l);
      #   else
      #     l=l+1;
      #   end
      # end
      # if size(I_block,1)>=1
      #   I_block=[I;I_block];
      # else
      #   I_block=I;
      # end
     I=I_block;
     Cmatr=collect(combinations(collect(1:size(I,1)),2));
     i=1;
     while i<=size(Cmatr,1)
          if (size(intersect(I[Cmatr[i][1]],I[Cmatr[i][2]]),1)>0.75*min(size(I[Cmatr[i][1]],1),size(I[Cmatr[i][2]],1)))
             I[Cmatr[i][1]]=sort(union(I[Cmatr[i][1]],I[Cmatr[i][2]]));
             deleteat!(I,Cmatr[i][2]);
             Cmatr=collect(combinations(collect(1:size(I,1)),2));
             i=0;
             printstyled("==================== 2 cliques are megred ...=============\n",color=:yellow)
          end
          i=i+1;
     end
     I_block=I;
     # I_block=Array{Int,1}[ collect(1:n_eq) ];
     y=variables("y",n_eq);
   for j=1:size(I_block,1)
            z=variables("z",size(I_block[j],1));
            Ihelp=I_block[j];
            for i=1:size(Ihelp,1)
                z[i]=y[Ihelp[i]]^2;
            end
            g_eq=[g_eq;
                 1-sum(z)*(1/size(Ihelp,1))];
   end
   println("$(size(g_eq))")
   println("$(size(I_block,1))")
   # return(I_block)
      prob = bsosprob_chordal(d, k, I_block, f_eq, g_eq,eq_eq);
      # printstyled("====================MOSEK is solving the problem... =============\n",color=:yellow)
     time_solution=@elapsed X, t, l,  y ,solsta = solve_mosek(prob, tolrelgap=1e-8);
      return( size(I_block),t*f_eqscale,solsta,time_solution)
end

function pooling_without_eq_Merge_Sparse_BSOS(data_a , d::Int, k::Int)


  f, g, n=elimination_equality(data_a);
   fscale = maximum(abs.(f.c));
    # fscale=1;
    f=Polyopt.truncate(1/fscale*f);
    g=Array{Polyopt.Poly{Float64},1}(g);
    for i=1:length(g)
        g[i] = Polyopt.truncate(0.9*g[i])
    end

      I = Polyopt.chordal_embedding(Polyopt.correlative_sparsity(f,g));
      Cmatr=collect(combinations(collect(1:size(I,1)),2));
     i=1;
     while i<=size(Cmatr,1)
          if (size(intersect(I[Cmatr[i][1]],I[Cmatr[i][2]]),1)>0.75*min(size(I[Cmatr[i][1]],1),size(I[Cmatr[i][2]],1)))
             I[Cmatr[i][1]]=sort(union(I[Cmatr[i][1]],I[Cmatr[i][2]]));
             deleteat!(I,Cmatr[i][2]);
             Cmatr=collect(combinations(collect(1:size(I,1)),2));
             i=0;
             printstyled("==================== 2 cliques are megred ...=============\n",color=:yellow)
          end
          i=i+1;
     end
     # I=Array{Int,1}[ collect(1:n) ];
     y=variables("y",n);
   for j=1:size(I,1)
            z=variables("z",size(I[j],1));
            Ihelp=I[j];
            for i=1:size(Ihelp,1)
                z[i]=y[Ihelp[i]]^2;
            end
            g=[g;
                 1-sum(z)*(1/size(Ihelp,1))];
   end
   println("$(size(g))")
      prob = bsosprob_chordal(d, k, I, f, g);
      # printstyled("====================MOSEK is solving the problem... =============\n",color=:yellow)
     time_solution=@elapsed X, t, l,  y ,solsta = solve_mosek(prob, tolrelgap=1e-8);
      return( size(I),t*fscale,solsta,time_solution)
end
