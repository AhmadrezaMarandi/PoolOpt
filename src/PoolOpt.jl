module PoolOpt

export Haverly_1,Haverly_2,Haverly_3,BenTal_4,BenTal_5,Adhya_1,Adhya_2,Adhya_3,Adhya_4,Foulds_2,Foulds_3
export Foulds_4,DeyGupte_4,RT2,sppA0
export elimination_equality, with_equality,pooling_with_eq_BSOS,pooling_without_eq_BSOS
export pooling_with_eq_Sparse_BSOS,pooling_without_eq_Sparse_BSOS,pooling_with_eq_Merge_Sparse_BSOS
export pooling_without_eq_Merge_Sparse_BSOS
include("pooling_data.jl")
include("pooling_problem_hierarchy.jl")

end
# module
