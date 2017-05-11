 using Combinatorics
function Haverly_1()
	K=1; #Number of specifications
 I=3; # Number of Inputs
 L=1;# Number of Pools
 J=2; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1
    1
    0];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 
    0 0
    1 1];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1];
 #Capacity
 #capacity of input
 C_I=[Inf Inf Inf];
        #capacity of pools
 C_L=[ Inf]; 
 #capacity of outputs
 C_J=[100 200]; 
 #lower ristriction for capacity
 lCI=[0 0 0];   
 lCL=[0]; 
 lCJ=[0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[2.5
    1.5];
 # Minimum specification
 Mu_min=-Inf*ones(J,1);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[3
    1
    2];

 #costs
 costI=[6
    16
    0];
 costJ=[0 0
    0 0
    10 10];

 costL=zeros(L,J);
 Demandcost=[9
    15];


 print_with_color(:yellow,"Data was read.\n")
 # include("code.jl");
 # code(K,I,L,J,AI,AJ,AL,CI,CL,CJ,UI,UJ,UL,Mu_max,Mu_min,Lambda,costI,costJ,costL,Demandcost);
 #  include("elimination_2edition.jl");
 # include("replacing_equality.jl")
 return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)

end
function Haverly_2()
 K=1; #Number of specifications
 I=3; # Number of Inputs
 L=1;# Number of Pools
 J=2; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1
    1
    0];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 
    0 0
    1 1];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1];
 #Capacity
 #capacity of input
 C_I=[  Inf Inf Inf];
        #capacity of pools
 C_L=[  Inf]; 
 #capacity of outputs
 C_J=[   600 200]; 
 #lower ristriction for capacity
 lCI=[  0 0 0];   
 lCL=[  0]; 
 lCJ=[   0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 #maximum for flows from input to output
 UJ=Inf*ones(I,J);
 #maximum for flows from pool to output];
 UL=Inf*ones(L,J); 

 # Specification limit
 #Maximum specification
 Mu_max=[2.5
    1.5];
 # Minimum specification
 Mu_min=zeros(J,1);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[3
    1
    2];

 #costs
 costI=[6
    16
    0];
 costJ=[0 0
    0 0
    10 10];

 costL=zeros(L,J);
 Demandcost=[9
    15];

    
 print_with_color(:yellow, "The data was read!\n")

 return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end
function Haverly_3()
	K=1; #Number of specifications
 I=3; # Number of Inputs
 L=1;# Number of Pools
 J=2; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1
    1
    0];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 
    0 0
    1 1];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1];
 #Capacity
 #capacity of input
 C_I=[  Inf Inf Inf];
        #capacity of pools
 C_L=[  Inf]; 
 #capacity of outputs
 C_J=[100 200]; 
 #lower ristriction for capacity
 lCI=[  0 0 0];   
 lCL=[  0]; 
 lCJ=[   0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[2.5
    1.5];
 # Minimum specification
 Mu_min=-Inf*ones(J,1);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[3
    1
    2];

 # costs
 costI=[6
    13
    0];
 costJ=[0 0
    0 0
    10 10];

 costL=zeros(L,J);
 Demandcost=[9
    15];


 print_with_color(:yellow,"Data was read.\n")
	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end
function Adhya_1()
	K=4; #Number of specifications
 I=5; # Number of Inputs
 L=2;# Number of Pools
 J=4; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1 0
    1 0
    0 1
    0 1
    0 1];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 0 0; 
    0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1 1 1; 
    1 1 1 1];
 #Capacity
 #capacity of input
 C_I=[Inf Inf Inf Inf Inf];
        #capacity of pools
 C_L=[ Inf Inf]; 
 #capacity of outputs
 C_J=[10 25 30 10];
 #lower ristriction for capacity
 lCI=[ 0 0 0 0 0];
 lCL=[0 0];
 lCJ=[0 0 0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[3 3 3.25 0.75; 
        4 2.5 3.5 1.5;
        1.5 5.5 3.9 0.8;
        3 4 4 1.8];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[1 6 4 0.5; 
        4 1 3 2 ;
        4 5.5 3 0.9;
        3 3 3 1;
        1 2.7 4 1.6];

 #costs
 costI=[7 0;
    3 0;
    0 2;
    0 10;
    0 5];
 costJ=[0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0];

 costL=zeros(L,J);
 Demandcost=[16;
            25;
            15;
            10];


 print_with_color(:yellow,"Data was read.\n")

	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end
function Adhya_2()
	K=6; #Number of specifications
 I=5; # Number of Inputs
 L=2;# Number of Pools
 J=4; # Number of Outputs

 #  Defining problems' flowchart
 # Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1 0;
    1 0;
    0 1;
    0 1;
    0 1];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 0 0; 
    0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1 1 1; 
    1 1 1 1];
 #Capacity
 #capacity of input
 C_I=[Inf Inf Inf Inf Inf];
        #capacity of pools
 C_L=[ Inf Inf]; 
 #capacity of outputs
 C_J=[10 25 30 10];
 #lower ristriction for capacity
 lCI=[ 0 0 0 0 0];
 lCL=[0 0];
 lCJ=[0 0 0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[3 3 3.25 0.75   6.00    5.00; 
        4 2.5 3.5 1.5  7.00    6.00;
        1.5 5.5 3.9 0.8 7.00    6.00 ;
        3 4 4 1.8  8.00    6.00 ];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[1 6 4 0.5  5.00    9.00; 
        4 1 3 2 4.00    4.00;
        4 5.5 3 0.9 7.00   10.00;
        3 3 3 1  3.00    4.00;
        1 2.7 4 1.6   3.00    7.00 ];

 #costs
 costI=[7 0;
    3 0;
    0 2;
    0 10;
    0 5];
 costJ=[0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0];

 costL=[0 0 0 0 ;
    0 0 0 0 ];
 Demandcost=[16;
            25;
            15;
            10];


 print_with_color(:yellow,"Data was read.\n")
 return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function Adhya_3()
	K=6; #Number of specifications
 I=8; # Number of Inputs
 L=3;# Number of Pools
 J=4; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1 0 0;
    1 0 0;
    0 1 0;
    0 1 0;
    0 1 0;
    0 0 1;
    0 0 1;
    0 0 1];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 0 0; 
    0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0];

 # Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1 1 1; 
    1 1 1 1;
    1 1 1 1];
 #Capacity
 #capacity of input
 C_I=[Inf Inf Inf Inf Inf];
        #capacity of pools
 C_L=[ Inf Inf]; 
 #capacity of outputs
 C_J=[10 25 30 10];
 #lower ristriction for capacity
 lCI=[ 0 0 0 0 0];
 lCL=[0 0];
 lCJ=[0 0 0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[3.00    3.00    3.25    0.75    6.00    5.00;
     4.00    2.50    3.50    1.50    7.00    6.00;
     1.50    5.50    3.90    0.80    7.00    6.00;
     3.00    4.00    4.00    1.80    6.00    6.00];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[1        6      4       0.5    5.00    9.00; 
        4        1       3        2    4.00    4.00;
        4        5.5     3      0.9    7.00   10.00 ;
        3        3      3        1      3.00    4.00;
        1        2.7    4        1.6    3.00    7.00;
        1.80    2.70    4.00    3.50    6.10    3.00
        5.00    1.00    1.70    2.90    3.50    2.90
        3.00    3.00    3.00    1.00    5.00    2.00];

 #costs
 costI=[7.00    0.00    0.00    
      3.00    0.00    0.00   
      0.00    2.00    0.00   
      0.00   10.00    0.00   
      0.00    5.00    0.00    
      0.00    0.00    5.00    
      0.00    0.00    9.00   
      0.00    0.00   11.00 ];
 costJ=[0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00];

 costL=zeros(L,J);
 Demandcost=[16;
            25;
            15;
            10];


 print_with_color(:yellow,"Data was read.\n")
	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function Adhya_4()
	K=4; #Number of specifications
 I=8; # Number of Inputs
 L=2;# Number of Pools
 J=5; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1 0;
    1 0;
    1 0;
    1 0;
    0 1;
    0 1;
    0 1;
    0 1];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 0 0 0; 
    0 0 0 0 0;
    0 0 0 0 0;
    0 0 0 0 0;
    0 0 0 0 0;
    0 0 0 0 0;
    0 0 0 0 0;
    0 0 0 0 0];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1 1 1 1;    
    1 1 1 1 1];
    #Capacity
 #capacity of input
 C_I=[Inf Inf Inf Inf Inf Inf Inf Inf];
        #capacity of pools
 C_L=[ Inf Inf]; 
 #capacity of outputs
 C_J=[15 25 10 20 15];
 #lower ristriction for capacity
 lCI=[0 0 0 0 0 0 0 0];
 lCL=[0 0];
 lCJ=[0 0 0 0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[1.20    1.70    1.40    1.70
     1.40    1.30    1.80    1.40
     1.30    1.30    1.90    1.90
     1.20    1.10    1.70    1.60
     1.60    1.90    2.00    2.50];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[0.50    1.90    1.30    1.00
      1.40    1.80    1.70    1.60
      1.20    1.90    1.40    1.40
      1.50    1.20    1.70    1.30
      1.60    1.80    1.60    2.00
      1.20    1.10    1.40    2.00
      1.50    1.50    1.50    1.50
      1.40    1.60    1.20    1.60];

 #costs
 costI=[15.00    0.00    
      7.00    0.00  
      4.00    0.00 
      5.00    0.00 
      0.00    6.00 
      0.00    3.00  
      0.00    5.00  
      0.00    5.00  ];
 costJ=[0.00    0.00    0.00    0.00     0
        0.00    0.00    0.00    0.00    0
        0.00    0.00    0.00    0.00    0
        0.00    0.00    0.00    0.00    0
        0.00    0.00    0.00    0.00    0
        0.00    0.00    0.00    0.00    0
        0.00    0.00    0.00    0.00    0
        0.00    0.00    0.00    0.00    0];

 costL=[0 0 0 0 0;
    0 0 0 0 0];
 Demandcost=[10;
            25;
            30;
            6;
            10];


 print_with_color(:yellow,"Data was read.\n")
	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function Foulds_2()
	K=1; #Number of specifications
 I=6; # Number of Inputs
 L=2;# Number of Pools
 J=4; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1 0
    1 0
    0 0
    0 1
    0 1
    0 0];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 0 0; 
    0 0 0 0;
    1 1 1 1;
    0 0 0 0;
    0 0 0 0;
    1 1 1 1];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1 1 1;
    1 1 1 1];
 #Capacity
 #capacity of input
 C_I=[   600.00       600.00    600.00   600.00     600.00  600.00];
        #capacity of pools
 C_L=[   600.00  600.00]; 
 #capacity of outputs
 C_J=[100 200 100 200];
 #lower ristriction for capacity
 lCI=[   0 0 0 0 0 0];
 lCL=[0 0];
 lCJ=[0 0 0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[2.5; 
        1.5;
        3;
        2];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[3; 
        1;
        2;
        3.5;
        1.5;
        2.5];

 #costs
 costI=[6 0;
    16 0;
    0 0;
    0 3;
    0 13;
    0 0];
 costJ=[ 0.00    0.00    0.00    0.00
       0.00    0.00    0.00    0.00
       1.00   -5.00    4.00   -2.00
       0.00    0.00    0.00    0.00
       0.00    0.00    0.00    0.00
      -2.00   -8.00    1.00   -5.00];

 costL=[  -9.00  -15.00   -6.00  -12.00
        -9.00  -15.00   -6.00  -12.00];
 Demandcost=zeros(J,1);


 print_with_color(:yellow,"Data was read.\n")
	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function Foulds_3()
 K=1; #Number of specifications
 I=11; # Number of Inputs
 L=8;# Number of Pools
 J=16; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[0   0   0   0   0   0   0   1  
    0   0   0   0   0   0   1   1 
    0   0   0   0   0   1   1   1  
    0   0   0   0   1   1   1   1   
    0   0   0   1   1   1   1   0   
    0   0   1   1   1   1   0   0   
    0   1   1   1   1   0   0   0   
    1   1   1   1   0   0   0   0   
    1   1   1   0   0   0   0   0   
    1   1   0   0   0   0   0   0   
    1   0   0   0   0   0   0   0 ];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1 ];
 #Capacity
 #capacity of input
 CI=[   16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00];
 C_I=CI';
        #capacity of pools
        CL=[    16.00
             16.00
             16.00
             16.00
             16.00
             16.00
             16.00
             16.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[   1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00]; 

 C_J=CJ';
 #lower ristriction for capacity
 lCI=[  0 0 0 0 0 0 0 0 0 0 0 ];;
 lCL=[ 0 0 0 0 0 0 0 0]; 
 lCJ=[   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[1.05
     1.10
     1.15
     1.20
     1.25
     1.30
     1.35
     1.40
     1.45
     1.50
     1.55
     1.60
     1.65
     1.70
     1.75
     1.80];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[2.00
      1.90
      1.80
      1.70
      1.60
      1.50
      1.40
      1.30
      1.20
     1.10
     1.00];

 #costs
 costI=[0.00    0.00    0.00    0.00    0.00    0.00    0.00   10.00 
       0.00    0.00    0.00    0.00    0.00    0.00   11.00   11.00 
       0.00    0.00    0.00    0.00    0.00   12.00   12.00   12.00 
       0.00    0.00    0.00    0.00   13.00   13.00   13.00   13.00 
       0.00    0.00    0.00   14.00   14.00   14.00   14.00    0.00 
       0.00    0.00   15.00   15.00   15.00   15.00    0.00    0.00 
       0.00   16.00   16.00   16.00   16.00    0.00    0.00    0.00 
      17.00   17.00   17.00   17.00    0.00    0.00    0.00    0.00 
      18.00   18.00   18.00    0.00    0.00    0.00    0.00    0.00 
      19.00   19.00    0.00    0.00    0.00    0.00    0.00    0.00 
      20.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00 ];
 costJ=zeros(11,16);

 costL=zeros(8,16);
 Demandcost=-[-20.00  -19.50  -19.00  -18.50  -18.00  -17.50  -17.00  -16.50  -16.00  -15.50  -15.00  -14.50  -14.00  -13.50  -13.00  -12.50];
 Demandcost=Demandcost';

 print_with_color(:yellow,"Data was read.\n")
	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function Foulds_4()
	K=1; #Number of specifications
 I=11; # Number of Inputs
 L=8;# Number of Pools
 J=16; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[ 0   1   0   0   0   0   0   0
     1   0   0   0   0   0   0   1
     0   0   0   0   0   1   1   1
     0   1   0   0   1   0   1   1
     1   0   0   1   0   1   1   0
     0   0   1   1   1   1   0   0
     0   1   1   0   1   0   0   1
     1   0   0   1   0   1   1   0
     0   0   1   1   1   0   0   0
     0   1   1   0   0   0   0   0
     1   0   0   0   0   0   0   0];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
    1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1 ];
 #Capacity
 #capacity of input
 CI=[   16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00
        16.00];
 C_I=CI';
        #capacity of pools
        CL=[    16.00
             16.00
             16.00
             16.00
             16.00
             16.00
             16.00
             16.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[   1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00
         1.00]; 

 C_J=CJ';
 #lower ristriction for capacity
 lCI=[  0 0 0 0 0 0 0 0 0 0 0 ];;
 lCL=[ 0 0 0 0 0 0 0 0]; 
 lCJ=[   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

 # Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[1.05
     1.10
     1.15
     1.20
     1.25
     1.30
     1.35
     1.40
     1.45
     1.50
     1.55
     1.60
     1.65
     1.70
     1.75
     1.80];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[2.00
      1.90
      1.80
      1.70
      1.60
      1.50
      1.40
      1.30
      1.20
     1.10
     1.00];

 #costs
 costI=[0.00   10.00    0.00    0.00    0.00    0.00    0.00    0.00
     11.00    0.00    0.00    0.00    0.00    0.00    0.00   11.00 
      0.00    0.00    0.00    0.00    0.00   12.00   12.00   12.00 
      0.00   13.00    0.00    0.00   13.00    0.00   13.00   13.00 
     14.00    0.00    0.00   14.00    0.00   14.00   14.00    0.00 
      0.00    0.00   15.00   15.00   15.00   15.00    0.00    0.00 
      0.00   16.00   16.00    0.00   16.00    0.00    0.00   16.00 
     17.00    0.00    0.00   17.00    0.00   17.00   17.00    0.00 
      0.00    0.00   18.00   18.00   18.00    0.00    0.00    0.00 
      0.00   19.00   19.00    0.00    0.00    0.00    0.00    0.00 
     20.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00 ];
 costJ=zeros(11,16);

 costL=zeros(8,16);
 Demandcost=-[-20.00  -19.50  -19.00  -18.50  -18.00  -17.50  -17.00  -16.50  -16.00  -15.50  -15.00  -14.50  -14.00  -13.50  -13.00  -12.50];
 Demandcost=Demandcost';

 print_with_color(:yellow,"Data was read.\n")
 return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function BenTal_4()
	K=1; #Number of specifications
 I=4; # Number of Inputs
 L=1;# Number of Pools
 J=2; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1
    1
    1
    0];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 
    0 0
    0 0
    1 1];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1];
 #Capacity
 #capacity of input
 C_I=[  Inf 50 Inf Inf];
        #capacity of pools
 C_L=[  Inf]; 
 #capacity of outputs
 C_J=[100 200]; 
 #lower ristriction for capacity
 lCI=[  0 0 0];   
 lCL=[  0]; 
 lCJ=[   0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[2.5
    1.5];
 # Minimum specification
 Mu_min=-Inf*ones(J,1);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[3
    1
    1
    2];

 #costs
 costI=[6
    15
    16
    0];
 costJ=[0 0
    0 0
    0 0
    10 10];

 costL=zeros(L,J);
 Demandcost=[9
    15];


 print_with_color(:yellow,"Data was read.\n")
	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function BenTal_5()

	K=2; #Number of specifications
 I=5; # Number of Inputs
 L=3;# Number of Pools
 J=5; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1 1 1;
    1 1 1;
    1 1 1;
    1 1 1;
    0 0 0];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 0 0 0 0; 
    0 0 0 0 0;
    0 0 0 0 0;
    0 0 0 0 0;
    1 1 1 1 1];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1 1 1 1; 
    1 1 1 1 1;
    1 1 1 1 1];
 #Capacity
 #capacity of input
 C_I=[Inf Inf 50 Inf Inf];
        #capacity of pools
 C_L=[Inf Inf Inf]; 
 #capacity of outputs
 C_J=[100 200 100 100 100]; 
 #lower ristriction for capacity
 lCI=[  0 0 0 0 0];   
 lCL=[  0 0 0]; 
 lCJ=[   0 0 0 0 0];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[2.5 2; 
        1.5 2.5
        2 2.6;
        2 2;
        2 2];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[3 1; 
        1 3;
        1 2.5;
        1.5 2.5;
        2 2.5];

 #costs
 costI=[6 6 6;
     16 16 16;
    15 15 15;
    12 12 12;
    0 0 0];
 costJ=[0 0 0 0 0;
    0 0 0 0 0;
    0 0 0 0 0;
    0 0 0 0 0;
    10 10 10 10 10];

 costL=[0 0 0 0 0;
    0 0 0 0 0;
    0 0 0 0 0];
 Demandcost=[18;
            15;
            19;
            16;
            14];


 print_with_color(:yellow,"Data was read.\n")
	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function DeyGupte_4()


 n=4;
 K=2; #Number of specifications
 I=2; # Number of Inputs
 L=2;# Number of Pools
 J=n; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1 1
    1 1];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=zeros(I,J);;

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=ones(L,J);
 #Capacity
 #capacity of input
 C_I=[ 2*n 2*n];;
        #capacity of pools
 C_L=[n n]; 
 #capacity of outputs
 C_J=ones(1,J);
 #lower ristriction for capacity
 lCI=[ 0 0];
 lCL=[0 0];
 lCJ=zeros(1,J);

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=n*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=1*ones(L,J);




 # Specification limit
 #Maximum specification
 M=[0.87;0.83;0.84;0.9];
 # M=[0.87; 0.8701;0.8699;0.8702];
 Mu_max=[M 1-M];
 # Minimum specification
 Mu_min=Mu_max;
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[1 0
        0 1];

 #costs
 costI=[0 0
    0 0];
 costJ=zeros(I,J);
 S=collect(1:n);
 Cmatr=collect(combinations(S,2));
 t=zeros(Int64,Int(round(n*(n-1)/2)),2);
 for i=1:Int(round(n*(n-1)/2))
    t[i,:]=Cmatr[i];
 end
 delta=minimum(sqrt(sum((Mu_max[t[:,1],:]-Mu_max[t[:,2],:]).^2,2)));

 costL=[-1*ones(1,J)
    (2/delta)*ones(1,J)];
 Demandcost=zeros(J,1);


 print_with_color(:yellow,"Data was read.\n")
	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function RT2()
 K=8; #Number of specifications
 I=3; # Number of Inputs
 L=2;# Number of Pools
 J=3; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1 1
    1 1
    1 1];
 # Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[0 1 0 
    1 0 1
    1 0 0];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[1 1 1
    1 1 1];
 #Capacity
 #capacity of input
 CI=[  60.98
      161.29
       5.00];
 C_I=CI';
        #capacity of pools
        CL=[ 12.50
           17.50]; 
 C_L=CL'; 
 #capacity of outputs
 C_J=[   300 300 300];
 #lower ristriction for capacity
 lCI=[ 0 0 0];
 lCL=[0 0];
 lCJ=[5 5 5];

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[0.79    3.00  114.00   98.70   -0.74    0.00  -95.00  -85.00
      0.79    0.90  114.00   98.70   -0.74    0.00  -96.00  -88.00
      0.79    3.00  114.00   98.70   -0.74    0.00  -91.00  -83.50];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[0.82    3.00   99.20   90.50   -0.82   -3.00  -99.20  -90.50
      0.62    0.00   87.90   83.50   -0.62    0.00  -87.90  -83.50
      0.75    0.00  114.00   98.70   -0.75    0.00 -114.00  -98.70];

 #costs
 costI=[49.20   49.20    
     62.00   62.00
    300.00  300.00  ];
 costJ=zeros(I,J);

 costL=zeros(L,J);
 Demandcost=[190;
    230;
    150];


 print_with_color(:yellow,"Data was read.\n")
	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function sppA0()
	K=24; #Number of specifications
 I=20; # Number of Inputs
 L=10;# Number of Pools
 J=15; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[1   0   1   0   0   0   0   0   0   0  
    0   1   1   1   0   1   0   0   0   0   
    0   0   0   0   0   1   0   0   1   1  
    0   1   0   1   0   0   0   0   1   0
    0   1   1   0   0   0   0   0   1   0 
    1   0   1   0   0   0   0   1   0   1 
    0   1   0   1   1   0   0   1   0   0   
    0   0   0   0   0   0   1   1   0   0  
    0   0   1   0   0   0   1   0   1   0  
    0   0   0   0   0   1   1   0   1   0  
    1   1   0   0   0   0   0   0   1   0  
    1   0   0   0   1   0   0   0   1   0  
    0   0   0   0   1   1   0   0   0   0 
    1   1   1   1   0   1   0   1   1   0  
    1   0   0   0   0   1   0   0   0   1  
    0   0   0   0   0   1   0   0   1   1  
    0   1   0   1   0   0   0   0   0   0 
    1   1   1   0   0   1   0   0   0   0  
    0   0   0   0   0   0   0   0   0   0 
    0   0   0   1   1   1   0   0   0   1 ];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[ 1   0   0   0   0   0   0   0   0   0   0   0   1   0   0; 
     0   0   0   1   0   0   0   0   0   1   0   0   0   1   0;
     0   0   0   0   0   0   0   1   1   0   0   0   0   0   1;
     0   0   0   0   1   0   0   0   0   0   0   0   0   0   0;
     0   1   0   1   0   1   0   0   0   0   0   0   0   0   1
     0   0   0   0   0   0   1   0   1   0   0   0   0   1   1
     0   0   0   0   0   0   1   0   0   1   0   0   0   0   1
     0   1   0   1   1   0   0   1   0   0   0   0   0   0   1
     0   0   0   0   0   0   0   1   0   0   1   0   0   0   0
     0   0   0   0   0   0   0   0   0   0   1   0   1   0   0
     0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
     0   0   1   0   0   1   0   0   0   0   0   1   0   0   0
     0   0   0   0   0   0   1   0   0   0   1   0   0   0   0
     0   1   0   0   0   0   0   0   0   0   0   0   0   0   0
     1   0   0   0   0   0   0   1   0   0   1   0   0   0   1
     1   1   0   0   0   0   0   1   0   0   0   1   0   0   0
     0   0   1   0   1   0   0   0   0   0   0   1   0   0   1
     0   0   0   1   0   0   0   0   0   1   0   1   0   1   1
     0   0   0   0   0   0   0   0   0   0   0   0   0   1   0
     1   0   0   0   0   0   1   0   0   0   0   0   0   0   0];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[  0   0   0   1   0   0   0   1   1   1   1   0   0   0   0
     0   0   0   0   0   0   1   0   0   0   0   1   1   1   0
     1   1   1   0   0   0   1   0   0   0   0   0   1   0   0
     0   0   1   0   1   1   0   0   0   1   0   0   1   0   0
     1   0   0   0   0   0   0   1   1   0   0   1   1   0   1
     1   0   0   0   0   0   0   1   0   0   1   0   1   0   1
     0   0   0   1   1   1   0   1   0   0   1   0   0   1   1
     1   0   0   0   0   1   0   0   1   0   1   1   0   0   1
     1   1   1   1   0   0   0   0   1   1   0   0   1   0   0
     0   0   0   1   0   0   0   0   0   0   1   0   0   1   1];
 #Capacity
 #capacity of input
 CI=[   166.00
                      240.00
                      217.00
                      150.00
                      161.00
                      118.00
                       59.00
                      219.00
                      169.00
                     273.00
                      66.00
                      69.00
                     177.00
                      62.00
                     178.00
                       9.00
                     302.00
                      96.00
                     175.00
                     63.00]; 
 C_I=CI';
        #capacity of pools
        CL=[    97.00
                   158.00
                      91.00
                      94.00
                     147.00
                     138.00
                     177.00
                     184.00
                     113.00
                     137.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[176.00
                     265.00
                     195.00
                     107.00
                     183.00
                     254.00
                     119.00
                    231.00
                     265.00
                     250.00
                     231.00
                     247.00
                     268.00
                     215.00
                     14.00];
 C_J=CJ';
 #lower ristriction for capacity
 lCL=zeros(1,L);
 lCI=zeros(1,I);
 lCJ=zeros(1,J);

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[   89.68   54.59   78.86   74.96   42.98   77.22   90.33   31.79   39.65   89.70   84.05   26.38  -14.17   -9.87   -3.65   -9.70   -8.42   -4.93  -16.43  -17.19   -1.61  -17.78   -2.24  -14.91
    85.69   85.39   97.76   87.50   27.58   84.67   21.70   26.11   65.66   93.72   91.80   51.56  -16.36  -13.52   -6.08   -1.13   -8.17  -11.54   -0.32   -4.95  -15.92  -15.04   -1.30  -16.00
    77.02   75.43   96.30   44.72   42.89   29.77   99.86   36.27   77.15   21.51   68.04   56.75   -9.54  -10.73  -12.57  -11.36  -18.17  -17.18  -15.20  -11.14   -0.44  -12.00   -3.44  -19.80
    84.49   66.67   68.76   53.45   39.62   57.70   39.28   98.95   39.34   95.30   52.75   47.93   -7.28  -12.74   -9.42   -3.93   -1.46   -4.42  -15.61  -14.68   -3.77   -1.77  -14.94  -14.03
    89.70   26.76   72.04   67.57   50.66   53.50   90.16   74.91   35.73   31.02   91.10   39.92  -15.54  -11.97   -1.71  -14.89   -6.08   -2.41   -0.64   -4.57   -2.25  -10.65  -16.25   -8.58
    45.33   32.41   66.21   40.31   58.62   51.06   86.25   23.72   82.99   91.64   54.14   92.58  -19.00  -12.77  -12.10  -14.89   -2.44  -10.96  -11.49   -7.81   -2.62  -19.59  -14.10   -4.73
    73.62   92.09   77.65   78.34   84.48   28.58   34.15   66.51   39.60   33.72   52.25   35.43  -18.30   -5.76   -1.09   -7.73  -19.83  -19.23   -4.03   -6.57  -13.79  -18.27   -8.16   -8.84
    48.30   83.46   29.36   53.85   46.11   56.44   35.14   91.93   85.62   80.93   50.29   52.76   -1.89   -1.23   -0.76  -19.60   -9.48   -5.00   -0.82   -6.17  -12.10   -5.58  -13.82  -16.71
    36.85   38.28   27.92   76.81   98.21   89.69   44.12   87.31   48.20   57.38   87.65   43.51   -2.06  -14.81  -17.45   -4.25   -5.59   -0.87   -0.74  -14.04   -3.94  -16.39  -16.47   -3.33
    90.56   86.18   22.29   70.36   54.44   21.81   93.09   93.28   26.44   54.10   89.68   47.52  -19.58   -2.59   -7.47  -11.55  -10.89   -4.08  -10.82  -18.56   -3.10  -18.26  -15.96  -12.72
    76.89   75.00   31.14   30.31   91.89   80.75   20.97   67.00   51.75   75.63   54.91   67.80   -7.03  -14.56   -6.23   -1.60   -7.65   -9.25  -15.88  -11.67   -5.42  -15.38  -14.07  -12.01
    50.68   82.27   84.51   49.28   22.10   43.15   75.65   24.74   74.95   83.86   41.21   82.91  -10.94  -17.87  -13.50  -16.56   -0.01   -0.48  -14.43  -14.08  -14.88   -2.79   -9.54  -19.88
    42.23   75.38   54.70   36.37   43.03   97.19   45.93   66.87   77.94   42.01   57.13   27.12   -9.80   -7.60   -3.37  -14.63   -5.74  -15.77  -19.92   -8.14   -9.90  -17.57   -9.27   -6.48
    57.79   56.35   30.91   76.98   34.38   98.13   77.69   62.91   93.21   34.57   95.63   53.44   -9.73  -18.48  -18.91   -6.02   -5.72   -6.73   -7.64   -3.23   -0.27  -19.22  -12.07  -13.62
    43.24   24.24   50.50   90.41   23.54   28.23   24.82   28.24   94.15   24.52   67.32   44.09  -16.21   -0.08   -1.08   -2.01  -14.66   -6.48  -18.29  -19.09  -10.22  -15.18   -1.77  -12.50 ];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[31.81   20.24   46.07   51.68   67.54   42.38   13.12   47.28   46.15   68.95   10.02   72.96  -31.81  -20.24  -46.07  -51.68  -67.54  -42.38  -13.12  -47.28  -46.15  -68.95  -10.02  -72.96
     34.73   38.49   28.09   40.21   34.18    3.33   65.84   16.58   42.82   56.70   72.61   29.68  -34.73  -38.49  -28.09  -40.21  -34.18   -3.33  -65.84  -16.58  -42.82  -56.70  -72.61  -29.68
     28.82   50.27   33.39   65.67    7.49   55.40   69.83   27.06   29.77   25.10   73.33   77.38  -28.82  -50.27  -33.39  -65.67   -7.49  -55.40  -69.83  -27.06  -29.77  -25.10  -73.33  -77.38
     69.76   16.55    7.09   14.78   34.81   45.33   51.09   73.74   23.51   17.19   67.10   13.47  -69.76  -16.55   -7.09  -14.78  -34.81  -45.33  -51.09  -73.74  -23.51  -17.19  -67.10  -13.47
     39.28   13.01   37.76   65.85   75.68    4.01    8.22    7.76   10.63   22.84    9.97    7.12  -39.28  -13.01  -37.76  -65.85  -75.68   -4.01   -8.22   -7.76  -10.63  -22.84   -9.97   -7.12
     77.99   49.99   70.67   54.29    6.49   72.33   63.73    7.80   56.56   52.13   74.37    3.97  -77.99  -49.99  -70.67  -54.29   -6.49  -72.33  -63.73   -7.80  -56.56  -52.13  -74.37   -3.97
     79.04   11.51    1.32    3.04   66.51   71.80   14.54   21.04   74.75   53.37   28.01   48.15  -79.04  -11.51   -1.32   -3.04  -66.51  -71.80  -14.54  -21.04  -74.75  -53.37  -28.01  -48.15
     31.08   24.38   35.34   34.78   18.20   52.77   25.05   39.56   50.73   32.42    7.29   15.36  -31.08  -24.38  -35.34  -34.78  -18.20  -52.77  -25.05  -39.56  -50.73  -32.42   -7.29  -15.36
     59.74   70.27    7.55   46.74   45.11   66.78   13.17    3.60   11.55   28.67   50.79   69.88  -59.74  -70.27   -7.55  -46.74  -45.11  -66.78  -13.17   -3.60  -11.55  -28.67  -50.79  -69.88
    41.44   72.35   57.77   25.08   52.58   63.88   15.49   30.02   65.70   10.67   20.64   22.21  -41.44  -72.35  -57.77  -25.08  -52.58  -63.88  -15.49  -30.02  -65.70  -10.67  -20.64  -22.21
    12.66   28.06   62.79   32.81   68.22   28.73   66.77   23.53   27.29   41.82   61.47   64.09  -12.66  -28.06  -62.79  -32.81  -68.22  -28.73  -66.77  -23.53  -27.29  -41.82  -61.47  -64.09
    23.59   43.76   58.93   57.98   48.87   13.62   34.98   74.71   44.59   56.08   56.08   52.13  -23.59  -43.76  -58.93  -57.98  -48.87  -13.62  -34.98  -74.71  -44.59  -56.08  -56.08  -52.13
    26.81    8.25   53.11   54.35   43.33   27.44   16.07   42.06   48.08   52.67   42.80   58.14  -26.81   -8.25  -53.11  -54.35  -43.33  -27.44  -16.07  -42.06  -48.08  -52.67  -42.80  -58.14
    77.82   69.55   66.69    6.80   41.42   56.37   34.87   77.07   40.06   57.96   47.70    8.96  -77.82  -69.55  -66.69   -6.80  -41.42  -56.37  -34.87  -77.07  -40.06  -57.96  -47.70   -8.96
    32.47   74.54   18.37   12.67   52.48   58.57   57.54   68.32   73.86   76.42    1.17   28.15  -32.47  -74.54  -18.37  -12.67  -52.48  -58.57  -57.54  -68.32  -73.86  -76.42   -1.17  -28.15
    42.00    9.55   61.75   17.84   23.40   57.34   35.64    2.98   56.68   58.79   76.47   17.05  -42.00   -9.55  -61.75  -17.84  -23.40  -57.34  -35.64   -2.98  -56.68  -58.79  -76.47  -17.05
    25.02   71.90   60.13   34.48   57.76   57.08   68.52   25.76   61.49   46.92   31.93   69.74  -25.02  -71.90  -60.13  -34.48  -57.76  -57.08  -68.52  -25.76  -61.49  -46.92  -31.93  -69.74
    40.15   29.97   34.91   12.35   14.38   16.92   64.63   53.09    7.50   36.12   57.87   63.27  -40.15  -29.97  -34.91  -12.35  -14.38  -16.92  -64.63  -53.09   -7.50  -36.12  -57.87  -63.27
    45.93   70.78   52.53   38.45   73.26   67.69   37.83   76.91    9.23   47.49    7.06   63.55  -45.93  -70.78  -52.53  -38.45  -73.26  -67.69  -37.83  -76.91   -9.23  -47.49   -7.06  -63.55
    17.00   78.31    4.88   42.58   77.08   29.91   44.87   51.62   35.89   36.77    0.62   26.36  -17.00  -78.31   -4.88  -42.58  -77.08  -29.91  -44.87  -51.62  -35.89  -36.77   -0.62  -26.36];

 #costs
 costI=[  21.00    0.00   21.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00 
        0.00   43.00   43.00   43.00    0.00   43.00    0.00    0.00    0.00    0.00  
        0.00    0.00    0.00    0.00    0.00   28.00    0.00    0.00   28.00   28.00  
        0.00   37.00    0.00   37.00    0.00    0.00    0.00    0.00   37.00    0.00   
        0.00   50.00   50.00    0.00    0.00    0.00    0.00    0.00   50.00    0.00   
       13.00    0.00   13.00    0.00    0.00    0.00    0.00   13.00    0.00   13.00  
        0.00   14.00    0.00   14.00   14.00    0.00    0.00   14.00    0.00    0.00  
        0.00    0.00    0.00    0.00    0.00    0.00   25.00   25.00    0.00    0.00  
        0.00    0.00   31.00    0.00    0.00    0.00   31.00    0.00   31.00    0.00   
        0.00    0.00    0.00    0.00    0.00   14.00   14.00    0.00   14.00    0.00   
        36.00   36.00    0.00    0.00    0.00    0.00    0.00    0.00   36.00    0.00  
        31.00    0.00    0.00    0.00   31.00    0.00    0.00    0.00   31.00    0.00   
        0.00    0.00    0.00    0.00   37.00   37.00    0.00    0.00    0.00    0.00 
        25.00   25.00   25.00   25.00    0.00   25.00    0.00   25.00   25.00    0.00 
        50.00    0.00    0.00    0.00    0.00   50.00    0.00    0.00    0.00   50.00  
        0.00    0.00    0.00    0.00    0.00   43.00    0.00    0.00   43.00   43.00  
        0.00   26.00    0.00   26.00    0.00    0.00    0.00    0.00    0.00    0.00   
        29.00   29.00   29.00    0.00    0.00   29.00    0.00    0.00    0.00    0.00  
        0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00 
        0.00    0.00    0.00   14.00   14.00   14.00    0.00    0.00    0.00   14.00 ];
 costJ=[ -27.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -21.00    0.00    0.00;
      0.00    0.00    0.00    3.00    0.00    0.00    0.00    0.00    0.00   -5.00    0.00    0.00    0.00    2.00    0.00;
      0.00    0.00    0.00    0.00    0.00    0.00    0.00  -21.00  -13.00    0.00    0.00    0.00    0.00    0.00  -12.00
     0.00    0.00    0.00    0.00  -13.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00    6.00    0.00   10.00    0.00    2.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   10.00
     0.00    0.00    0.00    0.00    0.00    0.00  -37.00    0.00  -28.00    0.00    0.00    0.00    0.00  -28.00  -27.00
     0.00    0.00    0.00    0.00    0.00    0.00  -36.00    0.00    0.00  -34.00    0.00    0.00    0.00    0.00  -26.00
     0.00  -19.00    0.00  -15.00  -25.00    0.00    0.00  -24.00    0.00    0.00    0.00    0.00    0.00    0.00  -15.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00  -18.00    0.00    0.00  -10.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -27.00    0.00  -28.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
    0.00    0.00  -19.00    0.00    0.00  -17.00    0.00    0.00    0.00    0.00    0.00   -9.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00  -13.00    0.00    0.00    0.00   -4.00    0.00    0.00    0.00    0.00
     0.00  -19.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     2.00    0.00    0.00    0.00    0.00    0.00    0.00    1.00    0.00    0.00    9.00    0.00    0.00    0.00   10.00
   -5.00   -1.00    0.00    0.00    0.00    0.00    0.00   -6.00    0.00    0.00    0.00    3.00    0.00    0.00    0.00
     0.00    0.00  -24.00    0.00  -24.00    0.00    0.00    0.00    0.00    0.00    0.00  -14.00    0.00    0.00  -14.00
    0.00    0.00    0.00  -11.00    0.00    0.00    0.00    0.00    0.00  -19.00    0.00  -11.00    0.00  -12.00  -11.00
    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -7.00    0.00
   -34.00    0.00    0.00    0.00    0.00    0.00  -36.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00];

 costL=[0.00    0.00    0.00  -40.00    0.00    0.00    0.00  -49.00  -41.00  -48.00  -41.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00  -50.00    0.00    0.00    0.00    0.00  -40.00  -42.00  -41.00    0.00
  -48.00  -44.00  -50.00    0.00    0.00    0.00  -50.00    0.00    0.00    0.00    0.00    0.00  -42.00    0.00    0.00
    0.00    0.00  -50.00    0.00  -50.00  -48.00    0.00    0.00    0.00  -48.00    0.00    0.00  -42.00    0.00    0.00
   -48.00    0.00    0.00    0.00    0.00    0.00    0.00  -49.00  -41.00    0.00    0.00  -40.00  -42.00    0.00  -40.00
   -48.00    0.00    0.00    0.00    0.00    0.00    0.00  -49.00    0.00    0.00  -41.00    0.00  -42.00    0.00  -40.00
    0.00    0.00    0.00  -40.00  -50.00  -48.00    0.00  -49.00    0.00    0.00  -41.00    0.00    0.00  -41.00  -40.00
   -48.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00  -41.00    0.00  -41.00  -40.00    0.00    0.00  -40.00
  -48.00  -44.00  -50.00  -40.00    0.00    0.00    0.00    0.00  -41.00  -48.00    0.00    0.00  -42.00    0.00    0.00
    0.00    0.00    0.00  -40.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00    0.00  -41.00  -40.00];
 Demandcost=zeros(J,1);

 print_with_color(:yellow,"Data was read.\n")

	return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function sppA1()
    K=24; #Number of specifications
 I=20; # Number of Inputs
 L=10;# Number of Pools
 J=15; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 AI=[0   0   1   1   0   0   1   0   1   0
     0   0   0   0   1   0   0   1   0   1
     0   0   0   1   0   1   1   1   1   0
     0   0   1   0   1   0   0   1   0   0
     1   0   0   1   1   0   0   0   1   0
     0   1   0   0   1   1   0   1   1   0
     0   0   1   1   1   0   0   0   1   0
     0   0   0   1   1   0   0   0   1   0
     0   1   1   1   0   1   0   1   0   0
     0   0   1   0   0   1   0   0   0   0
     1   1   0   0   1   0   0   1   0   0
     0   1   1   0   0   1   0   1   1   0
     0   0   1   0   1   0   0   1   1   1
     0   1   1   0   1   0   0   1   0   0
     1   0   0   0   0   1   0   0   0   0
     0   0   0   0   1   0   0   0   0   0
     0   0   0   0   1   1   1   0   1   1
     0   0   1   0   1   1   0   1   1   1
     0   0   1   0   0   0   0   1   1   0
     0   1   1   1   0   0   0   1   1   0];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=[  0   0   0   0   0   0   0   1   1   1   0   0   0   0   0
       0   0   0   0   0   0   0   0   0   0   0   0   0   1   0
       1   0   1   0   0   1   0   0   0   0   1   1   0   0   0
       0   0   1   0   0   0   1   1   0   0   0   0   0   0   1
       0   0   0   0   0   1   0   0   0   0   0   0   1   0   0
       0   0   1   0   0   0   0   0   0   0   0   0   0   0   0
       0   0   0   0   0   0   1   0   0   0   1   0   0   0   0
       0   0   0   0   1   0   0   0   1   0   0   1   0   0   1
       0   0   0   0   0   0   0   1   0   0   0   0   0   0   0
       0   0   0   0   1   0   0   0   0   0   0   1   0   0   0
       0   0   0   0   0   0   0   0   0   1   0   1   0   0   0
       0   0   0   1   0   0   1   0   0   1   0   0   1   0   0
       0   0   0   0   0   0   1   0   0   0   0   0   0   0   0
       0   0   1   0   0   1   1   0   0   0   0   0   0   0   0
       0   0   0   0   0   0   0   0   0   0   1   0   0   0   0
       0   0   0   0   1   0   0   0   0   0   1   1   0   0   0
       0   1   0   0   0   0   0   0   1   0   1   0   0   0   0
       0   1   0   0   1   0   1   0   0   0   0   0   0   0   0
       0   0   0   0   0   0   1   0   0   1   0   0   1   1   0
       0   0   1   1   0   1   0   0   0   0   0   1   0   0   0];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=[0   1   1   1   1   0   0   0   0   0   0   0   0   1   0
     0   0   1   0   0   0   0   0   0   0   0   1   0   0   0
     0   0   0   0   0   0   1   0   0   1   1   0   0   0   0
     0   0   0   1   1   0   1   0   0   1   1   0   0   0   0
     0   1   1   1   1   0   1   0   1   0   1   0   0   0   0
     0   1   0   1   0   0   0   1   0   1   1   0   0   1   1
     1   1   0   1   0   0   1   0   1   0   0   0   0   0   1
     0   1   1   0   1   0   0   0   0   0   0   0   0   1   1
     0   0   0   1   0   1   0   0   0   0   0   0   0   0   0
     0   0   0   0   1   0   1   0   0   1   1   1   0   1   0 ];
 #Capacity
 #capacity of input

               
 CI=[   255.00
                       78.00
                     188.00
                      162.00
                       83.00
                       80.00
                       88.00
                       92.00
                      161.00
                     224.00
                     133.00
                     219.00
                     245.00
                      83.00
                      39.00
                     151.00
                      39.00
                       9.00
                     297.00
                     265.00]; 
 C_I=CI';
        #capacity of pools
        CL=[      125.00
                     136.00
                     122.00
                      68.00
                     184.00
                      73.00
                      57.00
                     152.00
                     131.00
                     197.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[      243.00
                      29.00
                      55.00
                      91.00
                     177.00
                     277.00
                     214.00
                      47.00
                     281.00
                     183.00
                     162.00
                      80.00
                     132.00
                      10.00
                     198.00 ];
 C_J=CJ';
 #lower ristriction for capacity
 lCL=zeros(1,L);
 lCI=zeros(1,I);
 lCJ=zeros(1,J);

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);




 # Specification limit
 #Maximum specification
 Mu_max=[ 59.29   34.11   95.41   61.20   35.15   27.78   20.92   88.92   37.04   57.21   54.16   31.88   -2.88  -14.48  -16.91  -17.48   -2.30  -17.11   -6.21   -8.06  -15.06   -2.41  -15.67  -14.31
    76.43   28.61   34.50   84.16   59.76   75.40   56.68   62.18   40.30   99.62   46.90   79.91  -19.31  -16.42   -7.21  -11.50   -6.08   -0.24  -11.40  -10.70   -5.23   -5.11   -7.57  -10.95
    88.93   45.80   68.37   54.06   53.13   69.55   34.03   79.29   32.89   22.32   33.81   21.31   -2.50   -7.21  -12.55   -4.56   -8.90   -2.07  -12.04  -15.85   -2.64   -1.80  -19.60  -16.01
    98.77   67.99   61.45   57.89   23.57   55.50   27.99   69.07   81.06   88.66   98.22   92.09   -9.31   -9.51  -11.04   -6.02   -5.63  -15.87  -10.43  -14.34  -11.52   -0.55   -8.87   -1.74
    27.29   80.20   51.61   91.24   41.13   69.01   26.96   64.64   98.01   41.15   80.32   58.33  -16.80   -9.79   -9.70  -16.95  -19.69   -7.79  -13.76  -14.09  -10.75  -19.00  -14.14  -16.67
    95.37   84.84   97.75   22.76   49.41   54.34   91.85   49.23   44.85   78.24   34.22   66.49   -8.23  -18.41   -9.90   -9.52   -8.35  -12.59  -19.38   -5.45  -10.05  -14.54  -11.65   -9.08
    83.88   33.30   61.36   44.76   83.78   78.96   72.74   30.43   49.28   82.32   54.94   66.59  -10.57   -6.15   -4.98   -8.80   -2.88  -11.70   -7.84  -15.02  -13.42   -2.30   -3.86   -8.35
    45.04   23.74   41.20   29.05   21.00   34.22   82.40   74.52   42.48   65.42   41.70   46.46  -18.75   -2.48   -0.23  -15.35   -1.28  -15.05  -10.13   -7.79   -9.94   -8.08   -4.27   -0.36
    24.84   68.92   54.87   45.94   44.72   92.47   71.84   83.53   87.75   69.25   29.37   95.48   -3.20   -7.02   -4.68  -11.23  -15.27  -15.75  -12.66  -14.11  -16.47  -12.12   -2.08  -12.52
    82.50   92.26   82.35   90.76   66.37   53.98   71.51   29.04   51.24   25.32   43.80   52.58   -4.72  -16.98   -2.57  -18.77  -14.76  -10.56   -4.12  -19.04  -17.49  -18.11  -15.92   -9.88
   100.00   73.76   89.19   85.15   22.85   74.95   63.61   29.05   22.62   83.49   84.44   38.13   -4.59   -8.03   -5.43  -14.01   -8.91  -12.74  -18.84   -6.56  -12.94   -6.05  -14.95  -17.91
    65.48   56.14   94.33   23.36   49.87   35.98   36.94   81.10   67.34   89.40   27.60   68.73   -4.91   -3.63  -11.13  -12.50   -1.41  -17.14  -13.24   -1.13   -9.29   -0.87   -9.45   -0.36
    90.27   94.24   72.12   53.50   90.29   89.96   53.22   75.72   76.18   36.06   78.18   26.39   -7.72  -14.63   -0.21   -7.76  -18.63   -2.28   -9.16  -15.49  -14.41  -14.63   -0.28  -13.60
    21.33   69.29   80.83   31.29   48.17   22.36   80.76   50.13   64.76   55.82   92.03   93.23  -12.60   -2.56  -18.65   -3.02  -15.91   -5.73   -2.96  -19.90   -3.02  -18.28  -17.43  -16.49
    37.92   81.65   60.32   83.09   45.16   93.23   33.65   98.96   77.93   46.06   26.74   36.15   -0.50  -10.17   -5.38  -19.21   -4.29  -17.35  -14.76   -6.20   -1.57   -0.13  -10.60  -19.33 ];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[   73.04   28.87   61.46   47.13   28.69   51.63   21.80   15.67   79.06   21.29   17.68   26.04  -73.04  -28.87  -61.46  -47.13  -28.69  -51.63  -21.80  -15.67  -79.06  -21.29  -17.68  -26.04
     63.05   16.50   10.64   78.75    3.16   30.03   58.63    8.66   62.92   51.17    1.04    0.28  -63.05  -16.50  -10.64  -78.75   -3.16  -30.03  -58.63   -8.66  -62.92  -51.17   -1.04   -0.28
     49.77   77.59   50.81   48.66   10.00   38.19   57.75   31.75   17.11   62.63   44.51   12.58  -49.77  -77.59  -50.81  -48.66  -10.00  -38.19  -57.75  -31.75  -17.11  -62.63  -44.51  -12.58
     61.62   53.63   55.56   40.49   75.28    5.53    0.78   33.95    4.96   36.69   44.75    5.47  -61.62  -53.63  -55.56  -40.49  -75.28   -5.53   -0.78  -33.95   -4.96  -36.69  -44.75   -5.47
     50.06    6.43   24.35   77.76   64.85   22.99   29.11   46.13   73.27   60.76   77.24   71.59  -50.06   -6.43  -24.35  -77.76  -64.85  -22.99  -29.11  -46.13  -73.27  -60.76  -77.24  -71.59
     35.36   49.83   55.81   32.59   22.66    4.65   25.42   69.47   44.18   20.13   60.91   16.84  -35.36  -49.83  -55.81  -32.59  -22.66   -4.65  -25.42  -69.47  -44.18  -20.13  -60.91  -16.84
     29.29   31.70   21.33   67.24   49.64   32.31   50.55   18.58   37.37   34.76   48.17   23.38  -29.29  -31.70  -21.33  -67.24  -49.64  -32.31  -50.55  -18.58  -37.37  -34.76  -48.17  -23.38
     13.76   66.62   47.31   55.35    1.46   40.85   26.81   36.62   30.84   64.17   32.73    5.75  -13.76  -66.62  -47.31  -55.35   -1.46  -40.85  -26.81  -36.62  -30.84  -64.17  -32.73   -5.75
     38.13   64.13   54.64   11.79   79.39   63.02   71.09   15.60   34.07   41.32   25.53   68.21  -38.13  -64.13  -54.64  -11.79  -79.39  -63.02  -71.09  -15.60  -34.07  -41.32  -25.53  -68.21
     26.51   46.48   66.24   21.00   49.62   16.20   33.27   49.59   47.09   31.99   62.53   48.27  -26.51  -46.48  -66.24  -21.00  -49.62  -16.20  -33.27  -49.59  -47.09  -31.99  -62.53  -48.27
     26.79   43.80   66.28   62.18   46.35   44.48   52.25   59.89   52.94   72.24   39.03   78.16  -26.79  -43.80  -66.28  -62.18  -46.35  -44.48  -52.25  -59.89  -52.94  -72.24  -39.03  -78.16
     72.77   16.57   16.33   46.62   25.91    9.47   56.15   13.48   79.30   58.49    1.81   60.00  -72.77  -16.57  -16.33  -46.62  -25.91   -9.47  -56.15  -13.48  -79.30  -58.49   -1.81  -60.00
     14.13   14.09   48.20    4.71   14.55   23.80   28.29   15.58   64.28   43.96   33.26   26.95  -14.13  -14.09  -48.20   -4.71  -14.55  -23.80  -28.29  -15.58  -64.28  -43.96  -33.26  -26.95
     21.41   22.91   37.79   56.31   42.14   13.22   46.50   34.96   49.20   24.17   76.03   46.59  -21.41  -22.91  -37.79  -56.31  -42.14  -13.22  -46.50  -34.96  -49.20  -24.17  -76.03  -46.59
     56.41   27.78    0.22   72.13   46.37   53.65   20.27   11.41   32.78   11.36   69.94   37.14  -56.41  -27.78   -0.22  -72.13  -46.37  -53.65  -20.27  -11.41  -32.78  -11.36  -69.94  -37.14
     14.47   37.10   47.62   41.39   35.46   78.53   47.10   65.70   49.92   24.24   69.51   33.35  -14.47  -37.10  -47.62  -41.39  -35.46  -78.53  -47.10  -65.70  -49.92  -24.24  -69.51  -33.35
     15.25   58.13   17.32   54.78   78.67   32.78   62.33   67.22   78.45   60.16   73.16    9.29  -15.25  -58.13  -17.32  -54.78  -78.67  -32.78  -62.33  -67.22  -78.45  -60.16  -73.16   -9.29
     20.01   51.02    0.45   34.09   37.78   70.77   33.41   26.48   79.14   40.71   27.48    6.53  -20.01  -51.02   -0.45  -34.09  -37.78  -70.77  -33.41  -26.48  -79.14  -40.71  -27.48   -6.53
     6.49   54.69   36.33   10.50    4.06   47.58   22.89   61.03   49.01   61.54   41.98   70.18   -6.49  -54.69  -36.33  -10.50   -4.06  -47.58  -22.89  -61.03  -49.01  -61.54  -41.98  -70.18
     11.22   75.25   35.42   63.76    6.36   51.47   79.50   34.97   44.92   48.93   41.37   74.82  -11.22  -75.25  -35.42  -63.76   -6.36  -51.47  -79.50  -34.97  -44.92  -48.93  -41.37  -74.82];

 #costs
         
 costI=[0.00    0.00   11.00   11.00    0.00    0.00   11.00    0.00   11.00    0.00   
      0.00    0.00    0.00    0.00   37.00    0.00    0.00   37.00    0.00   37.00    
      0.00    0.00    0.00   13.00    0.00   13.00   13.00   13.00   13.00    0.00  
      0.00    0.00   33.00    0.00   33.00    0.00    0.00   33.00    0.00    0.00   
     10.00    0.00    0.00   10.00   10.00    0.00    0.00    0.00   10.00    0.00   
      0.00   29.00    0.00    0.00   29.00   29.00    0.00   29.00   29.00    0.00   
      0.00    0.00   24.00   24.00   24.00    0.00    0.00    0.00   24.00    0.00    
      0.00    0.00    0.00   27.00   27.00    0.00    0.00    0.00   27.00    0.00   
      0.00   47.00   47.00   47.00    0.00   47.00    0.00   47.00    0.00    0.00   
      0.00    0.00   44.00    0.00    0.00   44.00    0.00    0.00    0.00    0.00  
     12.00   12.00    0.00    0.00   12.00    0.00    0.00   12.00    0.00    0.00   
      0.00   29.00   29.00    0.00    0.00   29.00    0.00   29.00   29.00    0.00 
      0.00    0.00   27.00    0.00   27.00    0.00    0.00   27.00   27.00   27.00 
      0.00   30.00   30.00    0.00   30.00    0.00    0.00   30.00    0.00    0.00 
     49.00    0.00    0.00    0.00    0.00   49.00    0.00    0.00    0.00    0.00 
      0.00    0.00    0.00    0.00   42.00    0.00    0.00    0.00    0.00    0.00 
      0.00    0.00    0.00    0.00   18.00   18.00   18.00    0.00   18.00   18.00 
      0.00    0.00   11.00    0.00   11.00   11.00    0.00   11.00   11.00   11.00  
      0.00    0.00   36.00    0.00    0.00    0.00    0.00   36.00   36.00    0.00  
      0.00   15.00   15.00   15.00    0.00    0.00    0.00   15.00   15.00    0.00 ];
 costJ=[   0.00    0.00    0.00    0.00    0.00    0.00    0.00  -34.00  -35.00  -35.00    0.00    0.00    0.00    0.00    0.00
          0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -11.00    0.00
       -29.00    0.00  -27.00    0.00    0.00  -36.00    0.00    0.00    0.00    0.00  -27.00  -36.00    0.00    0.00    0.00
         0.00    0.00   -7.00    0.00    0.00    0.00  -14.00  -12.00    0.00    0.00    0.00    0.00    0.00    0.00   -9.00
       0.00    0.00    0.00    0.00    0.00  -39.00    0.00    0.00    0.00    0.00    0.00    0.00  -37.00    0.00    0.00
          0.00    0.00  -11.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00    0.00    0.00  -23.00    0.00    0.00    0.00  -16.00    0.00    0.00    0.00    0.00
      0.00    0.00    0.00    0.00  -22.00    0.00    0.00    0.00  -19.00    0.00    0.00  -22.00    0.00    0.00  -15.00
         0.00    0.00    0.00    0.00    0.00    0.00    0.00    2.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
         0.00    0.00    0.00    0.00   -5.00    0.00    0.00    0.00    0.00    0.00    0.00   -5.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -34.00    0.00  -37.00    0.00    0.00    0.00
         0.00    0.00    0.00  -12.00    0.00    0.00  -18.00    0.00    0.00  -17.00    0.00    0.00  -18.00    0.00    0.00
        0.00    0.00    0.00    0.00    0.00    0.00  -20.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
       0.00    0.00  -10.00    0.00    0.00  -19.00  -17.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
      0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    9.00    0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00   -7.00    0.00    0.00    0.00    0.00    0.00    2.00   -7.00    0.00    0.00    0.00
       0.00  -25.00    0.00    0.00    0.00    0.00    0.00    0.00  -28.00    0.00  -22.00    0.00    0.00    0.00    0.00
       0.00  -32.00    0.00    0.00  -38.00    0.00  -36.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
        0.00    0.00    0.00    0.00    0.00    0.00  -11.00    0.00    0.00  -10.00    0.00    0.00  -11.00  -12.00    0.00
     0.00    0.00  -25.00  -26.00    0.00  -34.00    0.00    0.00    0.00    0.00    0.00  -34.00    0.00    0.00    0.00];

 costL=[ 0.00  -43.00  -40.00  -41.00  -49.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00
         0.00    0.00  -40.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -49.00    0.00    0.00    0.00
         0.00    0.00    0.00    0.00    0.00    0.00  -47.00    0.00    0.00  -46.00  -40.00    0.00    0.00    0.00    0.00
         0.00    0.00    0.00  -41.00  -49.00    0.00  -47.00    0.00    0.00  -46.00  -40.00    0.00    0.00    0.00    0.00
         0.00  -43.00  -40.00  -41.00  -49.00    0.00  -47.00    0.00  -46.00    0.00  -40.00    0.00    0.00    0.00    0.00
         0.00  -43.00    0.00  -41.00    0.00    0.00    0.00  -45.00    0.00  -46.00  -40.00    0.00    0.00  -48.00  -42.00
        -42.00  -43.00    0.00  -41.00    0.00    0.00  -47.00    0.00  -46.00    0.00    0.00    0.00    0.00    0.00  -42.00
         0.00  -43.00  -40.00    0.00  -49.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -42.00
         0.00    0.00    0.00  -41.00    0.00  -49.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
         0.00    0.00    0.00    0.00  -49.00    0.00  -47.00    0.00    0.00  -46.00  -40.00  -49.00    0.00  -48.00    0.00 ];
 Demandcost=zeros(J,1);

 print_with_color(:yellow,"Data was read.\n")

    return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end
# return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
function sppB0()
    K=34; #Number of specifications
 I=35; # Number of Inputs
 L=17;# Number of Pools
 J=21; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 A=[ 0   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   1   0
     0   1   0   1   1   0   1   0   0   0   0   0   1   0   0   1   0   1   1   0   0   0   0   0   1   0   1   1   0   0   0   0   0   0   0   0   0   0
     1   0   0   0   0   1   0   1   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0
     0   0   1   1   1   0   0   1   0   1   0   0   0   1   1   1   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   1   0   0   0   0
     0   1   0   1   0   0   0   1   1   1   1   0   0   0   1   0   1   0   0   0   0   0   0   0   0   0   0   0   1   0   1   0   0   1   0   0   0   0
     1   0   0   0   0   0   1   0   1   1   1   0   0   1   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
     0   0   1   1   1   1   0   0   0   1   1   0   0   1   0   0   0   0   1   0   0   0   0   0   0   0   0   1   0   0   0   0   1   1   0   0   0   0
     0   0   0   1   1   1   0   0   1   0   0   0   0   0   0   0   0   1   0   1   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0   0   1
     0   0   0   0   1   0   1   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1
    0   0   0   0   0   0   0   0   0   1   1   0   0   0   0   1   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   1   0   1   0
    0   1   1   0   0   0   0   1   1   1   0   0   0   1   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   1   0   0
    0   0   0   1   1   0   0   0   0   1   0   0   0   0   0   1   1   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0
    0   0   0   1   0   0   0   0   1   0   0   0   0   0   0   1   1   0   0   0   1   1   0   0   0   0   0   0   0   0   0   0   1   1   1   0   0   0
    0   1   0   0   1   1   1   0   1   1   0   0   0   1   0   0   1   0   0   0   1   0   0   0   0   0   1   0   0   0   0   1   0   0   0   0   0   0
    0   0   0   0   0   0   1   1   1   0   0   0   0   0   1   0   0   0   0   1   0   1   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   1
    0   0   0   1   1   0   1   1   0   0   1   0   0   1   0   0   0   0   0   0   1   0   1   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   0   1   1   0   0   0   0   0   1   1   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   1   0   1
    0   0   1   0   0   1   0   0   1   1   0   0   0   0   0   0   0   1   0   1   0   0   0   0   1   0   0   0   0   0   0   0   0   0   1   0   0   0
    0   0   0   1   0   0   1   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   0   0   1   0   0   0   1   0   0   1   0   0   1   0   0   0   0   0   1   0   0   0   1   0   0   0   0   0   0   1   1   0   0   0   0   0
    0   0   1   0   1   1   0   0   0   1   0   1   0   0   0   0   0   0   1   0   1   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0
    1   0   1   0   0   0   1   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   1   0   0   1   0   0   0   0   0   0   1   0   0   0   1   0
    0   1   0   0   0   1   0   0   0   0   0   0   0   0   1   1   0   0   0   0   0   0   0   0   0   1   0   0   1   0   0   0   0   0   0   0   0   0
    1   0   1   1   0   1   0   0   1   0   1   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   1   0   0   0   0   0   0   0
    1   0   1   1   0   0   0   0   1   0   1   0   0   0   1   1   1   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   1   0   0   0   0   0   0   1   1   0   0   0   0   0   0   0   1   0   0   0   1   0   1   0   0   0   0   0   0   1   1   0   1   1   0   0
    0   0   0   1   0   0   0   0   1   0   1   0   1   0   0   0   1   0   0   0   0   0   0   0   0   0   1   0   1   0   0   0   1   1   0   0   0   0
    0   1   1   0   0   1   0   0   0   0   1   1   1   0   0   1   0   0   1   0   0   0   0   0   1   0   0   0   0   1   1   0   0   0   0   0   0   0
    0   0   1   0   1   0   0   1   0   0   0   1   0   1   0   0   0   0   0   0   0   0   0   0   1   0   0   0   1   0   0   0   0   0   0   0   0   0
    0   1   1   0   0   0   0   1   0   0   0   0   1   1   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0
    0   1   0   0   0   0   0   0   1   0   0   1   1   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0
    1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0
    0   1   1   0   0   0   0   0   0   1   1   1   0   1   1   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   0   1   1   0   0   0   0   0   0   0   0   1   1   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   1   0   0   0   0   0   0   0
    0   1   0   0   0   0   1   0   0   1   0   0   0   0   1   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   1   0   0   0   1   0   1   0   0   0   0   0   0   0   1   1   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   0   1   0   1   0   0   0   0   0   1   1   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   1   1   0   1   0   1   0   1   0   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   1   0   1   0   0   0   1   0   0   0   0   0   0   0   0   0   1   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   1   0   0   0   0   1   0   1   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   1   0   0   0   0   1   0   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   0   1   1   1   1   0   0   1   1   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   0   0   0   0   0   0   0   0   1   0   0   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   0   0   0   0   0   0   0   0   1   1   1   0   0   1   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   1   1   0   0   0   1   1   0   0   0   1   0   1   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   0   1   0   0   0   1   0   0   0   0   0   0   1   0   1   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   1   1   1   1   1   1   0   0   1   1   1   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   0   0   0   1   0   0   0   0   0   0   0   1   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   1   0   0   0   0   1   1   1   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   0   0   0   0   0   0   0   1   0   0   0   0   0   1   0   1   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   0   1   1   1   0   0   0   0   1   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   1   1   1   0   0   0   0   0   1   0   1   1   0   0   0   0   0 ];
 AI=A[1:I,1:L];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=A[1:I,L+1:L+J];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=A[I+1:I+L,L+1:L+J];
 #Capacity
 #capacity of input
 


               
 CI=[     284.00
                       58.00
                      207.00
                      217.00
                      191.00
                      151.00
                       77.00
                       58.00
                       35.00
                     181.00
                     102.00
                     278.00
                     143.00
                     124.00
                     109.00
                      67.00
                      23.00
                     120.00
                     303.00
                     248.00
                     289.00
                     126.00
                     151.00
                     258.00
                    301.00
                      29.00
                      47.00
                     254.00
                     236.00
                     225.00
                     116.00
                     175.00
                     208.00
                     158.00
                     121.00]; 
 C_I=CI';
        #capacity of pools
        CL=[   191.00
                      97.00
                     149.00
                     149.00
                      82.00
                     182.00
                     180.00
                      60.00
                     145.00
                     175.00
                      65.00
                     100.00
                     119.00
                      90.00
                     124.00
                      99.00
                     159.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[   172.00
                     290.00
                      63.00
                     182.00
                     280.00
                     149.00
                      88.00
                      20.00
                     287.00
                     150.00
                      21.00
                     240.00
                     108.00
                     242.00
                      22.00
                      16.00
                      78.00
                     206.00
                     136.00
                     137.00
                       7.00 ];
 C_J=CJ';
 #lower ristriction for capacity
 lCL=zeros(1,L);
 lCI=zeros(1,I);
 lCJ=zeros(1,J);

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);

 
 


 # Specification limit
 #Maximum specification
 Mu_max=[   54.09   60.11   85.19   60.02   23.18   92.81   97.03   27.29   43.71   96.26   21.87   35.42   27.04   36.47   65.81   60.27   49.64   -2.25  -19.81   -0.87  -14.77  -17.64   -7.36   -1.01   -4.58  -11.17  -12.09   -3.22  -11.85  -18.23  -16.38   -7.90   -0.23  -13.03
    82.17   43.56   26.86   71.48   53.02   72.48   24.44   26.59   44.09   36.55   43.46   29.50   64.37   51.19   35.73   85.40   78.70   -1.14  -17.79   -8.55   -3.87   -6.66   -7.79   -3.23  -10.41   -5.91   -9.17  -18.99   -3.78  -15.28   -0.76   -0.96  -13.10  -19.10
    68.07   52.70   90.92   93.12   92.73   87.09   28.47   67.27   32.05   34.46   39.40   91.41   41.33   96.79   65.42   87.04   80.19  -13.82  -17.06  -14.45  -17.73  -16.46  -18.15  -12.48  -16.27   -9.83   -0.70  -11.84   -5.21  -12.33  -10.31   -8.40   -5.01  -16.53
    96.44   35.20   77.56   82.64   72.95   92.02   69.84   29.91   44.06   82.36   88.96   88.51   47.35   75.41   20.92   62.11   68.92   -1.05  -10.11   -5.87   -3.78  -18.64  -17.85  -18.84   -4.80   -3.27  -10.01  -14.95   -4.38  -17.08  -15.22   -0.98   -2.19   -4.00
    26.08   84.08   81.47   93.87   41.65   55.90   34.72   92.59   64.72   92.26   31.57   90.94   27.09   81.25   84.48   58.82   92.96   -7.50  -11.72  -17.18  -14.65  -13.18  -12.79   -4.83   -2.71  -11.20  -11.60  -16.90  -12.29  -14.83  -18.62   -2.68   -8.82   -5.76
    59.05   60.54   34.78   52.88   53.99   67.62   64.87   76.46   86.29   82.93   99.38   32.33   48.60   41.12   63.86   55.17   79.52  -10.80  -17.50  -12.29   -8.55   -4.47   -4.12   -4.71  -17.69   -7.73   -9.06   -0.59  -19.52   -1.16  -11.34  -15.82   -9.72  -10.70
    81.26   71.05   83.72   34.55   90.02   32.90   81.50   72.23   31.77   20.23   36.51   85.07   82.01   27.59   61.28   54.77   50.04  -14.27   -7.49  -14.24   -4.55   -8.77   -3.52  -10.67   -4.23  -15.45   -0.63  -17.73  -15.12   -3.61  -13.60  -18.53   -8.27   -0.31
    29.70   27.04   58.21   58.93   71.80   39.46   37.34   49.88   78.12   59.72   93.49   36.42   42.04   79.30   40.30   26.81   99.72  -15.70   -7.28  -16.97  -19.59   -4.06  -16.44   -3.49   -7.08   -4.80  -10.68   -2.53  -12.89  -19.54  -13.57  -13.84  -17.70   -0.45
    63.10   32.81   55.60   79.32   82.82   51.16   26.83   85.30   95.29   61.67   57.50   36.67   91.90   36.86   63.46   56.78   71.19   -2.64   -3.34  -12.67  -16.23   -5.73  -12.91  -11.60  -13.62  -18.23   -9.56   -7.73  -11.57   -4.46  -15.01  -12.09   -8.73   -9.34
    76.86   48.98   49.19   73.74   90.70   61.01   76.88   94.40   79.53   99.98   53.73   50.76   87.60   89.05   27.68   99.52   27.31  -11.20   -5.62  -15.67   -7.32   -3.19  -12.12   -5.28  -16.48  -12.80   -0.57  -17.71  -16.98  -17.08  -17.21   -6.07  -16.48  -19.72
    75.63   68.74   44.45   97.56   33.04   25.85   85.97   97.02   22.56   70.61   24.06   65.82   58.12   79.85   72.40   89.49   37.43   -2.94  -10.10   -2.48  -11.44   -9.18   -5.71  -14.68   -9.09   -4.17  -15.19  -11.72   -2.44  -16.63   -9.10  -19.15   -1.42  -18.59
    50.87   85.33   69.77   48.12   93.32   20.94   70.45   46.54   29.22   31.12   86.51   38.74   21.21   53.81   86.87   99.04   30.99  -15.37  -11.37   -3.73  -15.28   -9.53   -4.07  -19.86  -16.17  -15.71   -7.42  -16.23  -14.66  -18.75  -19.58   -3.21  -18.94  -10.30
    24.70   91.03   34.00   89.37   69.81   45.22   42.26   32.85   38.44   94.16   96.98   95.67   86.30   68.70   46.17   38.99   64.48   -7.87  -16.93  -16.37   -7.21  -16.20   -6.14  -17.53  -18.44   -7.53  -10.49  -13.35   -1.60   -3.29  -15.53  -14.44   -4.56   -4.02
    60.39   80.98   39.58   42.73   62.70   54.86   50.89   50.91   79.89   94.13   79.69   84.43   93.04   66.75   96.62   35.67   24.97   -4.46  -19.90  -19.05  -13.25  -15.15  -15.62  -17.53  -14.23   -4.10  -17.61  -12.64  -15.52   -2.93  -13.06  -18.64  -10.62  -15.95
    90.57   92.77   61.07   39.01   20.98   91.58   92.60   80.51   93.40   64.98   41.77   63.31   76.09   30.74   77.76   38.67   39.38  -13.71   -1.08  -18.12   -4.47   -7.65  -15.63  -18.31   -0.71  -15.30  -17.10   -8.02  -14.63  -13.79   -0.13   -5.04   -5.31   -5.30
    25.25   69.55   23.66   87.99   63.13   50.87   92.58   92.68   73.03   30.41   35.87   87.96   92.47   46.16   89.62   24.81   56.70  -13.56  -16.59  -14.92   -5.03   -0.13  -19.11  -11.97   -4.30  -14.29  -11.10  -18.65   -3.43   -5.34   -2.84   -7.21  -15.98   -7.17
    37.98   65.67   87.17   83.64   98.05   53.95   59.81   66.30   52.25   76.75   72.91   32.85   91.68   99.19   79.07   73.22   81.77   -9.40   -8.05   -4.57   -3.78  -13.07  -18.39   -3.54  -11.39  -11.25   -7.96   -4.71   -0.53  -14.29   -6.55   -9.22   -7.58  -16.62
    55.18   92.62   99.99   24.74   65.94   66.92   21.90   60.93   45.03   85.51   65.08   76.11   95.39   78.09   52.75   70.12   88.20   -9.30  -16.94  -16.25  -14.86   -4.97   -9.88   -0.05  -19.27  -12.14   -9.20   -1.80  -12.33  -10.86  -17.82   -3.57   -2.01   -2.89
    97.25   96.07   78.74   88.68   20.60   72.58   93.59   20.92   22.08   43.84   68.00   43.48   91.93   28.18   71.08   82.44   57.52   -8.47  -18.40  -19.94  -13.93   -7.83  -13.68  -18.96  -13.23  -12.97  -17.78   -3.13   -0.20  -19.18   -9.20   -9.90   -9.33  -16.55
    30.70   83.66   42.64   24.19   20.78   71.46   36.25   70.33   91.89   22.64   36.53   23.19   23.47   42.48   31.88   58.54   25.51  -15.75   -2.25   -1.82   -4.07   -8.29  -11.59   -8.99  -18.36   -4.38  -15.65  -14.53  -13.27  -15.35  -12.21   -1.75   -4.75  -12.91
    31.32   69.01   28.98   30.67   48.41   25.20   52.73   84.23   50.43   48.86   40.07   98.10   77.79   68.10   50.95   63.03   82.05   -5.97  -13.25   -3.66  -14.92  -16.06  -12.42   -9.99   -5.53  -11.57   -3.11   -2.65  -11.14   -8.08   -1.87   -8.05  -15.52  -15.16  ];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[77.25   49.81   71.04   56.64   45.46   29.33   31.17   21.85   23.71   36.25   32.72   62.00   66.91   60.98   76.78   57.94   50.50  -77.25  -49.81  -71.04  -56.64  -45.46  -29.33  -31.17  -21.85  -23.71  -36.25  -32.72  -62.00  -66.91  -60.98  -76.78  -57.94  -50.50
     73.89   39.75   55.27   48.78   72.56   45.07   64.17   21.17   33.41   10.98   10.14   31.20   10.67    3.30    9.61   11.44    6.28  -73.89  -39.75  -55.27  -48.78  -72.56  -45.07  -64.17  -21.17  -33.41  -10.98  -10.14  -31.20  -10.67   -3.30   -9.61  -11.44   -6.28
     73.62   16.05   78.43   16.60   51.20    8.71   10.78   42.28   55.43   25.43   11.75    6.37   39.64   48.36   14.20   41.46   52.44  -73.62  -16.05  -78.43  -16.60  -51.20   -8.71  -10.78  -42.28  -55.43  -25.43  -11.75   -6.37  -39.64  -48.36  -14.20  -41.46  -52.44
     25.86   23.08   41.96   16.13   54.98   10.65   13.92   73.09   66.58   68.08   57.08   58.40   72.35   67.12    6.04   32.93   22.08  -25.86  -23.08  -41.96  -16.13  -54.98  -10.65  -13.92  -73.09  -66.58  -68.08  -57.08  -58.40  -72.35  -67.12   -6.04  -32.93  -22.08
     16.31    6.88   26.52    5.50   33.11   59.15   20.53   71.18    8.15   39.93    6.94   32.83   27.80   16.95   53.18   48.17   51.85  -16.31   -6.88  -26.52   -5.50  -33.11  -59.15  -20.53  -71.18   -8.15  -39.93   -6.94  -32.83  -27.80  -16.95  -53.18  -48.17  -51.85
     42.29   36.07   78.08   22.84   30.40   12.54   43.33   71.12   76.93   38.53   65.77   56.47   23.92   13.43   53.39   62.45   78.60  -42.29  -36.07  -78.08  -22.84  -30.40  -12.54  -43.33  -71.12  -76.93  -38.53  -65.77  -56.47  -23.92  -13.43  -53.39  -62.45  -78.60
     34.95   58.12   70.14   24.31   75.40   68.06   23.30   22.52    6.53   68.54   46.57   74.04   34.82   47.09   66.31   27.17   28.02  -34.95  -58.12  -70.14  -24.31  -75.40  -68.06  -23.30  -22.52   -6.53  -68.54  -46.57  -74.04  -34.82  -47.09  -66.31  -27.17  -28.02
      6.02    8.69   52.73   76.54   32.99    1.21   34.71   78.50   26.97   71.78   36.28   37.66   77.72    5.43   39.34   28.77   75.19   -6.02   -8.69  -52.73  -76.54  -32.99   -1.21  -34.71  -78.50  -26.97  -71.78  -36.28  -37.66  -77.72   -5.43  -39.34  -28.77  -75.19
      6.49   30.15   61.79   57.37   56.05   62.60    6.50   18.04   68.32   23.75   20.80    7.04   39.61   45.70   55.22   55.78   19.45   -6.49  -30.15  -61.79  -57.37  -56.05  -62.60   -6.50  -18.04  -68.32  -23.75  -20.80   -7.04  -39.61  -45.70  -55.22  -55.78  -19.45
    45.27   52.19    8.95   13.40   23.22   50.26   33.58   31.92   51.48   63.54   29.72    0.41   38.54   54.58   79.65   76.31   24.48  -45.27  -52.19   -8.95  -13.40  -23.22  -50.26  -33.58  -31.92  -51.48  -63.54  -29.72   -0.41  -38.54  -54.58  -79.65  -76.31  -24.48
    51.57   28.91    2.37   60.26    9.90   30.26   28.11   47.61   51.92   28.66    8.97   20.26   23.01   21.71   24.26   75.14   76.73  -51.57  -28.91   -2.37  -60.26   -9.90  -30.26  -28.11  -47.61  -51.92  -28.66   -8.97  -20.26  -23.01  -21.71  -24.26  -75.14  -76.73
     5.24   28.20   57.81   44.54   71.18   55.33   75.69   30.60   36.49   41.94    0.49   47.32   33.10   24.14   16.46   41.56   34.76   -5.24  -28.20  -57.81  -44.54  -71.18  -55.33  -75.69  -30.60  -36.49  -41.94   -0.49  -47.32  -33.10  -24.14  -16.46  -41.56  -34.76
    22.39    1.60   13.53   44.36   59.53    6.06   22.18   13.26    9.31   44.79   14.84   21.35   64.33   65.71   66.90   14.25   64.38  -22.39   -1.60  -13.53  -44.36  -59.53   -6.06  -22.18  -13.26   -9.31  -44.79  -14.84  -21.35  -64.33  -65.71  -66.90  -14.25  -64.38
     0.87   16.76   63.53   19.60   53.97   15.38   51.01    8.48   77.74   38.35   73.03   62.42   27.76   47.42   40.87    8.96    3.40   -0.87  -16.76  -63.53  -19.60  -53.97  -15.38  -51.01   -8.48  -77.74  -38.35  -73.03  -62.42  -27.76  -47.42  -40.87   -8.96   -3.40
    30.72   36.35   42.56   22.31   43.67   55.16   38.48   43.22   22.37   74.00   63.67   35.48   47.38   42.23   13.31   56.68   76.78  -30.72  -36.35  -42.56  -22.31  -43.67  -55.16  -38.48  -43.22  -22.37  -74.00  -63.67  -35.48  -47.38  -42.23  -13.31  -56.68  -76.78
    25.62   27.57   66.78   55.89   53.34   78.37    4.69   17.54    2.78   65.43   69.12   76.57   36.49   37.83   68.06   58.25    8.54  -25.62  -27.57  -66.78  -55.89  -53.34  -78.37   -4.69  -17.54   -2.78  -65.43  -69.12  -76.57  -36.49  -37.83  -68.06  -58.25   -8.54
    77.94   61.34   20.51   61.79   14.07   28.30   69.59   72.15   56.39   62.22   58.21   42.62   14.88   36.50   22.88   59.54   60.02  -77.94  -61.34  -20.51  -61.79  -14.07  -28.30  -69.59  -72.15  -56.39  -62.22  -58.21  -42.62  -14.88  -36.50  -22.88  -59.54  -60.02
    21.63    5.01   59.67   37.41   31.61   49.45   74.41   79.95   22.10   20.19   41.39   79.32   68.96   27.27    1.83    8.20   64.34  -21.63   -5.01  -59.67  -37.41  -31.61  -49.45  -74.41  -79.95  -22.10  -20.19  -41.39  -79.32  -68.96  -27.27   -1.83   -8.20  -64.34
    71.90    1.67    1.74   40.74   51.09   25.67   70.56   12.48    1.36    7.16   35.06   74.08   79.74   73.14   54.95    0.19   13.12  -71.90   -1.67   -1.74  -40.74  -51.09  -25.67  -70.56  -12.48   -1.36   -7.16  -35.06  -74.08  -79.74  -73.14  -54.95   -0.19  -13.12
    59.12   77.96   38.86   43.63   64.26   32.32   26.29   64.32   50.92   51.63    6.03   18.34   10.78   25.12   38.43    4.18   20.07  -59.12  -77.96  -38.86  -43.63  -64.26  -32.32  -26.29  -64.32  -50.92  -51.63   -6.03  -18.34  -10.78  -25.12  -38.43   -4.18  -20.07
    35.14   48.62   44.31   58.87   28.63   36.33   26.34   14.87   44.87   31.38    0.44   61.54   53.36   20.64   79.70   78.42    9.72  -35.14  -48.62  -44.31  -58.87  -28.63  -36.33  -26.34  -14.87  -44.87  -31.38   -0.44  -61.54  -53.36  -20.64  -79.70  -78.42   -9.72
    71.55   18.87   41.44   32.21   51.66   59.95   38.84   15.68   11.68   60.51    1.51    3.89   61.65   31.98   62.65   47.42    7.15  -71.55  -18.87  -41.44  -32.21  -51.66  -59.95  -38.84  -15.68  -11.68  -60.51   -1.51   -3.89  -61.65  -31.98  -62.65  -47.42   -7.15
    15.86   40.35   24.41   27.50   54.81   38.82   41.08   34.69   12.63   31.40   51.63   55.35   73.97   14.35   41.89   14.41   21.58  -15.86  -40.35  -24.41  -27.50  -54.81  -38.82  -41.08  -34.69  -12.63  -31.40  -51.63  -55.35  -73.97  -14.35  -41.89  -14.41  -21.58
    69.07   32.86   56.42   52.26   58.01   71.48   67.01   34.40   72.38    3.72    3.30   68.44    6.79   34.19   38.75    1.96    5.64  -69.07  -32.86  -56.42  -52.26  -58.01  -71.48  -67.01  -34.40  -72.38   -3.72   -3.30  -68.44   -6.79  -34.19  -38.75   -1.96   -5.64
    56.64    8.77    4.37   30.64   28.32   20.96   48.63    8.05    0.50   23.85   24.66   74.04   57.07   47.00   58.26   78.33    7.90  -56.64   -8.77   -4.37  -30.64  -28.32  -20.96  -48.63   -8.05   -0.50  -23.85  -24.66  -74.04  -57.07  -47.00  -58.26  -78.33   -7.90
    49.99    8.81   78.84   76.09   28.40   39.49   77.56   55.08   39.62   24.45   20.76    8.22   53.38    2.88   52.68   59.08   42.71  -49.99   -8.81  -78.84  -76.09  -28.40  -39.49  -77.56  -55.08  -39.62  -24.45  -20.76   -8.22  -53.38   -2.88  -52.68  -59.08  -42.71
    31.28    2.97    2.85   14.55   19.72    5.43   70.49   41.18   78.81   23.05   56.57   79.24    1.98   35.37   44.76   21.45   66.92  -31.28   -2.97   -2.85  -14.55  -19.72   -5.43  -70.49  -41.18  -78.81  -23.05  -56.57  -79.24   -1.98  -35.37  -44.76  -21.45  -66.92
     5.61   23.19    4.33   65.30   33.28   73.48    4.71   37.03   70.74   25.53   49.28   31.47   70.10   27.18   27.70   32.37   69.62   -5.61  -23.19   -4.33  -65.30  -33.28  -73.48   -4.71  -37.03  -70.74  -25.53  -49.28  -31.47  -70.10  -27.18  -27.70  -32.37  -69.62
    57.89   54.25   54.38   78.77   24.05    1.46    9.62    1.27   57.43   47.28   72.90   40.94   74.58   13.21   60.01   70.55    4.12  -57.89  -54.25  -54.38  -78.77  -24.05   -1.46   -9.62   -1.27  -57.43  -47.28  -72.90  -40.94  -74.58  -13.21  -60.01  -70.55   -4.12
     2.57   46.75   67.07   19.81   16.81   26.68   55.63    3.15   13.91   35.78   58.31   41.31   59.31   45.89    3.63   10.44   50.56   -2.57  -46.75  -67.07  -19.81  -16.81  -26.68  -55.63   -3.15  -13.91  -35.78  -58.31  -41.31  -59.31  -45.89   -3.63  -10.44  -50.56
    20.70   20.22   54.12   56.82   73.37   66.62   40.89   69.63   12.96    2.98   78.81   60.03   43.04   45.80   30.54    7.65   23.57  -20.70  -20.22  -54.12  -56.82  -73.37  -66.62  -40.89  -69.63  -12.96   -2.98  -78.81  -60.03  -43.04  -45.80  -30.54   -7.65  -23.57
    29.64   27.24   19.91   63.86   49.65    8.40   25.32   55.66   43.44   66.60   36.92   71.54   33.00   29.76   13.36   52.77   17.14  -29.64  -27.24  -19.91  -63.86  -49.65   -8.40  -25.32  -55.66  -43.44  -66.60  -36.92  -71.54  -33.00  -29.76  -13.36  -52.77  -17.14
     9.36   31.70   55.46   26.60   72.44   23.64   34.51   41.86   12.21   33.29   17.06   33.06   78.65   48.67   43.69    9.69   54.73   -9.36  -31.70  -55.46  -26.60  -72.44  -23.64  -34.51  -41.86  -12.21  -33.29  -17.06  -33.06  -78.65  -48.67  -43.69   -9.69  -54.73
    40.62   64.50   52.78   19.75   33.73   13.51   24.02   49.24   75.73   69.45   34.43   67.32   49.86   41.14   73.32    5.87   52.32  -40.62  -64.50  -52.78  -19.75  -33.73  -13.51  -24.02  -49.24  -75.73  -69.45  -34.43  -67.32  -49.86  -41.14  -73.32   -5.87  -52.32
    65.39   77.61   73.49   22.26   63.09   68.53   42.51   70.70   12.72   71.22   74.96   57.39   10.81   31.45   66.98    0.39   54.59  -65.39  -77.61  -73.49  -22.26  -63.09  -68.53  -42.51  -70.70  -12.72  -71.22  -74.96  -57.39  -10.81  -31.45  -66.98   -0.39  -54.59 ];

 #costs
         C=[ 
  1    0.00    0.00    0.00   45.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    3.00    0.00    2.00    0.00
  2    0.00   24.00    0.00   24.00   24.00    0.00   24.00    0.00    0.00    0.00    0.00    0.00   24.00    0.00    0.00   24.00    0.00  -17.00  -26.00    0.00    0.00    0.00    0.00    0.00  -23.00    0.00  -17.00  -22.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
  3   17.00    0.00    0.00    0.00    0.00   17.00    0.00   17.00    0.00   17.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -32.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
  4    0.00    0.00   28.00   28.00   28.00    0.00    0.00   28.00    0.00   28.00    0.00    0.00    0.00   28.00   28.00   28.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -18.00    0.00    0.00    0.00    0.00    0.00  -20.00    0.00    0.00    0.00    0.00
  5    0.00   37.00    0.00   37.00    0.00    0.00    0.00   37.00   37.00   37.00   37.00    0.00    0.00    0.00   37.00    0.00   37.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -12.00    0.00   -9.00    0.00    0.00  -11.00    0.00    0.00    0.00    0.00
  6   45.00    0.00    0.00    0.00    0.00    0.00   45.00    0.00   45.00   45.00   45.00    0.00    0.00   45.00    0.00    0.00   45.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
  7    0.00    0.00   41.00   41.00   41.00   41.00    0.00    0.00    0.00   41.00   41.00    0.00    0.00   41.00    0.00    0.00    0.00    0.00   -9.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -5.00    0.00    0.00    0.00    0.00    1.00   -7.00    0.00    0.00    0.00    0.00
  8    0.00    0.00    0.00   33.00   33.00   33.00    0.00    0.00   33.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -8.00    0.00  -16.00    0.00    0.00    0.00    0.00    0.00  -10.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -9.00
  9    0.00    0.00    0.00    0.00   46.00    0.00   46.00    0.00    0.00    0.00    0.00    0.00   46.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    3.00    4.00
 10    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   35.00   35.00    0.00    0.00    0.00    0.00   35.00    0.00   -6.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -5.00    0.00   -7.00    0.00   -8.00    0.00
 11    0.00   47.00   47.00    0.00    0.00    0.00    0.00   47.00   47.00   47.00    0.00    0.00    0.00   47.00    0.00    0.00   47.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -2.00    0.00    0.00    0.00   -1.00    0.00    0.00
 12    0.00    0.00    0.00   25.00   25.00    0.00    0.00    0.00    0.00   25.00    0.00    0.00    0.00    0.00    0.00   25.00   25.00    0.00  -25.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -15.00    0.00    0.00    0.00    0.00    0.00
 13    0.00    0.00    0.00   27.00    0.00    0.00    0.00    0.00   27.00    0.00    0.00    0.00    0.00    0.00    0.00   27.00   27.00    0.00    0.00    0.00  -14.00  -16.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -13.00  -21.00  -15.00    0.00    0.00    0.00
 14    0.00   23.00    0.00    0.00   23.00   23.00   23.00    0.00   23.00   23.00    0.00    0.00    0.00   23.00    0.00    0.00   23.00    0.00    0.00    0.00  -18.00    0.00    0.00    0.00    0.00    0.00  -18.00    0.00    0.00    0.00    0.00  -26.00    0.00    0.00    0.00    0.00    0.00    0.00
 15    0.00    0.00    0.00    0.00    0.00    0.00   20.00   20.00   20.00    0.00    0.00    0.00    0.00    0.00   20.00    0.00    0.00    0.00    0.00  -29.00    0.00  -23.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -26.00    0.00    0.00    0.00    0.00    0.00    0.00  -22.00
 16    0.00    0.00    0.00   23.00   23.00    0.00   23.00   23.00    0.00    0.00   23.00    0.00    0.00   23.00    0.00    0.00    0.00    0.00    0.00    0.00  -18.00    0.00  -21.00  -20.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 17    0.00    0.00    0.00    0.00    0.00   12.00   12.00    0.00    0.00    0.00    0.00    0.00   12.00   12.00    0.00    0.00   12.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -28.00    0.00    0.00  -36.00    0.00  -30.00
 18    0.00    0.00   43.00    0.00    0.00   43.00    0.00    0.00   43.00   43.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    2.00    0.00   -6.00    0.00    0.00    0.00    0.00   -4.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    1.00    0.00    0.00    0.00
 19    0.00    0.00    0.00   28.00    0.00    0.00   28.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   28.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 20    0.00    0.00    0.00    0.00   42.00    0.00    0.00    0.00   42.00    0.00    0.00   42.00    0.00    0.00   42.00    0.00    0.00    0.00    0.00    0.00    1.00    0.00    0.00    0.00   -5.00    0.00    0.00    0.00    0.00    0.00    0.00   -7.00    2.00    0.00    0.00    0.00    0.00    0.00
 21    0.00    0.00   27.00    0.00   27.00   27.00    0.00    0.00    0.00   27.00    0.00   27.00    0.00    0.00    0.00    0.00    0.00    0.00  -23.00    0.00  -14.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -22.00    0.00    0.00    0.00    0.00    0.00    0.00
 22   41.00    0.00   41.00    0.00    0.00    0.00   41.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   41.00    0.00    0.00    0.00    0.00    0.00    0.00   -3.00    0.00    0.00   -2.00    0.00    0.00    0.00    0.00    0.00    0.00    1.00    0.00    0.00    0.00   -2.00    0.00
 23    0.00   21.00    0.00    0.00    0.00   21.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   21.00   21.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -22.00    0.00    0.00  -28.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 24   19.00    0.00   19.00   19.00    0.00   19.00    0.00    0.00   19.00    0.00   19.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -24.00    0.00    0.00    0.00    0.00    0.00    0.00  -27.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 25   26.00    0.00   26.00   26.00    0.00    0.00    0.00    0.00   26.00    0.00   26.00    0.00    0.00    0.00   26.00   26.00   26.00    0.00    0.00    0.00    0.00    0.00    0.00  -17.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 26    0.00    0.00   46.00    0.00    0.00    0.00    0.00    0.00    0.00   46.00   46.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -4.00    0.00    0.00    0.00    2.00    0.00   -1.00    0.00    0.00    0.00    0.00    0.00    0.00   -3.00    6.00    0.00    4.00   -2.00    0.00    0.00
 27    0.00    0.00    0.00   11.00    0.00    0.00    0.00    0.00   11.00    0.00   11.00    0.00   11.00    0.00    0.00    0.00   11.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -30.00    0.00  -38.00    0.00    0.00    0.00  -29.00  -37.00    0.00    0.00    0.00    0.00
 28    0.00   43.00   43.00    0.00    0.00   43.00    0.00    0.00    0.00    0.00   43.00   43.00   43.00    0.00    0.00   43.00    0.00    0.00   -7.00    0.00    0.00    0.00    0.00    0.00   -4.00    0.00    0.00    0.00    0.00    2.00   -3.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 29    0.00    0.00   41.00    0.00   41.00    0.00    0.00   41.00    0.00    0.00    0.00   41.00    0.00   41.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -6.00    0.00    0.00    0.00   -8.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 30    0.00   28.00   28.00    0.00    0.00    0.00    0.00   28.00    0.00    0.00    0.00    0.00   28.00   28.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -18.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 31    0.00   39.00    0.00    0.00    0.00    0.00    0.00    0.00   39.00    0.00    0.00   39.00   39.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -2.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -3.00    0.00    0.00    0.00
 32   16.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -25.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -27.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 33    0.00   32.00   32.00    0.00    0.00    0.00    0.00    0.00    0.00   32.00   32.00   32.00    0.00   32.00   32.00   32.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 34    0.00    0.00   50.00   50.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   50.00   50.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    3.00    0.00    0.00    0.00    0.00    0.00    4.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
 35    0.00   22.00    0.00    0.00    0.00    0.00   22.00    0.00    0.00   22.00    0.00    0.00    0.00    0.00   22.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -22.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -26.00    0.00    0.00    0.00    0.00
 36    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00    0.00    0.00  -43.00    0.00    0.00    0.00  -43.00    0.00  -46.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -43.00    0.00
 37    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -49.00  -41.00  -43.00  -44.00    0.00  -47.00    0.00  -41.00    0.00    0.00    0.00    0.00    0.00  -40.00  -48.00    0.00    0.00    0.00    0.00
 38    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00    0.00    0.00    0.00    0.00    0.00  -46.00  -49.00    0.00  -46.00    0.00  -40.00    0.00  -42.00    0.00    0.00  -42.00
 39    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00    0.00  -41.00    0.00  -44.00    0.00    0.00    0.00  -41.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -43.00    0.00
 40    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -49.00    0.00    0.00    0.00    0.00  -48.00    0.00  -48.00    0.00    0.00
 41    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00  -46.00    0.00  -41.00    0.00    0.00    0.00    0.00  -42.00    0.00    0.00  -42.00
 42    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -43.00  -47.00  -43.00    0.00  -46.00  -49.00  -41.00  -46.00    0.00    0.00  -48.00  -42.00    0.00    0.00    0.00
 43    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -43.00  -44.00  -43.00  -47.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00    0.00  -42.00
 44    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -50.00  -49.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00  -46.00  -49.00    0.00    0.00  -42.00    0.00    0.00    0.00
 45    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -43.00    0.00    0.00  -47.00  -43.00    0.00    0.00    0.00  -41.00  -46.00    0.00    0.00    0.00  -42.00    0.00  -43.00    0.00
 46    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00  -50.00  -49.00    0.00  -43.00    0.00    0.00    0.00  -43.00    0.00    0.00    0.00    0.00    0.00    0.00  -40.00    0.00  -42.00    0.00    0.00    0.00
 47    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00  -46.00  -49.00  -41.00  -46.00  -49.00    0.00    0.00  -42.00  -48.00  -43.00  -42.00
 48    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -50.00  -49.00  -41.00  -43.00  -44.00  -43.00    0.00    0.00    0.00  -46.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00  -42.00
 49    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -43.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00    0.00    0.00    0.00  -42.00  -48.00  -43.00  -42.00
 50    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00  -50.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -46.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00  -48.00    0.00    0.00
 51    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -43.00  -41.00  -46.00    0.00  -41.00  -46.00  -49.00    0.00    0.00    0.00    0.00  -43.00    0.00
 52    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00    0.00    0.00  -43.00  -44.00  -43.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00  -49.00  -40.00    0.00    0.00    0.00    0.00    0.00 ];
 costI=C[1:I,1+1:L+1];
 costJ=C[1:I,L+1+1:L+1+J ];

 costL=C[ I+1:I+L, L+1+1:L+1+J];
 Demandcost=zeros(J,1);

 print_with_color(:yellow,"Data was read.\n")

    return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function sppA2()

    K=24; #Number of specifications
 I=20; # Number of Inputs
 L=10;# Number of Pools
 J=15; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 A=[ 0   0   0   0   0   0   1   0   1   0   1   0   0   0   0   0   0   0   0   0   0   0   1   0   0
     0   0   1   0   1   1   1   0   1   0   0   0   0   0   0   0   0   0   0   1   0   1   0   1   0
     0   0   0   1   0   0   0   0   0   1   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0
     0   0   1   1   0   0   0   1   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0
     0   1   0   0   1   0   0   0   0   1   0   1   0   1   0   0   0   0   0   1   1   0   0   1   0
     0   1   0   1   0   1   1   0   0   1   0   0   0   0   0   0   0   0   1   0   0   0   0   1   0
     0   1   0   0   0   1   0   1   0   0   0   0   1   1   0   0   0   1   0   0   0   0   0   0   0
     0   1   0   1   1   0   0   1   1   0   0   0   0   0   0   0   1   0   0   1   1   0   0   0   1
     0   0   0   1   0   0   0   1   1   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   1   1   1   0   0   0   0   1   1   0   0   0   0   1   0   0   0   0   0   0   0   0   0   1
    1   0   0   0   1   1   1   0   1   1   1   0   1   1   0   0   0   0   1   0   0   0   0   0   0
    0   0   0   1   0   1   0   0   0   0   0   0   1   0   0   0   0   0   0   1   0   1   0   0   0
    1   1   0   0   0   1   1   0   0   1   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0
    0   0   0   1   1   0   0   1   1   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0
    1   0   1   1   0   0   1   0   1   0   1   0   0   0   0   0   0   0   0   0   0   0   1   1   0
    0   0   0   0   1   0   0   1   1   0   0   0   0   0   0   0   1   0   0   0   0   1   0   0   0
    0   1   1   0   0   1   0   0   0   1   0   1   0   0   0   0   1   1   0   0   0   0   0   0   1
    0   1   0   1   1   0   1   1   1   0   0   0   0   0   0   0   1   0   0   0   0   0   1   0   0
    1   1   1   0   1   0   0   0   0   0   0   1   0   1   1   0   0   0   0   1   0   0   0   0   1
    0   0   1   1   1   0   1   1   1   0   1   0   0   0   0   1   0   0   0   0   0   1   0   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   1   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   0   0   0   1   0   1   1   1   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   1   0   1   0   1   1   1   1   0   1
    0   0   0   0   0   0   0   0   0   0   0   1   0   0   1   0   1   0   0   0   0   1   1   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   1   0   0   0   1   0   1   1   1
    0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   0   0   0   1   0   0   0   0   1   0
    0   0   0   0   0   0   0   0   0   0   1   0   1   1   1   0   0   0   0   1   0   0   1   1   1
    0   0   0   0   0   0   0   0   0   0   0   1   1   0   1   1   1   0   0   0   0   0   0   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   0   0   0   1   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   1   1   0   0   1   1   1   0   0   0   1   0   1   0   0 ];
 AI=A[1:I,1:L];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=A[1:I,L+1:L+J];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=A[I+1:I+L,L+1:L+J];
 #Capacity
 #capacity of input
 


               
 CI=[          223.00
                      290.00
                       55.00
                       25.00
                      230.00
                       76.00
                       30.00
                       22.00
                      208.00
                     169.00
                      48.00
                      83.00
                      99.00
                     189.00
                       7.00
                     219.00
                     280.00
                     276.00
                      48.00
                     276.00 ]; 
 C_I=CI';
        #capacity of pools
        CL=[      142.00
                     139.00
                     183.00
                     116.00
                     113.00
                      74.00
                     129.00
                      87.00
                      92.00
                      66.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[      172.00
                      33.00
                      13.00
                     212.00
                     285.00
                      32.00
                    238.00
                     255.00
                     189.00
                     253.00
                      71.00
                       6.00
                     265.00
                     141.00
                     119.00 ];
 C_J=CJ';
 #lower ristriction for capacity
 lCL=zeros(1,L);
 lCI=zeros(1,I);
 lCJ=zeros(1,J);

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);

 
 


 # Specification limit
 #Maximum specification
 Mu_max=[81.11   34.59   35.71   95.38   45.67   63.84   88.97   64.43   67.38   84.05   20.96   73.47   -6.25   -6.88   -1.90  -16.74   -3.44   -2.85   -4.81  -13.74   -6.86  -10.74   -3.72  -14.02
    83.60   39.14   39.75   96.71   62.85   39.96   95.03   75.62   31.52   64.09   39.06   29.53   -1.80  -14.34   -4.65  -13.68   -4.97   -4.77   -4.90   -2.82   -7.30  -19.50  -16.04   -1.20
    55.76   40.87   99.73   44.88   58.37   74.22   84.11   42.10   23.67   62.65   95.62   83.90   -9.87  -10.22  -15.45  -14.84  -13.38  -11.42  -14.04   -2.88   -1.26   -3.03   -8.18   -2.99
    80.59   77.19   73.06   42.22   22.95   56.97   63.65   26.10   58.58   63.94   77.00   83.25  -14.07   -1.53   -5.61  -19.33  -11.04  -10.12   -8.12  -12.33  -10.07  -13.35  -10.36   -7.38
    34.95   69.89   83.85   66.89   93.43   36.72   47.00   43.51   29.35   85.12   25.69   33.35  -10.86   -6.36   -7.72   -3.85   -2.14  -12.49   -0.71   -8.84  -11.62  -12.68  -16.79   -7.55
    37.69   56.26   56.56   21.14   89.79   87.94   38.85   40.10   84.34   83.22   90.40   37.95   -9.73  -19.87  -19.78  -16.40   -1.80   -5.22   -2.36  -12.42   -0.08  -19.24   -9.48   -6.18
    22.99   99.41   81.03   91.42   20.82   43.94   74.38   68.89   42.20   87.15   38.75   83.80  -10.28   -9.17   -2.46  -12.30   -8.74  -19.76  -10.25  -15.48  -16.59  -11.46  -10.13  -18.31
    90.65   68.20   57.18   79.84   77.05   77.32   89.49   80.17   52.68   26.80   82.98   24.07  -15.48   -9.75  -14.33   -4.02   -6.16   -1.92  -18.99   -1.77  -11.73  -18.54   -9.20   -7.98
    56.42   34.30   58.45   66.59   28.91   99.15   55.23   99.10   97.10   97.95   80.20   23.98   -1.82   -3.60   -0.34   -4.35  -15.15  -10.18  -15.11  -16.48  -13.79   -0.27   -3.00   -6.28
    44.20   46.46   25.40   78.21   70.62   94.91   85.39   92.02   66.89   73.38   46.31   87.09  -14.97   -4.85   -1.25  -12.63   -0.13  -11.26  -11.96  -18.22   -7.70   -1.52  -18.67   -3.08
    32.06   69.15   95.12   69.34   57.19   71.25   88.34   34.01   78.70   28.35   59.90   43.46  -17.03   -2.09   -9.50  -17.09   -7.14  -19.01  -15.09  -13.44   -4.19  -13.18  -13.48   -2.52
    20.52   88.54   47.84   62.74   43.13   56.36   67.92   55.93   65.90   29.25   60.42   40.49   -4.57   -1.85  -16.52  -10.09  -14.29  -18.11   -1.20   -6.47  -15.87  -11.54  -13.64   -3.54
    94.67   38.63   46.71   62.69   64.92   37.55   88.04   59.23   24.41   45.97   34.76   46.46  -17.52   -8.24   -4.87   -6.07   -0.40   -4.72  -17.32  -13.23  -12.37   -0.78   -4.36   -7.08
    94.68   67.08   37.14   56.30   43.32   83.59   24.25   57.42   28.42   75.81   46.12   71.63  -13.50   -5.29   -6.66   -8.93  -11.90   -3.97   -6.87   -3.86  -18.93   -9.38   -5.67  -10.48
    49.72   76.07   33.64   80.68   50.67   92.51   94.16   71.65   81.39   25.34   58.12   33.02  -11.17   -4.76   -9.15   -0.63   -0.79  -19.05   -9.96   -3.77  -16.12  -11.97   -8.02  -18.27 ];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[    18.86   22.83    1.84   22.30   61.77   11.66   12.52   67.07   43.49   59.10   67.17   33.35  -18.86  -22.83   -1.84  -22.30  -61.77  -11.66  -12.52  -67.07  -43.49  -59.10  -67.17  -33.35
     77.82   77.89   13.26   37.68   22.34    6.71   49.99    2.99   60.95   23.38   46.03   71.49  -77.82  -77.89  -13.26  -37.68  -22.34   -6.71  -49.99   -2.99  -60.95  -23.38  -46.03  -71.49
     57.06   62.48   76.92   44.10   35.83   17.35   27.55   68.13   72.19   53.61    3.49   66.07  -57.06  -62.48  -76.92  -44.10  -35.83  -17.35  -27.55  -68.13  -72.19  -53.61   -3.49  -66.07
     48.33   57.07   51.62   21.22   30.17   15.31   17.98   29.37   53.69   23.67   15.42    3.25  -48.33  -57.07  -51.62  -21.22  -30.17  -15.31  -17.98  -29.37  -53.69  -23.67  -15.42   -3.25
     51.92   27.45   59.29   20.11   20.94   79.50   76.06   68.00   13.44   43.61   72.90   77.59  -51.92  -27.45  -59.29  -20.11  -20.94  -79.50  -76.06  -68.00  -13.44  -43.61  -72.90  -77.59
      3.93   47.48   68.76   42.30   16.83   45.83   57.07   76.21   23.40   74.19   22.94   58.55   -3.93  -47.48  -68.76  -42.30  -16.83  -45.83  -57.07  -76.21  -23.40  -74.19  -22.94  -58.55
     74.51   40.98   32.59   13.72   51.42    2.69   49.72    1.19   38.40   19.97   63.07   70.98  -74.51  -40.98  -32.59  -13.72  -51.42   -2.69  -49.72   -1.19  -38.40  -19.97  -63.07  -70.98
     68.34   26.68   64.22   44.93   50.92   28.19   58.49   24.16   34.30   47.23   48.06   29.43  -68.34  -26.68  -64.22  -44.93  -50.92  -28.19  -58.49  -24.16  -34.30  -47.23  -48.06  -29.43
     72.98   26.06   73.53   48.44    1.37   23.94   12.55   64.47   34.21   10.80    2.89   53.15  -72.98  -26.06  -73.53  -48.44   -1.37  -23.94  -12.55  -64.47  -34.21  -10.80   -2.89  -53.15
    49.00   26.74   50.08   11.88   13.60   45.93   19.70   31.11   14.71   10.57   61.01   64.60  -49.00  -26.74  -50.08  -11.88  -13.60  -45.93  -19.70  -31.11  -14.71  -10.57  -61.01  -64.60
    34.31   42.32   38.86   51.14   33.46   34.07   75.83   60.51   24.08   34.82   75.70   30.54  -34.31  -42.32  -38.86  -51.14  -33.46  -34.07  -75.83  -60.51  -24.08  -34.82  -75.70  -30.54
    53.43   44.81   36.83   67.89   13.17   21.06   11.51   55.14    2.47   57.38   61.01   41.50  -53.43  -44.81  -36.83  -67.89  -13.17  -21.06  -11.51  -55.14   -2.47  -57.38  -61.01  -41.50
    74.58   14.12   10.91    7.77   58.52   76.92   15.64   52.56   56.86   48.22   61.94   61.69  -74.58  -14.12  -10.91   -7.77  -58.52  -76.92  -15.64  -52.56  -56.86  -48.22  -61.94  -61.69
    49.38   69.64   60.17   23.03   17.44   66.83   28.50   73.73   50.66   52.99   42.83    3.88  -49.38  -69.64  -60.17  -23.03  -17.44  -66.83  -28.50  -73.73  -50.66  -52.99  -42.83   -3.88
    75.05   35.10   55.62   72.50   48.08   12.34    7.84   29.08   42.59   53.51   31.53   40.30  -75.05  -35.10  -55.62  -72.50  -48.08  -12.34   -7.84  -29.08  -42.59  -53.51  -31.53  -40.30
    38.95   46.80    8.50   51.63   37.06   67.37    6.68   73.24   49.43   26.28   54.05   64.46  -38.95  -46.80   -8.50  -51.63  -37.06  -67.37   -6.68  -73.24  -49.43  -26.28  -54.05  -64.46
    11.46    6.72   38.25   11.87   78.54   62.68   22.74   69.12   13.39   13.99   29.65   45.73  -11.46   -6.72  -38.25  -11.87  -78.54  -62.68  -22.74  -69.12  -13.39  -13.99  -29.65  -45.73
    66.09   22.19   30.91   36.50   28.51   21.50    8.26   48.19   21.26   52.10   57.61   48.82  -66.09  -22.19  -30.91  -36.50  -28.51  -21.50   -8.26  -48.19  -21.26  -52.10  -57.61  -48.82
    32.02    8.83   50.34   53.80   39.94   23.96   66.64   18.61   69.43   79.94    0.91   68.42  -32.02   -8.83  -50.34  -53.80  -39.94  -23.96  -66.64  -18.61  -69.43  -79.94   -0.91  -68.42
    43.23   66.80   42.46   30.22   18.25   12.59    7.18   63.24    6.02   17.41   63.89   41.14  -43.23  -66.80  -42.46  -30.22  -18.25  -12.59   -7.18  -63.24   -6.02  -17.41  -63.89  -41.14 ];

 #costs
         C=[ 
      0.00    0.00    0.00    0.00    0.00    0.00   27.00    0.00   27.00    0.00  -23.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -19.00    0.00    0.00
      0.00    0.00   40.00    0.00   40.00   40.00   40.00    0.00   40.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -9.00    0.00   -5.00    0.00   -7.00    0.00
      0.00    0.00    0.00   44.00    0.00    0.00    0.00    0.00    0.00   44.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    3.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
      0.00    0.00   25.00   25.00    0.00    0.00    0.00   25.00    0.00    0.00    0.00    0.00    0.00    0.00  -20.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
      0.00   31.00    0.00    0.00   31.00    0.00    0.00    0.00    0.00   31.00    0.00  -12.00    0.00  -14.00    0.00    0.00    0.00    0.00    0.00  -18.00  -16.00    0.00    0.00  -16.00    0.00
      0.00   44.00    0.00   44.00    0.00   44.00   44.00    0.00    0.00   44.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -3.00    0.00    0.00    0.00    0.00   -3.00    0.00
      0.00   50.00    0.00    0.00    0.00   50.00    0.00   50.00    0.00    0.00    0.00    0.00    4.00    5.00    0.00    0.00    0.00    9.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
      0.00   25.00    0.00   25.00   25.00    0.00    0.00   25.00   25.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -16.00    0.00    0.00  -24.00  -22.00    0.00    0.00    0.00  -21.00
      0.00    0.00    0.00   11.00    0.00    0.00    0.00   11.00   11.00   11.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00   11.00   11.00   11.00    0.00    0.00    0.00    0.00   11.00   11.00    0.00    0.00    0.00    0.00  -34.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -35.00
    26.00    0.00    0.00    0.00   26.00   26.00   26.00    0.00   26.00   26.00  -24.00    0.00  -20.00  -19.00    0.00    0.00    0.00    0.00  -21.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00   27.00    0.00   27.00    0.00    0.00    0.00    0.00    0.00    0.00  -19.00    0.00    0.00    0.00    0.00    0.00    0.00  -22.00    0.00  -18.00    0.00    0.00    0.00
    43.00   43.00    0.00    0.00    0.00   43.00   43.00    0.00    0.00   43.00    0.00    0.00    0.00    0.00   -2.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00   14.00   14.00    0.00    0.00   14.00   14.00    0.00    0.00    0.00    0.00    0.00    0.00  -32.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
    20.00    0.00   20.00   20.00    0.00    0.00   20.00    0.00   20.00    0.00  -30.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -26.00  -27.00    0.00
     0.00    0.00    0.00    0.00   33.00    0.00    0.00   33.00   33.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -8.00    0.00    0.00    0.00    0.00  -12.00    0.00    0.00    0.00
     0.00   40.00   40.00    0.00    0.00   40.00    0.00    0.00    0.00   40.00    0.00   -3.00    0.00    0.00    0.00    0.00   -1.00   -1.00    0.00    0.00    0.00    0.00    0.00    0.00   -6.00
     0.00   24.00    0.00   24.00   24.00    0.00   24.00   24.00   24.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -17.00    0.00    0.00    0.00    0.00    0.00  -22.00    0.00    0.00
    36.00   36.00   36.00    0.00   36.00    0.00    0.00    0.00    0.00    0.00    0.00   -7.00    0.00   -9.00   -9.00    0.00    0.00    0.00    0.00  -13.00    0.00    0.00    0.00    0.00  -10.00
     0.00    0.00   27.00   27.00   27.00    0.00   27.00   27.00   27.00    0.00  -23.00    0.00    0.00    0.00    0.00  -19.00    0.00    0.00    0.00    0.00    0.00  -18.00    0.00    0.00  -19.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -47.00    0.00    0.00  -45.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -46.00  -45.00    0.00    0.00    0.00    0.00  -47.00    0.00  -47.00  -45.00  -46.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -46.00  -45.00    0.00  -46.00    0.00  -41.00    0.00  -49.00  -47.00  -45.00  -46.00    0.00  -46.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -43.00    0.00    0.00  -45.00    0.00  -41.00    0.00    0.00    0.00    0.00  -45.00  -46.00    0.00  -46.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -45.00    0.00    0.00  -41.00    0.00    0.00    0.00  -47.00    0.00  -46.00  -47.00  -46.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -46.00  -45.00    0.00    0.00    0.00    0.00  -47.00    0.00    0.00    0.00    0.00  -47.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -50.00    0.00  -46.00  -45.00  -45.00    0.00    0.00    0.00    0.00  -49.00    0.00    0.00  -46.00  -47.00  -46.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -43.00  -46.00    0.00  -45.00  -46.00  -41.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -46.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -45.00  -45.00  -46.00    0.00    0.00    0.00  -49.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -50.00  -43.00    0.00    0.00  -45.00  -46.00  -41.00    0.00    0.00    0.00  -47.00    0.00  -46.00    0.00    0.00];
 costI=C[1:I,1:L];
 costJ=C[1:I,L+1:L+J ];

 costL=C[ I+1:I+L, L+1:L+J];
 Demandcost=zeros(J,1);

 print_with_color(:yellow,"Data was read.\n")

    return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function sppA3()
    K=24; #Number of specifications
 I=20; # Number of Inputs
 L=10;# Number of Pools
 J=15; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 A=[ 0   1   0   0   1   1   0   1   0   0   0   0   0   0   1   0   0   0   1   0   1   0   1   1   0
     1   0   0   1   0   1   0   0   0   0   0   0   0   0   0   1   1   0   0   1   0   0   0   0   0
     1   0   0   0   0   0   1   0   0   1   1   0   0   1   0   0   0   1   0   0   1   0   0   0   0
     0   0   1   1   0   1   1   0   0   0   0   1   0   0   0   1   0   0   0   0   0   0   0   0   0
     1   1   0   1   0   0   1   1   1   1   0   0   0   1   0   0   0   0   0   1   1   0   0   0   0
     0   0   0   0   0   0   1   1   0   0   0   0   0   0   0   1   0   0   1   0   1   0   0   0   1
     1   0   1   0   0   0   1   1   1   0   0   1   0   1   1   0   0   0   0   0   0   0   0   1   0
     0   0   0   0   1   1   1   0   1   1   0   0   0   1   0   1   0   1   0   0   0   0   0   0   0
     0   1   1   1   0   1   1   0   1   1   0   1   0   0   0   0   0   1   0   1   0   0   0   0   0
    0   0   0   0   0   0   0   1   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0
    0   0   0   1   0   1   1   1   0   0   0   0   0   0   1   1   0   1   0   0   1   0   1   0   0
    0   0   0   0   1   0   1   0   0   1   0   1   1   0   1   1   0   0   0   0   1   0   0   1   1
    0   1   1   1   1   0   1   0   0   1   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   1   0   1   0   1   1   1   0   0   0   1   0   1   0   1   0   0   1   1   0   0   0   1   1
    1   0   0   1   1   1   0   0   0   0   0   1   1   0   0   0   0   0   0   1   0   1   0   0   1
    0   0   1   1   0   1   0   0   1   0   0   0   0   0   0   1   0   0   0   1   0   0   0   1   0
    1   1   1   1   1   0   0   0   0   0   1   0   0   0   0   0   1   0   0   0   0   0   1   0   0
    0   1   0   0   0   0   0   0   0   1   0   0   0   0   0   0   1   0   0   0   0   1   0   0   0
    0   0   0   1   0   0   1   1   1   0   0   0   0   0   1   0   0   0   0   0   0   1   0   0   0
    1   1   0   0   0   0   0   1   1   1   0   1   0   0   0   1   0   0   0   0   1   0   0   0   1
    0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   1   1   0   0   1   1   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   1   0   0   1   0   0   1   0   1   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   1   1   1   0   0   0   0   1   1   1   0   0   1   0   1
    0   0   0   0   0   0   0   0   0   0   0   1   0   1   1   0   1   0   0   1   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   1   0   0   1   1   1   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   1   0   0   0   0   1   1   0   1   1
    0   0   0   0   0   0   0   0   0   0   0   1   1   0   1   1   0   0   1   1   1   1   1   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   1   0   1   1   0   1   0
    0   0   0   0   0   0   0   0   0   0   1   1   0   1   1   1   1   1   0   0   0   0   1   1   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   1   0   1   0   0   0   1   1 ];
 AI=A[1:I,1:L];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=A[1:I,L+1:L+J];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=A[I+1:I+L,L+1:L+J];
 #Capacity
 #capacity of input
 


               
 CI=[            69.00
                   183.00
                      246.00
                      283.00
                      146.00
                      177.00
                      271.00
                      291.00
                      129.00
                     277.00
                      93.00
                      81.00
                     197.00
                     237.00
                     207.00
                      79.00
                      48.00
                     122.00
                     200.00
                     247.00 ]; 
 C_I=CI';
        #capacity of pools
        CL=[          72.00
                     106.00
                     174.00
                     145.00
                     161.00
                      93.00
                      72.00
                     200.00
                      63.00
                     122.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[         284.00
                     169.00
                     163.00
                     257.00
                     147.00
                     198.00
                     231.00
                     277.00
                     278.00
                     247.00
                     262.00
                     139.00
                     289.00
                      30.00
                      76.00];
 C_J=CJ';
 #lower ristriction for capacity
 lCL=zeros(1,L);
 lCI=zeros(1,I);
 lCJ=zeros(1,J);

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);

 
 


 # Specification limit
 #Maximum specification
 Mu_max=[    94.87   99.72   29.85   27.70   86.16   75.31   30.75   68.00   27.14   91.94   98.50   56.69  -15.79   -1.38  -12.70  -15.30   -9.01  -11.54  -17.09   -6.92   -8.09  -19.26  -13.40  -12.67
    52.29   62.51   83.78   63.46   32.37   63.62   87.79   28.83   64.66   52.67   80.03   91.41  -17.00  -14.00  -11.58   -6.89  -17.53   -4.96  -18.97  -19.63  -18.83  -16.98   -0.95  -17.70
    79.55   38.96   68.72   23.12   36.18   28.81   48.48   58.92   76.43   43.87   72.58   72.52  -15.26  -13.72   -3.57  -15.87   -1.69  -12.93   -3.34  -14.68   -8.28  -17.11   -8.66  -15.63
    77.11   55.70   56.94   41.56   69.76   78.36   24.80   40.31   70.73   59.74   91.95   70.95  -15.57  -13.97  -11.03   -3.42  -14.74   -6.19  -16.84   -9.78   -4.94   -7.62  -10.62  -13.30
    61.35   23.79   69.56   53.95   73.36   87.43   85.61   62.61   62.70   43.11   24.79   26.14  -12.54  -16.90  -19.95  -10.55   -5.62  -16.95  -17.51   -0.49   -8.45  -15.59   -7.17   -8.86
    42.15   29.90   95.18   82.30   95.62   71.76   87.63   95.23   55.28   51.83   87.73   72.64  -17.08  -15.85   -3.27   -1.77   -8.96  -10.87  -13.66  -15.86   -2.62   -6.16   -0.32   -2.48
    23.85   38.62   43.26   62.32   62.65   96.11   21.53   68.38   49.94   21.15   75.35   49.89  -10.08   -6.76  -13.14   -7.48   -5.61  -10.22  -13.48  -19.28   -3.37   -1.80   -9.11   -3.64
    91.22   51.45   27.31   97.41   34.41   25.55   34.43   96.87   47.50   28.27   36.71   35.83  -18.54   -9.63   -9.97  -11.64  -17.76   -8.95  -18.01  -12.20   -3.49   -9.20   -0.34   -4.84
    48.69   92.35   90.69   37.80   91.03   49.00   21.99   59.52   80.63   79.85   80.80   68.46   -3.13   -1.87   -5.61  -11.85  -17.63   -3.51   -2.00  -11.41  -10.11   -4.46  -12.79  -17.74
    75.86   81.88   99.95   90.55   51.29   52.12   33.51   78.37   93.23   93.41   35.02   96.01   -5.32  -12.77  -13.34  -18.26  -13.12  -13.03  -10.53   -9.21  -19.68  -14.65   -2.11   -2.09
    33.80   55.34   86.83   50.29   97.23   62.53   70.27   97.93   69.98   45.74   49.99   29.62  -18.58  -12.48  -15.86  -19.66  -10.69   -9.09   -4.73   -7.18  -18.84   -1.89  -19.93  -15.37
    75.99   90.39   81.92   96.86   57.56   34.16   96.22   31.49   44.79   52.79   32.09   37.99   -4.45  -14.24   -4.33   -6.47  -13.85  -18.23   -7.48   -2.23  -18.78   -3.58   -5.37   -9.32
    30.73   97.08   97.75   21.24   83.27   38.09   65.96   57.56   98.93   90.36   92.33   93.65   -6.94   -1.89   -2.98  -17.15  -13.80  -16.34   -9.51  -17.48   -9.35   -2.57   -2.92   -4.44
    77.37   51.59   84.06   98.49   63.61   92.06   61.11   69.20   38.00   67.93   56.44   58.33   -3.42   -6.65   -3.92   -4.71  -18.56   -0.24   -5.89   -6.44  -13.10   -0.18  -16.39   -4.72
    99.80   72.00   80.39   80.49   51.55   36.63   55.32   48.48   29.45   80.71   65.23   59.80   -9.63  -11.91  -12.59  -12.50   -2.61   -1.47  -14.07  -17.12  -16.04  -12.26  -16.55  -10.60];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[ 15.60   40.98   73.28   16.51   50.23   15.50   54.26   24.69   28.10    4.97   34.49   41.98  -15.60  -40.98  -73.28  -16.51  -50.23  -15.50  -54.26  -24.69  -28.10   -4.97  -34.49  -41.98
     36.26   77.91    3.42   25.73    6.63   22.23   66.37   63.22   31.15    2.71   79.20   52.85  -36.26  -77.91   -3.42  -25.73   -6.63  -22.23  -66.37  -63.22  -31.15   -2.71  -79.20  -52.85
      2.86   22.26   35.35   42.33   12.04   12.03   18.71   50.22   60.58   43.16   56.03   62.41   -2.86  -22.26  -35.35  -42.33  -12.04  -12.03  -18.71  -50.22  -60.58  -43.16  -56.03  -62.41
     31.81   75.70   77.63   20.05   10.42   48.63   33.94   45.15   42.56   51.14   28.25    8.62  -31.81  -75.70  -77.63  -20.05  -10.42  -48.63  -33.94  -45.15  -42.56  -51.14  -28.25   -8.62
     15.72   12.67   74.34   19.49   29.20   52.03   55.23   51.74   26.64   29.38   78.62   54.17  -15.72  -12.67  -74.34  -19.49  -29.20  -52.03  -55.23  -51.74  -26.64  -29.38  -78.62  -54.17
     52.89   37.19   13.38   40.06   58.41    4.21   13.50   58.24   79.22    0.67    2.20   77.53  -52.89  -37.19  -13.38  -40.06  -58.41   -4.21  -13.50  -58.24  -79.22   -0.67   -2.20  -77.53
     20.28   43.06   15.47   47.22   32.96   16.09   14.80   21.11    5.70   59.27    1.27   49.38  -20.28  -43.06  -15.47  -47.22  -32.96  -16.09  -14.80  -21.11   -5.70  -59.27   -1.27  -49.38
     21.22   22.66   14.16   27.61   69.89   44.05   37.76   64.89   58.90   77.14   17.66   13.56  -21.22  -22.66  -14.16  -27.61  -69.89  -44.05  -37.76  -64.89  -58.90  -77.14  -17.66  -13.56
      9.57   14.08   17.84   72.46   75.31   35.76   71.14   76.45   40.86   60.97   36.30    1.45   -9.57  -14.08  -17.84  -72.46  -75.31  -35.76  -71.14  -76.45  -40.86  -60.97  -36.30   -1.45
    77.89   71.64   46.68   51.01   64.50   19.92   58.28   14.07   58.91   78.27   43.65    1.59  -77.89  -71.64  -46.68  -51.01  -64.50  -19.92  -58.28  -14.07  -58.91  -78.27  -43.65   -1.59
    13.90   11.43   64.85   51.00   33.11   55.87   50.49   21.82   39.83   47.25    4.36   65.08  -13.90  -11.43  -64.85  -51.00  -33.11  -55.87  -50.49  -21.82  -39.83  -47.25   -4.36  -65.08
     9.21   67.57   35.02   25.35   36.64   73.19   14.58   61.58   45.28    3.84   54.14   26.48   -9.21  -67.57  -35.02  -25.35  -36.64  -73.19  -14.58  -61.58  -45.28   -3.84  -54.14  -26.48
    58.51   44.09   70.23   59.84   57.94   48.36   68.91    7.20   29.97   12.25   51.73   70.03  -58.51  -44.09  -70.23  -59.84  -57.94  -48.36  -68.91   -7.20  -29.97  -12.25  -51.73  -70.03
    67.38   75.08   39.02    6.99   23.87   38.81   65.52   19.92   65.21   66.29   71.24   34.67  -67.38  -75.08  -39.02   -6.99  -23.87  -38.81  -65.52  -19.92  -65.21  -66.29  -71.24  -34.67
    60.54   48.01   32.45   70.48   49.19   22.75   68.93   26.24   75.79   57.83   60.44   45.52  -60.54  -48.01  -32.45  -70.48  -49.19  -22.75  -68.93  -26.24  -75.79  -57.83  -60.44  -45.52
    18.82   21.98   75.43   40.62   11.09   15.96   48.89   49.25   68.01   27.45    1.81   35.08  -18.82  -21.98  -75.43  -40.62  -11.09  -15.96  -48.89  -49.25  -68.01  -27.45   -1.81  -35.08
    18.05   68.33   16.47   37.11   65.66   40.89   40.11   14.62   20.15    8.14   40.72   58.97  -18.05  -68.33  -16.47  -37.11  -65.66  -40.89  -40.11  -14.62  -20.15   -8.14  -40.72  -58.97
    62.45   62.02   65.73   65.00   18.29   16.52   47.04   70.19   21.83   74.35   48.36   76.28  -62.45  -62.02  -65.73  -65.00  -18.29  -16.52  -47.04  -70.19  -21.83  -74.35  -48.36  -76.28
    42.66   11.68   25.93   44.73   25.43   32.61   78.55   44.11   22.13   51.55   32.12   26.04  -42.66  -11.68  -25.93  -44.73  -25.43  -32.61  -78.55  -44.11  -22.13  -51.55  -32.12  -26.04
    67.90   27.03   77.46   18.41   23.04    5.71   45.17   35.07   13.42    1.36   70.16   54.33  -67.90  -27.03  -77.46  -18.41  -23.04   -5.71  -45.17  -35.07  -13.42   -1.36  -70.16  -54.33];

 #costs
         C=[ 
       0.00   28.00    0.00    0.00   28.00   28.00    0.00   28.00    0.00    0.00    0.00    0.00    0.00    0.00  -17.00    0.00    0.00    0.00  -15.00    0.00  -21.00    0.00  -21.00  -15.00    0.00
     13.00    0.00    0.00   13.00    0.00   13.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -31.00  -35.00    0.00    0.00  -29.00    0.00    0.00    0.00    0.00    0.00
     43.00    0.00    0.00    0.00    0.00    0.00   43.00    0.00    0.00   43.00   -5.00    0.00    0.00   -6.00    0.00    0.00    0.00   -4.00    0.00    0.00   -6.00    0.00    0.00    0.00    0.00
      0.00    0.00   49.00   49.00    0.00   49.00   49.00    0.00    0.00    0.00    0.00    1.00    0.00    0.00    0.00    5.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     45.00   45.00    0.00   45.00    0.00    0.00   45.00   45.00   45.00   45.00    0.00    0.00    0.00   -4.00    0.00    0.00    0.00    0.00    0.00    3.00   -4.00    0.00    0.00    0.00    0.00
      0.00    0.00    0.00    0.00    0.00    0.00   34.00   34.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -10.00    0.00    0.00   -9.00    0.00  -15.00    0.00    0.00    0.00  -15.00
     30.00    0.00   30.00    0.00    0.00    0.00   30.00   30.00   30.00    0.00    0.00  -18.00    0.00  -19.00  -15.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -13.00    0.00
      0.00    0.00    0.00    0.00   40.00   40.00   40.00    0.00   40.00   40.00    0.00    0.00    0.00   -9.00    0.00   -4.00    0.00   -7.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
      0.00   26.00   26.00   26.00    0.00   26.00   26.00    0.00   26.00   26.00    0.00  -22.00    0.00    0.00    0.00    0.00    0.00  -21.00    0.00  -16.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00   47.00    0.00    0.00    0.00    0.00    0.00    0.00    2.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00   12.00    0.00   12.00   12.00   12.00    0.00    0.00    0.00    0.00    0.00    0.00  -33.00  -32.00    0.00  -35.00    0.00    0.00  -37.00    0.00  -37.00    0.00    0.00
     0.00    0.00    0.00    0.00   40.00    0.00   40.00    0.00    0.00   40.00    0.00   -8.00   -5.00    0.00   -5.00   -4.00    0.00    0.00    0.00    0.00   -9.00    0.00    0.00   -3.00   -9.00
     0.00   27.00   27.00   27.00   27.00    0.00   27.00    0.00    0.00   27.00  -21.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00   38.00    0.00   38.00    0.00   38.00   38.00   38.00    0.00    0.00    0.00  -10.00    0.00  -11.00    0.00   -6.00    0.00    0.00   -5.00   -4.00    0.00    0.00    0.00   -5.00  -11.00
    50.00    0.00    0.00   50.00   50.00   50.00    0.00    0.00    0.00    0.00    0.00    2.00    5.00    0.00    0.00    0.00    0.00    0.00    0.00    8.00    0.00    1.00    0.00    0.00    1.00
     0.00    0.00   34.00   34.00    0.00   34.00    0.00    0.00   34.00    0.00    0.00    0.00    0.00    0.00    0.00  -10.00    0.00    0.00    0.00   -8.00    0.00    0.00    0.00   -9.00    0.00
    14.00   14.00   14.00   14.00   14.00    0.00    0.00    0.00    0.00    0.00  -34.00    0.00    0.00    0.00    0.00    0.00  -34.00    0.00    0.00    0.00    0.00    0.00  -35.00    0.00    0.00
     0.00   19.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   19.00    0.00    0.00    0.00    0.00    0.00    0.00  -29.00    0.00    0.00    0.00    0.00  -30.00    0.00    0.00    0.00
     0.00    0.00    0.00   16.00    0.00    0.00   16.00   16.00   16.00    0.00    0.00    0.00    0.00    0.00  -29.00    0.00    0.00    0.00    0.00    0.00    0.00  -33.00    0.00    0.00    0.00
    31.00   31.00    0.00    0.00    0.00    0.00    0.00   31.00   31.00   31.00    0.00  -17.00    0.00    0.00    0.00  -13.00    0.00    0.00    0.00    0.00  -18.00    0.00    0.00    0.00  -18.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00    0.00    0.00  -44.00  -48.00    0.00    0.00  -42.00  -49.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00  -49.00    0.00    0.00  -48.00    0.00  -43.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -48.00  -45.00    0.00    0.00    0.00    0.00  -47.00  -43.00  -42.00    0.00    0.00  -49.00    0.00  -49.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00  -49.00  -45.00    0.00  -48.00    0.00    0.00  -42.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -45.00    0.00    0.00    0.00    0.00  -47.00    0.00    0.00  -49.00  -49.00  -49.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -45.00  -49.00    0.00  -44.00    0.00    0.00    0.00    0.00  -49.00  -49.00    0.00  -43.00  -49.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -45.00    0.00  -45.00  -44.00    0.00    0.00  -43.00  -42.00  -49.00  -49.00  -49.00    0.00  -49.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -45.00    0.00    0.00    0.00    0.00    0.00  -43.00    0.00  -49.00  -49.00    0.00  -43.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -48.00    0.00  -49.00  -45.00  -44.00  -48.00  -47.00    0.00    0.00    0.00    0.00  -49.00  -43.00  -49.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -49.00    0.00    0.00    0.00  -47.00    0.00  -42.00    0.00    0.00    0.00  -43.00  -49.00 ];
 costI=C[1:I,1:L];
 costJ=C[1:I,L+1:L+J ];

 costL=C[ I+1:I+L, L+1:L+J];
 Demandcost=zeros(J,1);

 print_with_color(:yellow,"Data was read.\n")

    return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end
function sppA4()
    K=24; #Number of specifications
 I=20; # Number of Inputs
 L=10;# Number of Pools
 J=15; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 A=[  1   0   1   0   0   0   1   1   0   0   0   0   0   0   0   0   1   0   0   0   1   0   1   1   0
     0   0   0   0   1   1   0   1   1   1   1   1   0   0   0   0   0   0   1   0   0   0   0   0   0
     0   1   0   1   1   1   0   0   1   0   0   0   1   1   1   0   1   0   0   0   0   0   0   0   0
     1   0   1   0   0   0   1   0   0   1   0   0   1   1   0   0   0   0   0   1   0   0   0   1   0
     0   1   1   1   1   1   0   1   0   1   0   0   0   0   0   1   0   0   0   1   1   0   0   1   1
     0   0   0   0   0   1   0   0   1   0   0   0   1   0   0   0   0   0   0   0   1   1   0   0   0
     1   1   1   1   1   1   1   0   0   0   0   1   0   0   0   0   1   1   0   0   0   0   0   0   0
     1   0   1   1   1   0   1   1   1   0   0   0   1   0   1   0   0   1   1   0   0   1   0   0   1
     0   1   1   1   1   1   1   0   1   1   0   0   0   0   1   0   1   0   0   0   0   0   0   0   1
    0   1   0   0   0   1   0   1   1   1   0   0   1   0   0   0   0   0   0   1   0   0   1   0   0
    0   1   1   1   0   1   1   0   1   1   0   1   0   0   0   0   0   0   0   1   1   0   1   0   1
    0   0   1   0   0   1   1   1   1   1   1   0   0   0   0   0   0   0   0   0   1   0   0   0   0
    1   1   0   1   1   0   0   1   0   0   0   1   1   0   1   0   1   0   0   0   1   0   0   1   0
    1   1   0   1   1   1   1   0   1   1   0   0   0   0   1   0   0   0   0   1   1   0   0   0   1
    0   1   0   1   0   0   1   0   0   1   0   1   0   1   0   0   0   0   0   0   0   0   0   0   0
    0   0   1   1   1   1   1   0   1   0   0   0   0   1   0   1   0   0   0   0   0   0   0   0   0
    1   0   0   0   0   0   0   1   1   0   0   0   1   0   0   0   0   0   1   0   0   0   0   0   0
    1   0   0   0   1   1   1   1   1   1   0   0   0   0   1   0   0   0   1   0   0   0   0   0   1
    0   1   1   1   0   1   0   1   0   0   0   0   1   0   0   1   1   0   0   0   0   0   0   0   0
    0   1   1   0   1   0   1   1   0   1   0   0   0   1   0   0   0   0   1   0   0   0   1   0   1
    0   0   0   0   0   0   0   0   0   0   1   0   0   1   0   1   0   1   0   1   0   0   1   1   0
    0   0   0   0   0   0   0   0   0   0   1   1   0   1   0   0   1   1   0   0   0   1   0   1   0
    0   0   0   0   0   0   0   0   0   0   1   0   1   0   0   0   0   0   0   1   0   0   0   0   1
    0   0   0   0   0   0   0   0   0   0   1   1   1   1   0   0   1   0   1   0   1   0   1   1   0
    0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   0   0   1   0   0   0   1   1   0   0
   0   0   0   0   0   0   0   0   0   0   1   0   0   0   1   0   0   0   1   1   0   0   0   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   0   1   1   0   1   1   1
    0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   1   1   0   1   0   0   0   1   0   0
    0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   1   1   0   0   0   0   0   1   1   0
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   0   1   0   0   0   0   0   1 ];
 AI=A[1:I,1:L];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=A[1:I,L+1:L+J];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=A[I+1:I+L,L+1:L+J];
 #Capacity
 #capacity of input
 


               
 CI=[               222.00
                       32.00
                      281.00
                      205.00
                       94.00
                      150.00
                       78.00
                     234.00
                     233.00
                     280.00
                     288.00
                      93.00
                      23.00
                      49.00
                     226.00
                      12.00
                     237.00
                      34.00
                     281.00
                     199.00 ]; 
 C_I=CI';
        #capacity of pools
        CL=[          90.00
                      59.00
                      78.00
                     123.00
                     111.00
                     103.00
                     134.00
                      53.00
                     174.00
                     133.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[            128.00
                   273.00
                     203.00
                      46.00
                      40.00
                     120.00
                     211.00
                     185.00
                      65.00
                     222.00
                     278.00
                     102.00
                     157.00
                     168.00
                     275.00];
 C_J=CJ';
 #lower ristriction for capacity
 lCL=zeros(1,L);
 lCI=zeros(1,I);
 lCJ=zeros(1,J);

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);

 
 


 # Specification limit
 #Maximum specification
 Mu_max=[    21.12   31.86   34.47   67.59   51.90   66.73   36.46   83.07   90.59   91.77   56.33   25.87   -1.34   -6.70   -5.41   -7.84  -13.14  -18.46   -4.18  -11.83   -8.47   -4.93   -2.01   -8.91
    64.32   94.00   23.43   64.42   49.96   98.07   52.00   92.60   69.49   45.49   41.50   55.34  -14.25   -7.14  -19.17   -7.04   -1.97   -4.60  -15.45   -8.89   -6.86  -10.25   -3.97  -11.97
    72.22   91.98   96.26   36.34   87.39   71.94   89.95   90.92   22.53   32.66   59.47   85.27   -1.58  -16.14   -3.69   -1.44  -15.03  -12.69   -7.41   -4.68  -14.61  -11.92  -14.62  -14.62
    20.08   50.80   74.45   61.36   39.39   95.94   64.83   98.83   43.42   85.67   31.21   94.68   -4.65   -8.73   -9.41  -14.37  -11.07  -10.27  -17.94   -5.25  -14.28  -19.53   -7.93  -13.87
    43.21   32.53   75.13   65.21   81.61   42.86   93.05   58.28   57.96   62.65   76.21   86.96   -1.60  -18.78  -12.00  -18.50   -9.37   -3.78   -1.49  -10.68   -1.72  -19.86  -18.04  -13.28
    91.20   65.41   43.18   26.66   81.75   36.44   54.96   97.43   38.09   38.77   30.11   34.46  -19.80   -4.33   -4.09  -11.59   -8.25   -0.77   -3.77   -7.56  -14.27  -13.50  -13.36   -1.96
    45.29   64.60   73.45   34.38   39.90   38.46   36.57   28.56   32.38   41.34   96.89   82.59   -3.89  -14.91   -1.74   -2.12  -17.49  -14.57  -19.81   -8.08   -4.90  -11.61   -3.66  -16.08
    47.78   29.11   87.65   49.80   84.72   81.76   41.18   45.35   96.11   65.42   28.28   74.49   -5.70   -7.79  -15.34  -18.38  -13.13   -7.54   -1.60  -12.81   -4.79  -15.13  -12.69   -8.05
    53.39   78.40   47.49   35.72   74.86   49.46   37.19   67.62   52.62   26.71   64.16   51.52   -8.64  -14.45   -9.15  -11.38   -1.07   -0.46   -3.71  -19.99   -1.92   -5.21  -11.26   -4.96
    98.69   85.16   74.55   44.41   76.44   36.78   22.71   93.54   58.60   79.49   22.46   23.48  -19.91  -18.78   -4.29   -4.98  -15.94  -12.80   -0.18   -5.35   -9.27   -1.70  -16.28  -13.96
    57.15   38.84   33.09   25.04   85.76   71.30   52.46   44.66   34.51   22.58   94.19   70.89   -7.14  -15.65  -16.84   -0.49   -6.59  -14.94   -2.86   -6.16   -2.10   -6.44  -11.72  -10.67
    34.18   22.58   21.34   36.23   87.72   65.23   99.41   78.31   97.77   43.14   96.39   90.88   -5.87   -7.96   -2.50   -8.13   -1.73  -11.56   -7.54  -18.26  -18.99  -16.11  -19.13  -11.05
    57.61   41.23   52.85   86.47   79.05   38.73   23.44   46.66   94.20   86.24   40.44   60.79   -8.55   -3.32   -7.18   -5.53   -0.30  -11.05   -1.13   -6.02   -4.18   -8.52   -4.63   -6.06
    20.83   53.73   35.88   48.62   65.36   50.71   21.08   38.23   59.11   83.54   39.94   28.87  -16.76   -6.51   -0.29  -10.55   -4.05   -2.96   -4.07  -15.64  -17.37  -13.65   -3.26  -13.48
    55.09   43.52   36.63   43.09   54.14   57.98   41.59   26.97   45.38   93.70   65.36   48.75   -4.15  -14.15  -12.96   -1.15   -4.81   -2.31  -12.78  -19.71  -10.73  -12.13   -8.57   -7.42];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[ 50.28   56.45   73.79   35.11   69.04   62.31    4.08   56.95   35.82    7.07   16.44   52.49  -50.28  -56.45  -73.79  -35.11  -69.04  -62.31   -4.08  -56.95  -35.82   -7.07  -16.44  -52.49
     36.78   56.89   69.33   35.89   45.75    4.08    0.39   39.59   15.11   48.67   45.60   35.95  -36.78  -56.89  -69.33  -35.89  -45.75   -4.08   -0.39  -39.59  -15.11  -48.67  -45.60  -35.95
     15.06   66.64   29.06   45.29   33.56   21.01   69.81   65.61    6.51   71.07   29.31    7.27  -15.06  -66.64  -29.06  -45.29  -33.56  -21.01  -69.81  -65.61   -6.51  -71.07  -29.31   -7.27
     58.59   14.15   14.18    3.73   34.68   66.75   21.72   10.32   73.99   12.93   52.60   18.06  -58.59  -14.15  -14.18   -3.73  -34.68  -66.75  -21.72  -10.32  -73.99  -12.93  -52.60  -18.06
     52.19   34.01   16.89   55.54   26.93   61.98    2.02   32.45   70.74   68.99   26.31   32.01  -52.19  -34.01  -16.89  -55.54  -26.93  -61.98   -2.02  -32.45  -70.74  -68.99  -26.31  -32.01
      9.89   76.51   37.79   53.64   62.99   21.79    0.96    1.41   49.11   58.63   63.36   78.80   -9.89  -76.51  -37.79  -53.64  -62.99  -21.79   -0.96   -1.41  -49.11  -58.63  -63.36  -78.80
     38.57   77.75   27.82   48.38   23.20   14.97   28.05   18.51   26.36   18.53    4.76   53.70  -38.57  -77.75  -27.82  -48.38  -23.20  -14.97  -28.05  -18.51  -26.36  -18.53   -4.76  -53.70
     20.74   78.31   32.44   25.47   26.80   47.96   75.99   14.26   23.73   46.48   19.91   57.33  -20.74  -78.31  -32.44  -25.47  -26.80  -47.96  -75.99  -14.26  -23.73  -46.48  -19.91  -57.33
     42.12   39.34   25.40    3.57   54.19    4.07   63.40   22.87   49.41   54.57   72.29   17.97  -42.12  -39.34  -25.40   -3.57  -54.19   -4.07  -63.40  -22.87  -49.41  -54.57  -72.29  -17.97
     3.87   47.75   40.17   64.00   49.79   41.69   53.54   28.74   42.70   33.41    3.60   11.46   -3.87  -47.75  -40.17  -64.00  -49.79  -41.69  -53.54  -28.74  -42.70  -33.41   -3.60  -11.46
    69.55   16.56    8.92   36.84    9.33   23.57   48.96   60.73    2.44   15.26   70.71    6.60  -69.55  -16.56   -8.92  -36.84   -9.33  -23.57  -48.96  -60.73   -2.44  -15.26  -70.71   -6.60
     7.51   16.06   51.90   45.00   29.40   68.27   16.15   76.79    5.03   59.89   51.15   15.50   -7.51  -16.06  -51.90  -45.00  -29.40  -68.27  -16.15  -76.79   -5.03  -59.89  -51.15  -15.50
    31.08   73.01   71.02   11.59   37.22   52.00   53.53   14.98   39.98   50.96   74.92   21.36  -31.08  -73.01  -71.02  -11.59  -37.22  -52.00  -53.53  -14.98  -39.98  -50.96  -74.92  -21.36
    15.09   38.56   57.54   28.53    3.46   66.32   13.61   52.20    8.27   77.19    2.98   36.57  -15.09  -38.56  -57.54  -28.53   -3.46  -66.32  -13.61  -52.20   -8.27  -77.19   -2.98  -36.57
    25.12   57.25   70.90   55.46   56.12   51.22   37.44   77.88   61.65   27.06   32.58    2.81  -25.12  -57.25  -70.90  -55.46  -56.12  -51.22  -37.44  -77.88  -61.65  -27.06  -32.58   -2.81
    15.67   25.20   26.68   56.52   53.52   61.43    6.85   69.17   42.71   70.40   24.25   54.53  -15.67  -25.20  -26.68  -56.52  -53.52  -61.43   -6.85  -69.17  -42.71  -70.40  -24.25  -54.53
    62.17   39.27   50.84   65.75   63.16   12.18   56.85   63.02   53.08   48.32   49.66   66.85  -62.17  -39.27  -50.84  -65.75  -63.16  -12.18  -56.85  -63.02  -53.08  -48.32  -49.66  -66.85
    24.36   15.51   75.46   37.35   22.97    3.40   44.55   38.90   61.59   13.30   68.11   58.22  -24.36  -15.51  -75.46  -37.35  -22.97   -3.40  -44.55  -38.90  -61.59  -13.30  -68.11  -58.22
    21.45   73.54   28.75   27.03   12.77   11.54   48.87   58.07   21.10   15.89   64.56    4.02  -21.45  -73.54  -28.75  -27.03  -12.77  -11.54  -48.87  -58.07  -21.10  -15.89  -64.56   -4.02
     4.92   38.27    8.58   13.42   26.95   28.06   22.31   78.14   38.65   18.40   56.32   66.77   -4.92  -38.27   -8.58  -13.42  -26.95  -28.06  -22.31  -78.14  -38.65  -18.40  -56.32  -66.77];

 #costs
         C=[ 
            29.00    0.00   29.00    0.00    0.00    0.00   29.00   29.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -13.00    0.00    0.00    0.00  -17.00    0.00  -16.00  -19.00    0.00
      0.00    0.00    0.00    0.00   12.00   12.00    0.00   12.00   12.00   12.00  -35.00  -29.00    0.00    0.00    0.00    0.00    0.00    0.00  -35.00    0.00    0.00    0.00    0.00    0.00    0.00
      0.00   44.00    0.00   44.00   44.00   44.00    0.00    0.00   44.00    0.00    0.00    0.00   -1.00    1.00   -6.00    0.00    2.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     16.00    0.00   16.00    0.00    0.00    0.00   16.00    0.00    0.00   16.00    0.00    0.00  -29.00  -27.00    0.00    0.00    0.00    0.00    0.00  -26.00    0.00    0.00    0.00  -32.00    0.00
      0.00   29.00   29.00   29.00   29.00   29.00    0.00   29.00    0.00   29.00    0.00    0.00    0.00    0.00    0.00  -11.00    0.00    0.00    0.00  -13.00  -17.00    0.00    0.00  -19.00  -15.00
      0.00    0.00    0.00    0.00    0.00   27.00    0.00    0.00   27.00    0.00    0.00    0.00  -18.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -19.00  -20.00    0.00    0.00    0.00
     20.00   20.00   20.00   20.00   20.00   20.00   20.00    0.00    0.00    0.00    0.00  -21.00    0.00    0.00    0.00    0.00  -22.00  -24.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     25.00    0.00   25.00   25.00   25.00    0.00   25.00   25.00   25.00    0.00    0.00    0.00  -20.00    0.00  -25.00    0.00    0.00  -19.00  -22.00    0.00    0.00  -22.00    0.00    0.00  -19.00
      0.00   17.00   17.00   17.00   17.00   17.00   17.00    0.00   17.00   17.00    0.00    0.00    0.00    0.00  -33.00    0.00  -25.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -27.00
     0.00   30.00    0.00    0.00    0.00   30.00    0.00   30.00   30.00   30.00    0.00    0.00  -15.00    0.00    0.00    0.00    0.00    0.00    0.00  -12.00    0.00    0.00  -15.00    0.00    0.00
     0.00   10.00   10.00   10.00    0.00   10.00   10.00    0.00   10.00   10.00    0.00  -31.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -32.00  -36.00    0.00  -35.00    0.00  -34.00
     0.00    0.00   41.00    0.00    0.00   41.00   41.00   41.00   41.00   41.00   -6.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -5.00    0.00    0.00    0.00    0.00
    31.00   31.00    0.00   31.00   31.00    0.00    0.00   31.00    0.00    0.00    0.00  -10.00  -14.00    0.00  -19.00    0.00  -11.00    0.00    0.00    0.00  -15.00    0.00    0.00  -17.00    0.00
    48.00   48.00    0.00   48.00   48.00   48.00   48.00    0.00   48.00   48.00    0.00    0.00    0.00    0.00   -2.00    0.00    0.00    0.00    0.00    6.00    2.00    0.00    0.00    0.00    4.00
     0.00   42.00    0.00   42.00    0.00    0.00   42.00    0.00    0.00   42.00    0.00    1.00    0.00   -1.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00   36.00   36.00   36.00   36.00   36.00    0.00   36.00    0.00    0.00    0.00    0.00   -7.00    0.00   -4.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
    23.00    0.00    0.00    0.00    0.00    0.00    0.00   23.00   23.00    0.00    0.00    0.00  -22.00    0.00    0.00    0.00    0.00    0.00  -24.00    0.00    0.00    0.00    0.00    0.00    0.00
    26.00    0.00    0.00    0.00   26.00   26.00   26.00   26.00   26.00   26.00    0.00    0.00    0.00    0.00  -24.00    0.00    0.00    0.00  -21.00    0.00    0.00    0.00    0.00    0.00  -18.00
     0.00   37.00   37.00   37.00    0.00   37.00    0.00   37.00    0.00    0.00    0.00    0.00   -8.00    0.00    0.00   -3.00   -5.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00   42.00   42.00    0.00   42.00    0.00   42.00   42.00    0.00   42.00    0.00    0.00    0.00   -1.00    0.00    0.00    0.00    0.00   -5.00    0.00    0.00    0.00   -3.00    0.00   -2.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -47.00    0.00    0.00  -43.00    0.00  -40.00    0.00  -44.00    0.00  -42.00    0.00    0.00  -45.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -47.00  -41.00    0.00  -43.00    0.00    0.00  -42.00  -44.00    0.00    0.00    0.00  -47.00    0.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -47.00    0.00  -45.00    0.00    0.00    0.00    0.00    0.00    0.00  -42.00    0.00    0.00    0.00    0.00  -44.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -47.00  -41.00  -45.00  -43.00    0.00    0.00  -42.00    0.00  -47.00    0.00  -46.00    0.00  -45.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00  -45.00  -43.00  -50.00    0.00    0.00  -44.00    0.00    0.00    0.00  -47.00  -45.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -47.00    0.00    0.00    0.00  -50.00    0.00    0.00    0.00  -47.00  -42.00    0.00    0.00    0.00    0.00  -44.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -43.00  -50.00  -40.00  -42.00  -44.00    0.00  -42.00  -46.00    0.00  -45.00  -48.00  -44.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -45.00  -43.00    0.00  -40.00  -42.00    0.00  -47.00    0.00    0.00    0.00  -45.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -45.00  -43.00    0.00  -40.00  -42.00    0.00    0.00    0.00    0.00    0.00  -45.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -50.00  -40.00  -42.00    0.00  -47.00    0.00    0.00    0.00    0.00    0.00  -44.00  ];
 costI=C[1:I,1:L];
 costJ=C[1:I,L+1:L+J ];

 costL=C[ I+1:I+L, L+1:L+J];
 Demandcost=zeros(J,1);

 print_with_color(:yellow,"Data was read.\n")

    return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end
function sppA5()
    K=24; #Number of specifications
 I=20; # Number of Inputs
 L=10;# Number of Pools
 J=15; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 A=[   1   0   1   1   1   1   0   0   0   1   0   0   0   0   1   0   1   0   1   0   0   0   1   0   0
     0   1   0   1   0   1   1   0   1   0   0   1   0   1   0   0   0   0   0   1   1   0   0   0   0
     1   1   1   0   1   1   0   0   1   1   1   0   0   0   0   1   1   0   0   0   0   0   0   1   1
     0   1   1   0   1   0   1   1   1   1   1   0   0   1   0   0   0   1   0   0   0   0   0   0   0
     1   1   1   0   0   1   1   0   0   0   0   0   1   0   0   0   0   0   0   1   1   0   0   0   1
     1   0   0   0   1   1   1   1   1   1   0   0   0   0   0   0   1   1   0   0   0   0   1   1   1
     1   1   1   0   1   0   0   1   0   1   1   0   0   0   0   0   0   0   0   0   1   0   1   0   0
     1   1   1   1   0   1   1   1   0   1   0   0   1   0   1   0   1   1   0   0   0   0   0   0   0
     0   1   1   0   1   1   0   1   1   1   0   0   1   0   0   0   0   0   0   0   1   1   0   0   0
    0   1   1   1   1   1   1   1   0   1   0   0   0   1   0   0   0   0   1   0   0   0   0   0   0
    1   0   0   1   1   0   0   1   0   1   1   1   1   0   1   0   1   0   0   0   0   0   0   1   1
    0   0   1   1   1   1   1   0   0   0   1   0   1   0   1   0   0   0   0   0   0   0   1   1   0
    1   1   1   0   0   1   1   0   0   0   1   0   0   0   0   0   1   1   1   0   0   0   0   0   0
    1   1   0   0   1   1   0   1   0   1   0   1   0   0   0   0   1   0   0   1   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   1   1   0   0   0   0   0   0   0   0   0   1   1   1   0   1
    1   1   0   1   0   0   0   0   1   0   0   0   1   1   0   1   0   0   0   0   0   0   0   0   0
    0   0   0   1   0   1   0   1   1   1   0   0   0   0   0   1   0   0   0   0   1   0   1   1   1
    0   1   0   0   0   1   0   0   1   1   1   0   0   0   1   0   0   0   0   0   0   0   0   0   1
    1   1   0   1   0   1   0   0   1   0   1   1   0   1   0   0   1   0   1   0   0   0   0   1   0
    1   0   0   1   0   0   0   1   0   1   0   0   0   1   0   0   0   0   0   0   1   0   1   0   0
    0   0   0   0   0   0   0   0   0   0   1   1   0   0   1   1   1   1   0   0   0   1   0   1   0
    0   0   0   0   0   0   0   0   0   0   1   1   0   1   0   0   0   1   1   1   1   0   1   1   1
    0   0   0   0   0   0   0   0   0   0   1   1   0   1   0   1   1   0   0   1   1   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   1   0   0   1   0   0   1   1   1   0   0   1   1   1   1
    0   0   0   0   0   0   0   0   0   0   1   1   0   0   0   0   1   0   0   1   1   1   0   0   1
    0   0   0   0   0   0   0   0   0   0   1   1   1   0   1   1   0   0   1   0   1   0   1   0   1
    0   0   0   0   0   0   0   0   0   0   1   0   0   1   0   1   1   0   0   0   1   1   1   1   0
    0   0   0   0   0   0   0   0   0   0   1   0   0   1   1   1   0   1   1   0   0   1   1   1   1
    0   0   0   0   0   0   0   0   0   0   0   1   0   1   0   0   0   0   0   1   0   1   1   1   0
    0   0   0   0   0   0   0   0   0   0   1   1   1   0   1   1   1   1   0   1   0   1   1   1   1 ];
 AI=A[1:I,1:L];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=A[1:I,L+1:L+J];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=A[I+1:I+L,L+1:L+J];
 #Capacity
 #capacity of input
 


               
 CI=[                 102.00
                       50.00
                       24.00
                      172.00
                      304.00
                       91.00
                       64.00
                      33.00
                      294.00
                     163.00
                     213.00
                     219.00
                     276.00
                     142.00
                     242.00
                     214.00
                     220.00
                     214.00
                      11.00
                      57.00]; 
 C_I=CI';
        #capacity of pools
        CL=[              95.00
                      80.00
                      69.00
                     189.00
                     124.00
                    179.00
                      55.00
                     170.00
                     139.00
                     111.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[               244.00
                     190.00
                     176.00
                      34.00
                     105.00
                     177.00
                     110.00
                      20.00
                     131.00
                     200.00
                     136.00
                     126.00
                     135.00
                     178.00
                     150.00 ];
 C_J=CJ';
 #lower ristriction for capacity
 lCL=zeros(1,L);
 lCI=zeros(1,I);
 lCJ=zeros(1,J);

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);

 
 


 # Specification limit
 #Maximum specification
 Mu_max=[  35.45   28.51   62.24   83.17   59.95   84.41   40.52   28.99   82.47   54.45   82.64   27.64   -0.52   -0.21   -0.40   -6.00  -16.14  -15.34  -17.65   -5.60  -12.04   -4.13  -17.52  -12.79
    58.69   38.46   21.33   36.07   53.67   33.74   67.90   75.66   36.49   98.64   94.00   66.28  -19.55   -6.27  -14.32   -8.46   -3.93  -18.11  -13.68   -0.28  -14.71  -10.81   -2.97  -19.46
    24.19   76.04   27.79   92.98   25.48   91.30   39.81   79.12   27.97   96.79   32.46   73.24  -17.58   -5.22   -6.63  -11.07  -10.47  -18.70  -14.29   -2.55   -9.09  -15.63  -12.93   -3.49
    70.81   97.79   60.77   91.24   69.11   84.44   88.86   27.09   88.71   26.97   43.36   52.57   -0.88  -10.32   -0.70  -18.59   -4.27   -3.69  -11.31   -9.44   -9.37   -0.26   -3.06  -19.77
    84.48   92.08   82.30   46.50   65.98   23.75   24.10   49.19   87.87   50.23   70.43   26.96   -2.60  -13.59   -5.00   -4.03  -12.45   -5.87   -1.54  -16.33  -14.47  -14.43  -14.46   -1.83
    65.37   50.59   48.95   99.74   87.35   48.49   84.34   73.69   58.31   80.75   91.27   76.79   -5.73  -14.23  -11.70  -18.27  -13.45  -16.08  -12.95  -11.72   -6.28   -5.16   -4.68  -16.94
    20.53   46.89   49.80   24.60   56.63   46.76   38.52   92.64   59.03   53.45   94.03   31.47  -15.97  -19.38  -17.49  -14.58   -0.23  -12.06  -16.56  -19.25   -4.37   -6.26   -4.66  -16.39
    76.81   34.43   55.81   38.70   71.35   42.58   67.05   72.07   25.32   42.09   84.76   20.44   -2.10   -7.65   -5.83   -0.64   -6.10  -18.56  -16.85  -13.00  -13.21   -7.86   -0.51   -2.22
    44.89   89.95   23.51   59.92   40.58   56.84   79.05   64.85   51.11   82.27   39.99   34.63  -12.03   -7.86  -18.43   -2.25  -10.72  -12.88   -6.75   -1.83  -19.53   -2.89  -12.92  -14.09
    87.27   34.01   53.35   94.96   93.73   46.48   84.35   74.53   70.55   82.81   90.35   86.07   -5.73  -12.01   -9.09  -19.60   -2.45  -15.96   -2.75   -0.09  -19.31   -6.35  -19.66  -13.98
    28.76   70.72   68.04   74.82   22.74   80.97   70.85   20.88   85.79   80.52   58.61   58.05  -19.32  -15.25   -1.22   -9.87  -18.63  -11.66   -7.80   -6.37  -13.56   -6.15  -12.54   -4.08
    92.33   22.77   24.86   65.86   73.70   66.48   29.11   70.29   54.68   49.38   87.09   98.59  -11.83  -12.79   -5.11  -19.16  -15.08  -11.13   -0.57  -10.76   -0.01  -10.55  -11.45   -5.30
    39.86   95.68   32.51   85.03   26.50   77.68   77.91   86.20   90.51   97.21   33.50   48.24   -1.31  -15.70   -9.14   -5.37   -7.38  -11.98   -6.84   -5.51  -17.49  -15.06  -17.93   -3.46
    80.33   32.66   81.44   47.34   30.91   72.80   46.64   91.84   43.16   21.05   95.26   25.14  -16.47   -5.96   -1.59  -13.73  -11.12  -15.67  -16.30  -19.14   -4.45  -17.35  -12.01   -0.88
    47.47   46.79   38.97   59.18   82.69   77.69   81.64   96.71   69.97   55.56   56.85   64.91   -3.30  -14.31  -14.86   -2.85   -8.53   -5.09  -13.06   -2.36   -1.23  -17.74   -9.41   -7.36];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[ 77.35    4.92   35.36   64.17   25.43    4.42   12.84   28.66   16.48   79.91    6.98   15.94  -77.35   -4.92  -35.36  -64.17  -25.43   -4.42  -12.84  -28.66  -16.48  -79.91   -6.98  -15.94
     76.93   43.94   34.11   12.25   60.28   60.55   32.05   25.61   11.65   59.70   61.09   45.45  -76.93  -43.94  -34.11  -12.25  -60.28  -60.55  -32.05  -25.61  -11.65  -59.70  -61.09  -45.45
     71.51   49.85   22.00   49.47   72.62    9.19   23.99   72.27   68.61   54.50   65.43   28.24  -71.51  -49.85  -22.00  -49.47  -72.62   -9.19  -23.99  -72.27  -68.61  -54.50  -65.43  -28.24
     43.79   58.87   76.79   21.35   67.20   79.49   50.85   23.56   64.77   55.26    8.93   65.94  -43.79  -58.87  -76.79  -21.35  -67.20  -79.49  -50.85  -23.56  -64.77  -55.26   -8.93  -65.94
     40.05   67.43   29.06   31.64   43.26   59.64   25.18   75.23   12.47   33.59   31.64    9.00  -40.05  -67.43  -29.06  -31.64  -43.26  -59.64  -25.18  -75.23  -12.47  -33.59  -31.64   -9.00
    27.82   51.60   20.76   65.43    4.49   77.00   51.97   37.82   54.73   47.61   55.75   72.81  -27.82  -51.60  -20.76  -65.43   -4.49  -77.00  -51.97  -37.82  -54.73  -47.61  -55.75  -72.81
     78.87   39.98   78.41   13.55   65.94   63.76   22.02   27.43   73.45    2.89   44.32   74.90  -78.87  -39.98  -78.41  -13.55  -65.94  -63.76  -22.02  -27.43  -73.45   -2.89  -44.32  -74.90
     31.44   17.82   57.28   64.73   48.66   17.84    7.89   16.48   37.60   13.49   55.31   73.96  -31.44  -17.82  -57.28  -64.73  -48.66  -17.84   -7.89  -16.48  -37.60  -13.49  -55.31  -73.96
     66.01   24.57   34.83   46.94   64.29   41.06    7.70   65.79   30.22   33.71    9.96    0.53  -66.01  -24.57  -34.83  -46.94  -64.29  -41.06   -7.70  -65.79  -30.22  -33.71   -9.96   -0.53
    27.01    1.22   12.03   68.19   17.85    6.96   29.17   37.54    6.14   35.07   72.63   48.10  -27.01   -1.22  -12.03  -68.19  -17.85   -6.96  -29.17  -37.54   -6.14  -35.07  -72.63  -48.10
    57.28   10.76   41.11   19.18   24.25   61.11   24.38    8.11   39.74    9.56   58.22   75.11  -57.28  -10.76  -41.11  -19.18  -24.25  -61.11  -24.38   -8.11  -39.74   -9.56  -58.22  -75.11
    23.05   21.04   66.83    0.93   48.43   56.50   19.87   36.82   75.47   59.10   24.67   60.81  -23.05  -21.04  -66.83   -0.93  -48.43  -56.50  -19.87  -36.82  -75.47  -59.10  -24.67  -60.81
    12.31   34.11   65.42   67.57   23.93   65.72   72.52   10.11   23.72   54.25   43.28   19.96  -12.31  -34.11  -65.42  -67.57  -23.93  -65.72  -72.52  -10.11  -23.72  -54.25  -43.28  -19.96
    24.85   64.10   76.15   40.16   23.49   66.23   22.11   74.35   20.12    9.38   28.62    9.77  -24.85  -64.10  -76.15  -40.16  -23.49  -66.23  -22.11  -74.35  -20.12   -9.38  -28.62   -9.77
    14.62   63.81   23.41   56.97   69.79   22.89   59.29   70.82   75.25   46.38   40.05   63.46  -14.62  -63.81  -23.41  -56.97  -69.79  -22.89  -59.29  -70.82  -75.25  -46.38  -40.05  -63.46
    46.59   60.09   45.09   79.26    4.10   56.47    3.12   64.42   10.90   68.72   37.62   41.27  -46.59  -60.09  -45.09  -79.26   -4.10  -56.47   -3.12  -64.42  -10.90  -68.72  -37.62  -41.27
     6.13   65.28   30.12    1.45   56.23   74.38   16.33   18.00   13.39    9.77   29.99   17.65   -6.13  -65.28  -30.12   -1.45  -56.23  -74.38  -16.33  -18.00  -13.39   -9.77  -29.99  -17.65
    58.50   14.24    7.16   28.73   36.27   59.35   76.31   24.08   58.75    4.89    7.66   71.18  -58.50  -14.24   -7.16  -28.73  -36.27  -59.35  -76.31  -24.08  -58.75   -4.89   -7.66  -71.18
    71.82   47.30    7.58   63.48   76.92   38.88   73.61   58.80   41.36   61.21   74.00   55.55  -71.82  -47.30   -7.58  -63.48  -76.92  -38.88  -73.61  -58.80  -41.36  -61.21  -74.00  -55.55
    75.94   15.06   29.15   59.02   66.47    8.91   43.05   52.84    8.43   40.97   41.17   62.51  -75.94  -15.06  -29.15  -59.02  -66.47   -8.91  -43.05  -52.84   -8.43  -40.97  -41.17  -62.51];

 #costs
         C=[ 
      21.00    0.00   21.00   21.00   21.00   21.00    0.00    0.00    0.00   21.00    0.00    0.00    0.00    0.00  -29.00    0.00  -23.00    0.00  -21.00    0.00    0.00    0.00  -23.00    0.00    0.00
      0.00   22.00    0.00   22.00    0.00   22.00   22.00    0.00   22.00    0.00    0.00  -19.00    0.00  -28.00    0.00    0.00    0.00    0.00    0.00  -21.00  -23.00    0.00    0.00    0.00    0.00
     49.00   49.00   49.00    0.00   49.00   49.00    0.00    0.00   49.00   49.00    1.00    0.00    0.00    0.00    0.00    5.00    5.00    0.00    0.00    0.00    0.00    0.00    0.00    1.00    2.00
      0.00   32.00   32.00    0.00   32.00    0.00   32.00   32.00   32.00   32.00  -16.00    0.00    0.00  -18.00    0.00    0.00    0.00  -17.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     40.00   40.00   40.00    0.00    0.00   40.00   40.00    0.00    0.00    0.00    0.00    0.00   -1.00    0.00    0.00    0.00    0.00    0.00    0.00   -3.00   -5.00    0.00    0.00    0.00   -7.00
     16.00    0.00    0.00    0.00   16.00   16.00   16.00   16.00   16.00   16.00    0.00    0.00    0.00    0.00    0.00    0.00  -28.00  -33.00    0.00    0.00    0.00    0.00  -28.00  -32.00  -31.00
     22.00   22.00   22.00    0.00   22.00    0.00    0.00   22.00    0.00   22.00  -26.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -23.00    0.00  -22.00    0.00    0.00
     31.00   31.00   31.00   31.00    0.00   31.00   31.00   31.00    0.00   31.00    0.00    0.00  -10.00    0.00  -19.00    0.00  -13.00  -18.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
      0.00   19.00   19.00    0.00   19.00   19.00    0.00   19.00   19.00   19.00    0.00    0.00  -22.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -26.00  -30.00    0.00    0.00    0.00
     0.00   44.00   44.00   44.00   44.00   44.00   44.00   44.00    0.00   44.00    0.00    0.00    0.00   -6.00    0.00    0.00    0.00    0.00    2.00    0.00    0.00    0.00    0.00    0.00    0.00
    46.00    0.00    0.00   46.00   46.00    0.00    0.00   46.00    0.00   46.00   -2.00    5.00    5.00    0.00   -4.00    0.00    2.00    0.00    0.00    0.00    0.00    0.00    0.00   -2.00   -1.00
     0.00    0.00   26.00   26.00   26.00   26.00   26.00    0.00    0.00    0.00  -22.00    0.00  -15.00    0.00  -24.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -18.00  -22.00    0.00
    32.00   32.00   32.00    0.00    0.00   32.00   32.00    0.00    0.00    0.00  -16.00    0.00    0.00    0.00    0.00    0.00  -12.00  -17.00  -10.00    0.00    0.00    0.00    0.00    0.00    0.00
    31.00   31.00    0.00    0.00   31.00   31.00    0.00   31.00    0.00   31.00    0.00  -10.00    0.00    0.00    0.00    0.00  -13.00    0.00    0.00  -12.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   38.00  -10.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -7.00  -11.00   -6.00    0.00   -9.00
    42.00   42.00    0.00   42.00    0.00    0.00    0.00    0.00   42.00    0.00    0.00    0.00    1.00   -8.00    0.00   -2.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00   33.00    0.00   33.00    0.00   33.00   33.00   33.00    0.00    0.00    0.00    0.00    0.00  -11.00    0.00    0.00    0.00    0.00  -12.00    0.00  -11.00  -15.00  -14.00
     0.00   35.00    0.00    0.00    0.00   35.00    0.00    0.00   35.00   35.00  -13.00    0.00    0.00    0.00  -15.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -12.00
    17.00   17.00    0.00   17.00    0.00   17.00    0.00    0.00   17.00    0.00  -31.00  -24.00    0.00  -33.00    0.00    0.00  -27.00    0.00  -25.00    0.00    0.00    0.00    0.00  -31.00    0.00
    40.00    0.00    0.00   40.00    0.00    0.00    0.00   40.00    0.00   40.00    0.00    0.00    0.00  -10.00    0.00    0.00    0.00    0.00    0.00    0.00   -5.00    0.00   -4.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00    0.00    0.00  -50.00  -44.00  -44.00  -49.00    0.00    0.00    0.00  -49.00    0.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00    0.00  -50.00    0.00    0.00    0.00  -49.00  -42.00  -43.00  -45.00    0.00  -44.00  -48.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00    0.00  -50.00    0.00  -44.00  -44.00    0.00    0.00  -43.00  -45.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00  -50.00    0.00    0.00  -44.00  -49.00  -42.00    0.00    0.00  -49.00  -44.00  -48.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00    0.00    0.00    0.00    0.00  -44.00    0.00    0.00  -43.00  -45.00  -49.00    0.00    0.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00  -41.00    0.00  -50.00  -44.00    0.00    0.00  -42.00    0.00  -45.00    0.00  -44.00    0.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00  -50.00    0.00  -44.00  -44.00    0.00    0.00    0.00  -45.00  -49.00  -44.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00  -50.00  -50.00  -44.00    0.00  -49.00  -42.00    0.00    0.00  -49.00  -44.00  -48.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00  -50.00    0.00    0.00    0.00    0.00    0.00  -43.00    0.00  -49.00  -44.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00  -41.00    0.00  -50.00  -44.00  -44.00  -49.00    0.00  -43.00    0.00  -49.00  -44.00  -48.00  -47.00];
 costI=C[1:I,1:L];
 costJ=C[1:I,L+1:L+J ];

 costL=C[ I+1:I+L, L+1:L+J];
 Demandcost=zeros(J,1);

 print_with_color(:yellow,"Data was read.\n")

    return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end

function sppA6()
    K=24; #Number of specifications
 I=20; # Number of Inputs
 L=10;# Number of Pools
 J=15; # Number of Outputs

 # Defining problems' flowchart
 #Adjacent Matrix for Bipartite Graph I=L inputs to pools
 A=[ 0   0   1   1   1   1   1   1   1   1   0   0   0   0   0   0   0   0   1   0   0   0   1   0   0
     0   0   1   0   0   0   0   1   1   0   0   0   0   0   0   0   1   0   0   0   0   1   0   0   1
     1   1   1   1   1   0   0   0   0   0   0   0   1   1   1   0   1   0   0   0   0   0   0   0   0
     1   0   1   1   0   0   0   1   1   1   0   1   0   0   1   0   1   1   0   0   0   0   0   0   1
     1   0   1   0   1   0   0   0   0   0   0   1   0   0   1   0   0   1   0   1   1   1   0   1   0
     1   0   1   1   1   1   0   1   0   1   0   1   0   0   1   0   0   1   0   0   0   0   1   0   0
     1   0   1   1   1   1   0   0   0   1   1   0   0   0   0   1   0   1   0   1   0   0   0   1   0
     0   1   1   0   1   1   0   1   1   0   0   1   0   0   1   0   0   0   0   0   0   0   0   1   1
     1   0   0   1   0   0   1   1   1   1   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    0   1   1   0   1   0   0   1   1   1   0   0   0   0   0   0   0   1   1   0   0   1   0   0   0
    0   1   1   0   1   0   1   1   0   1   0   0   0   0   0   1   0   0   0   0   1   0   1   0   0
    1   0   1   1   0   1   1   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   0   0   0
    0   0   0   1   1   1   0   0   1   1   0   0   1   1   0   1   0   0   0   1   0   1   0   0   0
    1   1   1   0   1   0   1   1   0   0   1   0   0   1   0   0   0   0   0   0   1   0   0   0   1
    1   1   0   1   0   1   1   0   1   1   0   0   0   0   0   0   1   1   1   1   0   0   0   0   0
    1   1   1   1   0   1   1   1   0   1   0   0   0   0   1   0   1   1   1   0   1   0   0   0   1
    1   1   1   0   0   1   1   1   1   1   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0
    0   0   1   0   1   0   1   0   1   0   0   1   0   0   1   1   1   0   0   0   0   0   0   1   0
    1   1   1   0   1   0   0   1   1   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0
    1   1   1   1   1   0   1   1   1   1   1   0   0   0   0   0   1   1   0   0   0   0   0   0   0
    0   0   0   0   0   0   0   0   0   0   1   0   1   1   1   0   1   1   1   1   0   0   1   1   0
    0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   0   1   1   0   0   1   1
    0   0   0   0   0   0   0   0   0   0   1   0   1   0   1   0   0   1   1   1   1   1   1   1   1
    0   0   0   0   0   0   0   0   0   0   1   0   1   0   1   0   1   1   1   1   1   0   0   0   1
    0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   0   1   0   1   0   1   0   1   1   0
    0   0   0   0   0   0   0   0   0   0   0   1   1   0   1   0   0   0   0   1   1   1   0   0   0
    0   0   0   0   0   0   0   0   0   0   0   1   0   1   0   1   1   0   1   0   1   1   1   1   0
    0   0   0   0   0   0   0   0   0   0   1   0   0   1   1   0   1   1   1   0   1   1   0   0   1
    0   0   0   0   0   0   0   0   0   0   1   0   0   0   1   1   1   0   1   0   0   0   0   1   1
    0   0   0   0   0   0   0   0   0   0   1   1   1   0   1   1   1   1   0   1   0   0   0   0   1];
 AI=A[1:I,1:L];
 #Adjacent Matrix for Bipartite Graph I=J inputs to outputs
 AJ=A[1:I,L+1:L+J];

 #Adjacent Matrix for Bipartite Graph L=J pools to outputs];
 AL=A[I+1:I+L,L+1:L+J];
 #Capacity
 #capacity of input
 


               
 CI=[             285.00
                      255.00
                       63.00
                      140.00
                      197.00
                      121.00
                       64.00
                      219.00
                      302.00
                     215.00
                     285.00
                     242.00
                     220.00
                      33.00
                     108.00
                     234.00
                      30.00
                      62.00
                      63.00
                     233.00]; 
 C_I=CI';
        #capacity of pools
        CL=[                 87.00
                      98.00
                     183.00
                      88.00
                     131.00
                     184.00
                     144.00
                      75.00
                      81.00
                     152.00];
 C_L=CL'; 
 #capacity of outputs
 CJ=[                 21.00
                     138.00
                      25.00
                      83.00
                     251.00
                     284.00
                      73.00
                     164.00
                     145.00
                      74.00
                     224.00
                     169.00
                       9.00
                      85.00
                     262.00 ];
 C_J=CJ';
 #lower ristriction for capacity
 lCL=zeros(1,L);
 lCI=zeros(1,I);
 lCJ=zeros(1,J);

 #Flowrate limitation
 #maximum for flows from input to pool
 UI=Inf*ones(I,L);
 UJ=Inf*ones(I,J);
 UL=Inf*ones(L,J);

 
 


 # Specification limit
 #Maximum specification
 Mu_max=[   45.26   58.46   91.04   29.15   91.19   44.60   30.38   77.26   74.98   70.30   71.80   66.70  -12.29   -1.36   -0.80   -7.57  -11.47   -9.31  -15.84  -14.30   -3.80   -0.24   -0.44   -6.87
   27.51   94.99   90.49   56.74   83.19   56.57   99.58   56.46   38.20   81.61   66.64   25.82  -11.36  -13.00  -10.11   -3.32   -2.62  -16.40  -16.40   -4.00  -18.33   -2.69  -18.04  -13.06
    25.63   83.97   60.84   95.09   54.27   77.28   48.23   39.12   23.36   48.55   71.35   33.94   -0.33   -7.62   -9.49   -0.69   -7.62  -19.34   -5.42   -4.02   -2.09  -13.56  -12.33   -5.06
    82.27   41.50   67.77   56.76   72.05   67.28   49.00   70.96   49.31   82.90   83.16   40.06   -8.19  -15.20  -16.40  -10.96   -8.17  -18.81   -3.24   -9.01   -0.78   -0.75  -15.32   -0.28
    44.65   24.33   43.89   26.81   24.99   20.18   42.87   32.95   76.00   56.69   48.37   92.02  -16.59   -1.77  -12.79   -4.89   -9.63  -14.16   -1.95  -12.96  -19.66   -6.14   -1.49   -3.44
    28.25   85.39   58.98   41.31   74.57   97.61   37.40   43.65   89.65   28.35   36.33   65.79  -13.99   -6.67  -11.34  -12.14  -16.13   -6.12   -6.23  -16.62  -11.26  -16.73   -7.85  -13.59
    35.83   72.63   28.80   24.61   55.45   78.72   82.42   69.41   33.09   82.03   85.70   35.47   -7.67   -6.46  -14.97  -11.03  -16.79  -11.23  -13.92   -7.24  -13.36   -4.27  -14.68   -0.17
    67.32   42.14   50.79   49.22   76.04   64.48   48.00   28.51   92.15   89.52   92.01   52.19   -7.34   -2.99  -18.56  -18.36  -19.19   -0.45   -5.76   -7.16   -4.70  -10.39   -7.93   -8.23
    93.82   60.87   56.98   75.04   69.30   63.76   99.63   48.70   78.45   83.27   27.08   22.24   -0.92   -5.98   -7.75  -13.49  -14.11   -7.14  -10.98  -15.66  -18.08   -0.33  -15.68  -13.85
    67.94   95.51   44.66   52.61   76.30   23.23   80.85   41.98   65.00   69.82   30.53   75.15  -18.09  -18.03  -16.68  -13.29  -14.55   -7.74   -4.31   -2.31   -0.24  -10.04  -16.56  -15.52
    39.24   44.49   38.24   64.20   44.80   58.18   71.60   60.54   63.78   99.36   98.25   78.79  -16.74   -0.68  -18.21   -0.97  -16.34   -7.04  -15.69   -8.41  -14.50  -19.43   -9.76   -8.46
    44.21   65.22   61.68   34.49   95.87   64.18   71.08   44.91   42.48   57.37   75.24   62.49  -19.90   -1.41  -18.66  -16.44   -1.51  -11.46  -14.26  -12.98   -8.30   -5.85  -13.31  -15.39
    40.27   68.10   30.86   63.15   23.04   80.41   32.19   22.76   67.91   50.90   24.17   65.76   -2.37   -5.06   -1.61   -1.90   -2.11   -4.75   -4.09   -6.71   -1.50  -18.09  -17.21   -8.70
    74.62   55.67   98.52   89.82   41.14   29.11   86.43   41.90   92.35   49.82   28.25   37.42   -5.01   -6.28   -9.43   -4.28  -15.60   -4.35   -1.58   -6.41  -14.65   -3.18  -13.25  -11.54
    55.83   56.43   48.36   99.48   84.37   40.34   98.33   45.66   91.19   72.78   96.73   71.89  -15.64  -17.69  -17.54   -6.77   -5.80   -3.33   -9.13   -4.29   -7.08   -7.33  -16.68  -14.16 ];
 # Minimum specification
 Mu_min=-Inf*ones(J,K);
    #specification in inputs. It should has "I" rows and "K" columns.
 Lambda=[ 77.35    4.92   35.36   64.17   25.43    4.42   12.84   28.66   16.48   79.91    6.98   15.94  -77.35   -4.92  -35.36  -64.17  -25.43   -4.42  -12.84  -28.66  -16.48  -79.91   -6.98  -15.94
     76.93   43.94   34.11   12.25   60.28   60.55   32.05   25.61   11.65   59.70   61.09   45.45  -76.93  -43.94  -34.11  -12.25  -60.28  -60.55  -32.05  -25.61  -11.65  -59.70  -61.09  -45.45
     71.51   49.85   22.00   49.47   72.62    9.19   23.99   72.27   68.61   54.50   65.43   28.24  -71.51  -49.85  -22.00  -49.47  -72.62   -9.19  -23.99  -72.27  -68.61  -54.50  -65.43  -28.24
     43.79   58.87   76.79   21.35   67.20   79.49   50.85   23.56   64.77   55.26    8.93   65.94  -43.79  -58.87  -76.79  -21.35  -67.20  -79.49  -50.85  -23.56  -64.77  -55.26   -8.93  -65.94
     40.05   67.43   29.06   31.64   43.26   59.64   25.18   75.23   12.47   33.59   31.64    9.00  -40.05  -67.43  -29.06  -31.64  -43.26  -59.64  -25.18  -75.23  -12.47  -33.59  -31.64   -9.00
    27.82   51.60   20.76   65.43    4.49   77.00   51.97   37.82   54.73   47.61   55.75   72.81  -27.82  -51.60  -20.76  -65.43   -4.49  -77.00  -51.97  -37.82  -54.73  -47.61  -55.75  -72.81
     78.87   39.98   78.41   13.55   65.94   63.76   22.02   27.43   73.45    2.89   44.32   74.90  -78.87  -39.98  -78.41  -13.55  -65.94  -63.76  -22.02  -27.43  -73.45   -2.89  -44.32  -74.90
     31.44   17.82   57.28   64.73   48.66   17.84    7.89   16.48   37.60   13.49   55.31   73.96  -31.44  -17.82  -57.28  -64.73  -48.66  -17.84   -7.89  -16.48  -37.60  -13.49  -55.31  -73.96
     66.01   24.57   34.83   46.94   64.29   41.06    7.70   65.79   30.22   33.71    9.96    0.53  -66.01  -24.57  -34.83  -46.94  -64.29  -41.06   -7.70  -65.79  -30.22  -33.71   -9.96   -0.53
    27.01    1.22   12.03   68.19   17.85    6.96   29.17   37.54    6.14   35.07   72.63   48.10  -27.01   -1.22  -12.03  -68.19  -17.85   -6.96  -29.17  -37.54   -6.14  -35.07  -72.63  -48.10
    57.28   10.76   41.11   19.18   24.25   61.11   24.38    8.11   39.74    9.56   58.22   75.11  -57.28  -10.76  -41.11  -19.18  -24.25  -61.11  -24.38   -8.11  -39.74   -9.56  -58.22  -75.11
    23.05   21.04   66.83    0.93   48.43   56.50   19.87   36.82   75.47   59.10   24.67   60.81  -23.05  -21.04  -66.83   -0.93  -48.43  -56.50  -19.87  -36.82  -75.47  -59.10  -24.67  -60.81
    12.31   34.11   65.42   67.57   23.93   65.72   72.52   10.11   23.72   54.25   43.28   19.96  -12.31  -34.11  -65.42  -67.57  -23.93  -65.72  -72.52  -10.11  -23.72  -54.25  -43.28  -19.96
    24.85   64.10   76.15   40.16   23.49   66.23   22.11   74.35   20.12    9.38   28.62    9.77  -24.85  -64.10  -76.15  -40.16  -23.49  -66.23  -22.11  -74.35  -20.12   -9.38  -28.62   -9.77
    14.62   63.81   23.41   56.97   69.79   22.89   59.29   70.82   75.25   46.38   40.05   63.46  -14.62  -63.81  -23.41  -56.97  -69.79  -22.89  -59.29  -70.82  -75.25  -46.38  -40.05  -63.46
    46.59   60.09   45.09   79.26    4.10   56.47    3.12   64.42   10.90   68.72   37.62   41.27  -46.59  -60.09  -45.09  -79.26   -4.10  -56.47   -3.12  -64.42  -10.90  -68.72  -37.62  -41.27
     6.13   65.28   30.12    1.45   56.23   74.38   16.33   18.00   13.39    9.77   29.99   17.65   -6.13  -65.28  -30.12   -1.45  -56.23  -74.38  -16.33  -18.00  -13.39   -9.77  -29.99  -17.65
    58.50   14.24    7.16   28.73   36.27   59.35   76.31   24.08   58.75    4.89    7.66   71.18  -58.50  -14.24   -7.16  -28.73  -36.27  -59.35  -76.31  -24.08  -58.75   -4.89   -7.66  -71.18
    71.82   47.30    7.58   63.48   76.92   38.88   73.61   58.80   41.36   61.21   74.00   55.55  -71.82  -47.30   -7.58  -63.48  -76.92  -38.88  -73.61  -58.80  -41.36  -61.21  -74.00  -55.55
    75.94   15.06   29.15   59.02   66.47    8.91   43.05   52.84    8.43   40.97   41.17   62.51  -75.94  -15.06  -29.15  -59.02  -66.47   -8.91  -43.05  -52.84   -8.43  -40.97  -41.17  -62.51];

 #costs
         C=[ 
      21.00    0.00   21.00   21.00   21.00   21.00    0.00    0.00    0.00   21.00    0.00    0.00    0.00    0.00  -29.00    0.00  -23.00    0.00  -21.00    0.00    0.00    0.00  -23.00    0.00    0.00
      0.00   22.00    0.00   22.00    0.00   22.00   22.00    0.00   22.00    0.00    0.00  -19.00    0.00  -28.00    0.00    0.00    0.00    0.00    0.00  -21.00  -23.00    0.00    0.00    0.00    0.00
     49.00   49.00   49.00    0.00   49.00   49.00    0.00    0.00   49.00   49.00    1.00    0.00    0.00    0.00    0.00    5.00    5.00    0.00    0.00    0.00    0.00    0.00    0.00    1.00    2.00
      0.00   32.00   32.00    0.00   32.00    0.00   32.00   32.00   32.00   32.00  -16.00    0.00    0.00  -18.00    0.00    0.00    0.00  -17.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     40.00   40.00   40.00    0.00    0.00   40.00   40.00    0.00    0.00    0.00    0.00    0.00   -1.00    0.00    0.00    0.00    0.00    0.00    0.00   -3.00   -5.00    0.00    0.00    0.00   -7.00
     16.00    0.00    0.00    0.00   16.00   16.00   16.00   16.00   16.00   16.00    0.00    0.00    0.00    0.00    0.00    0.00  -28.00  -33.00    0.00    0.00    0.00    0.00  -28.00  -32.00  -31.00
     22.00   22.00   22.00    0.00   22.00    0.00    0.00   22.00    0.00   22.00  -26.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -23.00    0.00  -22.00    0.00    0.00
     31.00   31.00   31.00   31.00    0.00   31.00   31.00   31.00    0.00   31.00    0.00    0.00  -10.00    0.00  -19.00    0.00  -13.00  -18.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
      0.00   19.00   19.00    0.00   19.00   19.00    0.00   19.00   19.00   19.00    0.00    0.00  -22.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -26.00  -30.00    0.00    0.00    0.00
     0.00   44.00   44.00   44.00   44.00   44.00   44.00   44.00    0.00   44.00    0.00    0.00    0.00   -6.00    0.00    0.00    0.00    0.00    2.00    0.00    0.00    0.00    0.00    0.00    0.00
    46.00    0.00    0.00   46.00   46.00    0.00    0.00   46.00    0.00   46.00   -2.00    5.00    5.00    0.00   -4.00    0.00    2.00    0.00    0.00    0.00    0.00    0.00    0.00   -2.00   -1.00
     0.00    0.00   26.00   26.00   26.00   26.00   26.00    0.00    0.00    0.00  -22.00    0.00  -15.00    0.00  -24.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -18.00  -22.00    0.00
    32.00   32.00   32.00    0.00    0.00   32.00   32.00    0.00    0.00    0.00  -16.00    0.00    0.00    0.00    0.00    0.00  -12.00  -17.00  -10.00    0.00    0.00    0.00    0.00    0.00    0.00
    31.00   31.00    0.00    0.00   31.00   31.00    0.00   31.00    0.00   31.00    0.00  -10.00    0.00    0.00    0.00    0.00  -13.00    0.00    0.00  -12.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   38.00  -10.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   -7.00  -11.00   -6.00    0.00   -9.00
    42.00   42.00    0.00   42.00    0.00    0.00    0.00    0.00   42.00    0.00    0.00    0.00    1.00   -8.00    0.00   -2.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00   33.00    0.00   33.00    0.00   33.00   33.00   33.00    0.00    0.00    0.00    0.00    0.00  -11.00    0.00    0.00    0.00    0.00  -12.00    0.00  -11.00  -15.00  -14.00
     0.00   35.00    0.00    0.00    0.00   35.00    0.00    0.00   35.00   35.00  -13.00    0.00    0.00    0.00  -15.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -12.00
    17.00   17.00    0.00   17.00    0.00   17.00    0.00    0.00   17.00    0.00  -31.00  -24.00    0.00  -33.00    0.00    0.00  -27.00    0.00  -25.00    0.00    0.00    0.00    0.00  -31.00    0.00
    40.00    0.00    0.00   40.00    0.00    0.00    0.00   40.00    0.00   40.00    0.00    0.00    0.00  -10.00    0.00    0.00    0.00    0.00    0.00    0.00   -5.00    0.00   -4.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00    0.00    0.00  -50.00  -44.00  -44.00  -49.00    0.00    0.00    0.00  -49.00    0.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00    0.00  -50.00    0.00    0.00    0.00  -49.00  -42.00  -43.00  -45.00    0.00  -44.00  -48.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00    0.00  -50.00    0.00  -44.00  -44.00    0.00    0.00  -43.00  -45.00    0.00    0.00    0.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00  -50.00    0.00    0.00  -44.00  -49.00  -42.00    0.00    0.00  -49.00  -44.00  -48.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00    0.00    0.00    0.00    0.00  -44.00    0.00    0.00  -43.00  -45.00  -49.00    0.00    0.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00  -41.00    0.00  -50.00  -44.00    0.00    0.00  -42.00    0.00  -45.00    0.00  -44.00    0.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00  -50.00    0.00  -44.00  -44.00    0.00    0.00    0.00  -45.00  -49.00  -44.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00    0.00    0.00  -50.00  -50.00  -44.00    0.00  -49.00  -42.00    0.00    0.00  -49.00  -44.00  -48.00  -47.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -41.00    0.00  -50.00    0.00    0.00    0.00    0.00    0.00  -43.00    0.00  -49.00  -44.00  -48.00    0.00
     0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00  -48.00  -41.00  -41.00    0.00  -50.00  -44.00  -44.00  -49.00    0.00  -43.00    0.00  -49.00  -44.00  -48.00  -47.00];
 costI=C[1:I,1:L];
 costJ=C[1:I,L+1:L+J ];

 costL=C[ I+1:I+L, L+1:L+J];
 Demandcost=zeros(J,1);

 print_with_color(:yellow,"Data was read.\n")

    return (I,J,K,L,AI,AJ,AL,C_I,C_J,C_L,lCI,lCL,lCJ,UI,UJ,UL,Mu_max,Mu_min, Lambda,costI,costL,costJ,Demandcost)
end