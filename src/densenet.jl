function densenet_layers()
  weight = Metalhead.weights("densenet.bson")
  weights = Dict{Any, Any}()
  for ele in keys(weight)
    weights[string(ele)] = convert(Array{Float64, N} where N ,weight[ele])
  end
    Mul(a,b,c) = b .* reshape(c, (1,1,size(c)[a],1)) 
    Add(axis, A ,B) = A .+ reshape(B, (1,1,size(B)[1],1)) 

    c_1 = Conv(weights["fc6_w_0"], weights["fc6_b_0"], stride=(1, 1), pad=(0, 0))
    c_2 = Conv(weights["conv4_blk_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_3 = Conv(weights["conv3_blk_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_4 = Conv(weights["conv2_blk_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_5 = Conv(weights["conv1_w_0"], [0.0], relu, stride=(2, 2), pad=(3, 3))
    c_6 = Conv(weights["conv2_1/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_7 = Conv(weights["conv2_1/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_8 = Conv(weights["conv2_2/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_9 = Conv(weights["conv2_2/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_10 = Conv(weights["conv2_3/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_11 = Conv(weights["conv2_3/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_12 = Conv(weights["conv2_4/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_13 = Conv(weights["conv2_4/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_14 = Conv(weights["conv2_5/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_15 = Conv(weights["conv2_5/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_16 = Conv(weights["conv2_6/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_17 = Conv(weights["conv2_6/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_18 = Conv(weights["conv3_1/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_19 = Conv(weights["conv3_1/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_20 = Conv(weights["conv3_2/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_21 = Conv(weights["conv3_2/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_22 = Conv(weights["conv3_3/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_23 = Conv(weights["conv3_3/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_24 = Conv(weights["conv3_4/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_25 = Conv(weights["conv3_4/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_26 = Conv(weights["conv3_5/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_27 = Conv(weights["conv3_5/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_28 = Conv(weights["conv3_6/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_29 = Conv(weights["conv3_6/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_30 = Conv(weights["conv3_7/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_31 = Conv(weights["conv3_7/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_32 = Conv(weights["conv3_8/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_33 = Conv(weights["conv3_8/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_34 = Conv(weights["conv3_9/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_35 = Conv(weights["conv3_9/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_36 = Conv(weights["conv3_10/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_37 = Conv(weights["conv3_10/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_38 = Conv(weights["conv3_11/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_39 = Conv(weights["conv3_11/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_40 = Conv(weights["conv3_12/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_41 = Conv(weights["conv3_12/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_42 = Conv(weights["conv4_1/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_43 = Conv(weights["conv4_1/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_44 = Conv(weights["conv4_2/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_45 = Conv(weights["conv4_2/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_46 = Conv(weights["conv4_3/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_47 = Conv(weights["conv4_3/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_48 = Conv(weights["conv4_4/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_49 = Conv(weights["conv4_4/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_50 = Conv(weights["conv4_5/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_51 = Conv(weights["conv4_5/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_52 = Conv(weights["conv4_6/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_53 = Conv(weights["conv4_6/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_54 = Conv(weights["conv4_7/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_55 = Conv(weights["conv4_7/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_56 = Conv(weights["conv4_8/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_57 = Conv(weights["conv4_8/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_58 = Conv(weights["conv4_9/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_59 = Conv(weights["conv4_9/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_60 = Conv(weights["conv4_10/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_61 = Conv(weights["conv4_10/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_62 = Conv(weights["conv4_11/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_63 = Conv(weights["conv4_11/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_64 = Conv(weights["conv4_12/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_65 = Conv(weights["conv4_12/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_66 = Conv(weights["conv4_13/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_67 = Conv(weights["conv4_13/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_68 = Conv(weights["conv4_14/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_69 = Conv(weights["conv4_14/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_70 = Conv(weights["conv4_15/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_71 = Conv(weights["conv4_15/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_72 = Conv(weights["conv4_16/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_73 = Conv(weights["conv4_16/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_74 = Conv(weights["conv4_17/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_75 = Conv(weights["conv4_17/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_76 = Conv(weights["conv4_18/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_77 = Conv(weights["conv4_18/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_78 = Conv(weights["conv4_19/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_79 = Conv(weights["conv4_19/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_80 = Conv(weights["conv4_20/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_81 = Conv(weights["conv4_20/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_82 = Conv(weights["conv4_21/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_83 = Conv(weights["conv4_21/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_84 = Conv(weights["conv4_22/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_85 = Conv(weights["conv4_22/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_86 = Conv(weights["conv4_23/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_87 = Conv(weights["conv4_23/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_88 = Conv(weights["conv4_24/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_89 = Conv(weights["conv4_24/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_90 = Conv(weights["conv5_1/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_91 = Conv(weights["conv5_1/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_92 = Conv(weights["conv5_2/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_93 = Conv(weights["conv5_2/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_94 = Conv(weights["conv5_3/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_95 = Conv(weights["conv5_3/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_96 = Conv(weights["conv5_4/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_97 = Conv(weights["conv5_4/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_98 = Conv(weights["conv5_5/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_99 = Conv(weights["conv5_5/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_100 = Conv(weights["conv5_6/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_101 = Conv(weights["conv5_6/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_102 = Conv(weights["conv5_7/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_103 = Conv(weights["conv5_7/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_104 = Conv(weights["conv5_8/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_105 = Conv(weights["conv5_8/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_106 = Conv(weights["conv5_9/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_107 = Conv(weights["conv5_9/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_108 = Conv(weights["conv5_10/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_109 = Conv(weights["conv5_10/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_110 = Conv(weights["conv5_11/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_111 = Conv(weights["conv5_11/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_112 = Conv(weights["conv5_12/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_113 = Conv(weights["conv5_12/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_114 = Conv(weights["conv5_13/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_115 = Conv(weights["conv5_13/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_116 = Conv(weights["conv5_14/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_117 = Conv(weights["conv5_14/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_118 = Conv(weights["conv5_15/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_119 = Conv(weights["conv5_15/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_120 = Conv(weights["conv5_16/x2_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_121 = Conv(weights["conv5_16/x1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    ls = Chain(x_122-> begin 
            edge_123 = c_5(x_122)
            edge_124 = maxpool(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_123), 3), ϵ=1.0e-5, momentum=0.9))(edge_123), weights["conv1/bn_w_0"]), weights["conv1/bn_b_0"])), (3, 3), pad=(1, 1), stride=(2, 2))
            edge_125 = c_7(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_124), 3), ϵ=1.0e-5, momentum=0.9))(edge_124), weights["conv2_1/x1/bn_w_0"]), weights["conv2_1/x1/bn_b_0"])))
            edge_126 = cat(3, edge_124, c_6(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_125), 3), ϵ=1.0e-5, momentum=0.9))(edge_125), weights["conv2_1/x2/bn_w_0"]), weights["conv2_1/x2/bn_b_0"]))))
            edge_127 = c_9(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_126), 3), ϵ=1.0e-5, momentum=0.9))(edge_126), weights["conv2_2/x1/bn_w_0"]), weights["conv2_2/x1/bn_b_0"])))
            edge_128 = cat(3, edge_126, c_8(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_127), 3), ϵ=1.0e-5, momentum=0.9))(edge_127), weights["conv2_2/x2/bn_w_0"]), weights["conv2_2/x2/bn_b_0"]))))
            edge_129 = c_11(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_128), 3), ϵ=1.0e-5, momentum=0.9))(edge_128), weights["conv2_3/x1/bn_w_0"]), weights["conv2_3/x1/bn_b_0"])))
            edge_130 = cat(3, edge_128, c_10(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_129), 3), ϵ=1.0e-5, momentum=0.9))(edge_129), weights["conv2_3/x2/bn_w_0"]), weights["conv2_3/x2/bn_b_0"]))))
            edge_131 = c_13(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_130), 3), ϵ=1.0e-5, momentum=0.9))(edge_130), weights["conv2_4/x1/bn_w_0"]), weights["conv2_4/x1/bn_b_0"])))
            edge_132 = cat(3, edge_130, c_12(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_131), 3), ϵ=1.0e-5, momentum=0.9))(edge_131), weights["conv2_4/x2/bn_w_0"]), weights["conv2_4/x2/bn_b_0"]))))
            edge_133 = c_15(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_132), 3), ϵ=1.0e-5, momentum=0.9))(edge_132), weights["conv2_5/x1/bn_w_0"]), weights["conv2_5/x1/bn_b_0"])))
            edge_134 = cat(3, edge_132, c_14(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_133), 3), ϵ=1.0e-5, momentum=0.9))(edge_133), weights["conv2_5/x2/bn_w_0"]), weights["conv2_5/x2/bn_b_0"]))))
            edge_135 = c_17(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_134), 3), ϵ=1.0e-5, momentum=0.9))(edge_134), weights["conv2_6/x1/bn_w_0"]), weights["conv2_6/x1/bn_b_0"])))
            edge_136 = cat(3, edge_134, c_16(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_135), 3), ϵ=1.0e-5, momentum=0.9))(edge_135), weights["conv2_6/x2/bn_w_0"]), weights["conv2_6/x2/bn_b_0"]))))
            edge_137 = meanpool(c_4(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_136), 3), ϵ=1.0e-5, momentum=0.9))(edge_136), weights["conv2_blk/bn_w_0"]), weights["conv2_blk/bn_b_0"]))), (2, 2), pad=(0, 0), stride=(2, 2))
            edge_138 = c_19(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_137), 3), ϵ=1.0e-5, momentum=0.9))(edge_137), weights["conv3_1/x1/bn_w_0"]), weights["conv3_1/x1/bn_b_0"])))
            edge_139 = cat(3, edge_137, c_18(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_138), 3), ϵ=1.0e-5, momentum=0.9))(edge_138), weights["conv3_1/x2/bn_w_0"]), weights["conv3_1/x2/bn_b_0"]))))
            edge_140 = c_21(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_139), 3), ϵ=1.0e-5, momentum=0.9))(edge_139), weights["conv3_2/x1/bn_w_0"]), weights["conv3_2/x1/bn_b_0"])))
            edge_141 = cat(3, edge_139, c_20(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_140), 3), ϵ=1.0e-5, momentum=0.9))(edge_140), weights["conv3_2/x2/bn_w_0"]), weights["conv3_2/x2/bn_b_0"]))))
            edge_142 = c_23(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_141), 3), ϵ=1.0e-5, momentum=0.9))(edge_141), weights["conv3_3/x1/bn_w_0"]), weights["conv3_3/x1/bn_b_0"])))
            edge_143 = cat(3, edge_141, c_22(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_142), 3), ϵ=1.0e-5, momentum=0.9))(edge_142), weights["conv3_3/x2/bn_w_0"]), weights["conv3_3/x2/bn_b_0"]))))
            edge_144 = c_25(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_143), 3), ϵ=1.0e-5, momentum=0.9))(edge_143), weights["conv3_4/x1/bn_w_0"]), weights["conv3_4/x1/bn_b_0"])))
            edge_145 = cat(3, edge_143, c_24(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_144), 3), ϵ=1.0e-5, momentum=0.9))(edge_144), weights["conv3_4/x2/bn_w_0"]), weights["conv3_4/x2/bn_b_0"]))))
            edge_146 = c_27(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_145), 3), ϵ=1.0e-5, momentum=0.9))(edge_145), weights["conv3_5/x1/bn_w_0"]), weights["conv3_5/x1/bn_b_0"])))
            edge_147 = cat(3, edge_145, c_26(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_146), 3), ϵ=1.0e-5, momentum=0.9))(edge_146), weights["conv3_5/x2/bn_w_0"]), weights["conv3_5/x2/bn_b_0"]))))
            edge_148 = c_29(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_147), 3), ϵ=1.0e-5, momentum=0.9))(edge_147), weights["conv3_6/x1/bn_w_0"]), weights["conv3_6/x1/bn_b_0"])))
            edge_149 = cat(3, edge_147, c_28(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_148), 3), ϵ=1.0e-5, momentum=0.9))(edge_148), weights["conv3_6/x2/bn_w_0"]), weights["conv3_6/x2/bn_b_0"]))))
            edge_150 = c_31(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_149), 3), ϵ=1.0e-5, momentum=0.9))(edge_149), weights["conv3_7/x1/bn_w_0"]), weights["conv3_7/x1/bn_b_0"])))
            edge_151 = cat(3, edge_149, c_30(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_150), 3), ϵ=1.0e-5, momentum=0.9))(edge_150), weights["conv3_7/x2/bn_w_0"]), weights["conv3_7/x2/bn_b_0"]))))
            edge_152 = c_33(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_151), 3), ϵ=1.0e-5, momentum=0.9))(edge_151), weights["conv3_8/x1/bn_w_0"]), weights["conv3_8/x1/bn_b_0"])))
            edge_153 = cat(3, edge_151, c_32(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_152), 3), ϵ=1.0e-5, momentum=0.9))(edge_152), weights["conv3_8/x2/bn_w_0"]), weights["conv3_8/x2/bn_b_0"]))))
            edge_154 = c_35(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_153), 3), ϵ=1.0e-5, momentum=0.9))(edge_153), weights["conv3_9/x1/bn_w_0"]), weights["conv3_9/x1/bn_b_0"])))
            edge_155 = cat(3, edge_153, c_34(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_154), 3), ϵ=1.0e-5, momentum=0.9))(edge_154), weights["conv3_9/x2/bn_w_0"]), weights["conv3_9/x2/bn_b_0"]))))
            edge_156 = c_37(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_155), 3), ϵ=1.0e-5, momentum=0.9))(edge_155), weights["conv3_10/x1/bn_w_0"]), weights["conv3_10/x1/bn_b_0"])))
            edge_157 = cat(3, edge_155, c_36(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_156), 3), ϵ=1.0e-5, momentum=0.9))(edge_156), weights["conv3_10/x2/bn_w_0"]), weights["conv3_10/x2/bn_b_0"]))))
            edge_158 = c_39(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_157), 3), ϵ=1.0e-5, momentum=0.9))(edge_157), weights["conv3_11/x1/bn_w_0"]), weights["conv3_11/x1/bn_b_0"])))
            edge_159 = cat(3, edge_157, c_38(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_158), 3), ϵ=1.0e-5, momentum=0.9))(edge_158), weights["conv3_11/x2/bn_w_0"]), weights["conv3_11/x2/bn_b_0"]))))
            edge_160 = c_41(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_159), 3), ϵ=1.0e-5, momentum=0.9))(edge_159), weights["conv3_12/x1/bn_w_0"]), weights["conv3_12/x1/bn_b_0"])))
            edge_161 = cat(3, edge_159, c_40(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_160), 3), ϵ=1.0e-5, momentum=0.9))(edge_160), weights["conv3_12/x2/bn_w_0"]), weights["conv3_12/x2/bn_b_0"]))))
            edge_162 = meanpool(c_3(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_161), 3), ϵ=1.0e-5, momentum=0.9))(edge_161), weights["conv3_blk/bn_w_0"]), weights["conv3_blk/bn_b_0"]))), (2, 2), pad=(0, 0), stride=(2, 2))
            edge_163 = c_43(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_162), 3), ϵ=1.0e-5, momentum=0.9))(edge_162), weights["conv4_1/x1/bn_w_0"]), weights["conv4_1/x1/bn_b_0"])))
            edge_164 = cat(3, edge_162, c_42(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_163), 3), ϵ=1.0e-5, momentum=0.9))(edge_163), weights["conv4_1/x2/bn_w_0"]), weights["conv4_1/x2/bn_b_0"]))))
            edge_165 = c_45(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_164), 3), ϵ=1.0e-5, momentum=0.9))(edge_164), weights["conv4_2/x1/bn_w_0"]), weights["conv4_2/x1/bn_b_0"])))
            edge_166 = cat(3, edge_164, c_44(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_165), 3), ϵ=1.0e-5, momentum=0.9))(edge_165), weights["conv4_2/x2/bn_w_0"]), weights["conv4_2/x2/bn_b_0"]))))
            edge_167 = c_47(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_166), 3), ϵ=1.0e-5, momentum=0.9))(edge_166), weights["conv4_3/x1/bn_w_0"]), weights["conv4_3/x1/bn_b_0"])))
            edge_168 = cat(3, edge_166, c_46(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_167), 3), ϵ=1.0e-5, momentum=0.9))(edge_167), weights["conv4_3/x2/bn_w_0"]), weights["conv4_3/x2/bn_b_0"]))))
            edge_169 = c_49(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_168), 3), ϵ=1.0e-5, momentum=0.9))(edge_168), weights["conv4_4/x1/bn_w_0"]), weights["conv4_4/x1/bn_b_0"])))
            edge_170 = cat(3, edge_168, c_48(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_169), 3), ϵ=1.0e-5, momentum=0.9))(edge_169), weights["conv4_4/x2/bn_w_0"]), weights["conv4_4/x2/bn_b_0"]))))
            edge_171 = c_51(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_170), 3), ϵ=1.0e-5, momentum=0.9))(edge_170), weights["conv4_5/x1/bn_w_0"]), weights["conv4_5/x1/bn_b_0"])))
            edge_172 = cat(3, edge_170, c_50(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_171), 3), ϵ=1.0e-5, momentum=0.9))(edge_171), weights["conv4_5/x2/bn_w_0"]), weights["conv4_5/x2/bn_b_0"]))))
            edge_173 = c_53(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_172), 3), ϵ=1.0e-5, momentum=0.9))(edge_172), weights["conv4_6/x1/bn_w_0"]), weights["conv4_6/x1/bn_b_0"])))
            edge_174 = cat(3, edge_172, c_52(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_173), 3), ϵ=1.0e-5, momentum=0.9))(edge_173), weights["conv4_6/x2/bn_w_0"]), weights["conv4_6/x2/bn_b_0"]))))
            edge_175 = c_55(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_174), 3), ϵ=1.0e-5, momentum=0.9))(edge_174), weights["conv4_7/x1/bn_w_0"]), weights["conv4_7/x1/bn_b_0"])))
            edge_176 = cat(3, edge_174, c_54(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_175), 3), ϵ=1.0e-5, momentum=0.9))(edge_175), weights["conv4_7/x2/bn_w_0"]), weights["conv4_7/x2/bn_b_0"]))))
            edge_177 = c_57(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_176), 3), ϵ=1.0e-5, momentum=0.9))(edge_176), weights["conv4_8/x1/bn_w_0"]), weights["conv4_8/x1/bn_b_0"])))
            edge_178 = cat(3, edge_176, c_56(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_177), 3), ϵ=1.0e-5, momentum=0.9))(edge_177), weights["conv4_8/x2/bn_w_0"]), weights["conv4_8/x2/bn_b_0"]))))
            edge_179 = c_59(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_178), 3), ϵ=1.0e-5, momentum=0.9))(edge_178), weights["conv4_9/x1/bn_w_0"]), weights["conv4_9/x1/bn_b_0"])))
            edge_180 = cat(3, edge_178, c_58(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_179), 3), ϵ=1.0e-5, momentum=0.9))(edge_179), weights["conv4_9/x2/bn_w_0"]), weights["conv4_9/x2/bn_b_0"]))))
            edge_181 = c_61(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_180), 3), ϵ=1.0e-5, momentum=0.9))(edge_180), weights["conv4_10/x1/bn_w_0"]), weights["conv4_10/x1/bn_b_0"])))
            edge_182 = cat(3, edge_180, c_60(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_181), 3), ϵ=1.0e-5, momentum=0.9))(edge_181), weights["conv4_10/x2/bn_w_0"]), weights["conv4_10/x2/bn_b_0"]))))
            edge_183 = c_63(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_182), 3), ϵ=1.0e-5, momentum=0.9))(edge_182), weights["conv4_11/x1/bn_w_0"]), weights["conv4_11/x1/bn_b_0"])))
            edge_184 = cat(3, edge_182, c_62(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_183), 3), ϵ=1.0e-5, momentum=0.9))(edge_183), weights["conv4_11/x2/bn_w_0"]), weights["conv4_11/x2/bn_b_0"]))))
            edge_185 = c_65(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_184), 3), ϵ=1.0e-5, momentum=0.9))(edge_184), weights["conv4_12/x1/bn_w_0"]), weights["conv4_12/x1/bn_b_0"])))
            edge_186 = cat(3, edge_184, c_64(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_185), 3), ϵ=1.0e-5, momentum=0.9))(edge_185), weights["conv4_12/x2/bn_w_0"]), weights["conv4_12/x2/bn_b_0"]))))
            edge_187 = c_67(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_186), 3), ϵ=1.0e-5, momentum=0.9))(edge_186), weights["conv4_13/x1/bn_w_0"]), weights["conv4_13/x1/bn_b_0"])))
            edge_188 = cat(3, edge_186, c_66(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_187), 3), ϵ=1.0e-5, momentum=0.9))(edge_187), weights["conv4_13/x2/bn_w_0"]), weights["conv4_13/x2/bn_b_0"]))))
            edge_189 = c_69(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_188), 3), ϵ=1.0e-5, momentum=0.9))(edge_188), weights["conv4_14/x1/bn_w_0"]), weights["conv4_14/x1/bn_b_0"])))
            edge_190 = cat(3, edge_188, c_68(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_189), 3), ϵ=1.0e-5, momentum=0.9))(edge_189), weights["conv4_14/x2/bn_w_0"]), weights["conv4_14/x2/bn_b_0"]))))
            edge_191 = c_71(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_190), 3), ϵ=1.0e-5, momentum=0.9))(edge_190), weights["conv4_15/x1/bn_w_0"]), weights["conv4_15/x1/bn_b_0"])))
            edge_192 = cat(3, edge_190, c_70(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_191), 3), ϵ=1.0e-5, momentum=0.9))(edge_191), weights["conv4_15/x2/bn_w_0"]), weights["conv4_15/x2/bn_b_0"]))))
            edge_193 = c_73(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_192), 3), ϵ=1.0e-5, momentum=0.9))(edge_192), weights["conv4_16/x1/bn_w_0"]), weights["conv4_16/x1/bn_b_0"])))
            edge_194 = cat(3, edge_192, c_72(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_193), 3), ϵ=1.0e-5, momentum=0.9))(edge_193), weights["conv4_16/x2/bn_w_0"]), weights["conv4_16/x2/bn_b_0"]))))
            edge_195 = c_75(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_194), 3), ϵ=1.0e-5, momentum=0.9))(edge_194), weights["conv4_17/x1/bn_w_0"]), weights["conv4_17/x1/bn_b_0"])))
            edge_196 = cat(3, edge_194, c_74(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_195), 3), ϵ=1.0e-5, momentum=0.9))(edge_195), weights["conv4_17/x2/bn_w_0"]), weights["conv4_17/x2/bn_b_0"]))))
            edge_197 = c_77(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_196), 3), ϵ=1.0e-5, momentum=0.9))(edge_196), weights["conv4_18/x1/bn_w_0"]), weights["conv4_18/x1/bn_b_0"])))
            edge_198 = cat(3, edge_196, c_76(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_197), 3), ϵ=1.0e-5, momentum=0.9))(edge_197), weights["conv4_18/x2/bn_w_0"]), weights["conv4_18/x2/bn_b_0"]))))
            edge_199 = c_79(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_198), 3), ϵ=1.0e-5, momentum=0.9))(edge_198), weights["conv4_19/x1/bn_w_0"]), weights["conv4_19/x1/bn_b_0"])))
            edge_200 = cat(3, edge_198, c_78(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_199), 3), ϵ=1.0e-5, momentum=0.9))(edge_199), weights["conv4_19/x2/bn_w_0"]), weights["conv4_19/x2/bn_b_0"]))))
            edge_201 = c_81(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_200), 3), ϵ=1.0e-5, momentum=0.9))(edge_200), weights["conv4_20/x1/bn_w_0"]), weights["conv4_20/x1/bn_b_0"])))
            edge_202 = cat(3, edge_200, c_80(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_201), 3), ϵ=1.0e-5, momentum=0.9))(edge_201), weights["conv4_20/x2/bn_w_0"]), weights["conv4_20/x2/bn_b_0"]))))
            edge_203 = c_83(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_202), 3), ϵ=1.0e-5, momentum=0.9))(edge_202), weights["conv4_21/x1/bn_w_0"]), weights["conv4_21/x1/bn_b_0"])))
            edge_204 = cat(3, edge_202, c_82(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_203), 3), ϵ=1.0e-5, momentum=0.9))(edge_203), weights["conv4_21/x2/bn_w_0"]), weights["conv4_21/x2/bn_b_0"]))))
            edge_205 = c_85(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_204), 3), ϵ=1.0e-5, momentum=0.9))(edge_204), weights["conv4_22/x1/bn_w_0"]), weights["conv4_22/x1/bn_b_0"])))
            edge_206 = cat(3, edge_204, c_84(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_205), 3), ϵ=1.0e-5, momentum=0.9))(edge_205), weights["conv4_22/x2/bn_w_0"]), weights["conv4_22/x2/bn_b_0"]))))
            edge_207 = c_87(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_206), 3), ϵ=1.0e-5, momentum=0.9))(edge_206), weights["conv4_23/x1/bn_w_0"]), weights["conv4_23/x1/bn_b_0"])))
            edge_208 = cat(3, edge_206, c_86(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_207), 3), ϵ=1.0e-5, momentum=0.9))(edge_207), weights["conv4_23/x2/bn_w_0"]), weights["conv4_23/x2/bn_b_0"]))))
            edge_209 = c_89(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_208), 3), ϵ=1.0e-5, momentum=0.9))(edge_208), weights["conv4_24/x1/bn_w_0"]), weights["conv4_24/x1/bn_b_0"])))
            edge_210 = cat(3, edge_208, c_88(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_209), 3), ϵ=1.0e-5, momentum=0.9))(edge_209), weights["conv4_24/x2/bn_w_0"]), weights["conv4_24/x2/bn_b_0"]))))
            edge_211 = meanpool(c_2(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_210), 3), ϵ=1.0e-5, momentum=0.9))(edge_210), weights["conv4_blk/bn_w_0"]), weights["conv4_blk/bn_b_0"]))), (2, 2), pad=(0, 0), stride=(2, 2))
            edge_212 = c_91(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_211), 3), ϵ=1.0e-5, momentum=0.9))(edge_211), weights["conv5_1/x1/bn_w_0"]), weights["conv5_1/x1/bn_b_0"])))
            edge_213 = cat(3, edge_211, c_90(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_212), 3), ϵ=1.0e-5, momentum=0.9))(edge_212), weights["conv5_1/x2/bn_w_0"]), weights["conv5_1/x2/bn_b_0"]))))
            edge_214 = c_93(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_213), 3), ϵ=1.0e-5, momentum=0.9))(edge_213), weights["conv5_2/x1/bn_w_0"]), weights["conv5_2/x1/bn_b_0"])))
            edge_215 = cat(3, edge_213, c_92(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_214), 3), ϵ=1.0e-5, momentum=0.9))(edge_214), weights["conv5_2/x2/bn_w_0"]), weights["conv5_2/x2/bn_b_0"]))))
            edge_216 = c_95(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_215), 3), ϵ=1.0e-5, momentum=0.9))(edge_215), weights["conv5_3/x1/bn_w_0"]), weights["conv5_3/x1/bn_b_0"])))
            edge_217 = cat(3, edge_215, c_94(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_216), 3), ϵ=1.0e-5, momentum=0.9))(edge_216), weights["conv5_3/x2/bn_w_0"]), weights["conv5_3/x2/bn_b_0"]))))
            edge_218 = c_97(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_217), 3), ϵ=1.0e-5, momentum=0.9))(edge_217), weights["conv5_4/x1/bn_w_0"]), weights["conv5_4/x1/bn_b_0"])))
            edge_219 = cat(3, edge_217, c_96(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_218), 3), ϵ=1.0e-5, momentum=0.9))(edge_218), weights["conv5_4/x2/bn_w_0"]), weights["conv5_4/x2/bn_b_0"]))))
            edge_220 = c_99(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_219), 3), ϵ=1.0e-5, momentum=0.9))(edge_219), weights["conv5_5/x1/bn_w_0"]), weights["conv5_5/x1/bn_b_0"])))
            edge_221 = cat(3, edge_219, c_98(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_220), 3), ϵ=1.0e-5, momentum=0.9))(edge_220), weights["conv5_5/x2/bn_w_0"]), weights["conv5_5/x2/bn_b_0"]))))
            edge_222 = c_101(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_221), 3), ϵ=1.0e-5, momentum=0.9))(edge_221), weights["conv5_6/x1/bn_w_0"]), weights["conv5_6/x1/bn_b_0"])))
            edge_223 = cat(3, edge_221, c_100(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_222), 3), ϵ=1.0e-5, momentum=0.9))(edge_222), weights["conv5_6/x2/bn_w_0"]), weights["conv5_6/x2/bn_b_0"]))))
            edge_224 = c_103(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_223), 3), ϵ=1.0e-5, momentum=0.9))(edge_223), weights["conv5_7/x1/bn_w_0"]), weights["conv5_7/x1/bn_b_0"])))
            edge_225 = cat(3, edge_223, c_102(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_224), 3), ϵ=1.0e-5, momentum=0.9))(edge_224), weights["conv5_7/x2/bn_w_0"]), weights["conv5_7/x2/bn_b_0"]))))
            edge_226 = c_105(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_225), 3), ϵ=1.0e-5, momentum=0.9))(edge_225), weights["conv5_8/x1/bn_w_0"]), weights["conv5_8/x1/bn_b_0"])))
            edge_227 = cat(3, edge_225, c_104(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_226), 3), ϵ=1.0e-5, momentum=0.9))(edge_226), weights["conv5_8/x2/bn_w_0"]), weights["conv5_8/x2/bn_b_0"]))))
            edge_228 = c_107(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_227), 3), ϵ=1.0e-5, momentum=0.9))(edge_227), weights["conv5_9/x1/bn_w_0"]), weights["conv5_9/x1/bn_b_0"])))
            edge_229 = cat(3, edge_227, c_106(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_228), 3), ϵ=1.0e-5, momentum=0.9))(edge_228), weights["conv5_9/x2/bn_w_0"]), weights["conv5_9/x2/bn_b_0"]))))
            edge_230 = c_109(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_229), 3), ϵ=1.0e-5, momentum=0.9))(edge_229), weights["conv5_10/x1/bn_w_0"]), weights["conv5_10/x1/bn_b_0"])))
            edge_231 = cat(3, edge_229, c_108(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_230), 3), ϵ=1.0e-5, momentum=0.9))(edge_230), weights["conv5_10/x2/bn_w_0"]), weights["conv5_10/x2/bn_b_0"]))))
            edge_232 = c_111(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_231), 3), ϵ=1.0e-5, momentum=0.9))(edge_231), weights["conv5_11/x1/bn_w_0"]), weights["conv5_11/x1/bn_b_0"])))
            edge_233 = cat(3, edge_231, c_110(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_232), 3), ϵ=1.0e-5, momentum=0.9))(edge_232), weights["conv5_11/x2/bn_w_0"]), weights["conv5_11/x2/bn_b_0"]))))
            edge_234 = c_113(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_233), 3), ϵ=1.0e-5, momentum=0.9))(edge_233), weights["conv5_12/x1/bn_w_0"]), weights["conv5_12/x1/bn_b_0"])))
            edge_235 = cat(3, edge_233, c_112(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_234), 3), ϵ=1.0e-5, momentum=0.9))(edge_234), weights["conv5_12/x2/bn_w_0"]), weights["conv5_12/x2/bn_b_0"]))))
            edge_236 = c_115(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_235), 3), ϵ=1.0e-5, momentum=0.9))(edge_235), weights["conv5_13/x1/bn_w_0"]), weights["conv5_13/x1/bn_b_0"])))
            edge_237 = cat(3, edge_235, c_114(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_236), 3), ϵ=1.0e-5, momentum=0.9))(edge_236), weights["conv5_13/x2/bn_w_0"]), weights["conv5_13/x2/bn_b_0"]))))
            edge_238 = c_117(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_237), 3), ϵ=1.0e-5, momentum=0.9))(edge_237), weights["conv5_14/x1/bn_w_0"]), weights["conv5_14/x1/bn_b_0"])))
            edge_239 = cat(3, edge_237, c_116(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_238), 3), ϵ=1.0e-5, momentum=0.9))(edge_238), weights["conv5_14/x2/bn_w_0"]), weights["conv5_14/x2/bn_b_0"]))))
            edge_240 = c_119(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_239), 3), ϵ=1.0e-5, momentum=0.9))(edge_239), weights["conv5_15/x1/bn_w_0"]), weights["conv5_15/x1/bn_b_0"])))
            edge_241 = cat(3, edge_239, c_118(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_240), 3), ϵ=1.0e-5, momentum=0.9))(edge_240), weights["conv5_15/x2/bn_w_0"]), weights["conv5_15/x2/bn_b_0"]))))
            edge_242 = c_121(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_241), 3), ϵ=1.0e-5, momentum=0.9))(edge_241), weights["conv5_16/x1/bn_w_0"]), weights["conv5_16/x1/bn_b_0"])))
            edge_243 = cat(3, edge_241, c_120(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_242), 3), ϵ=1.0e-5, momentum=0.9))(edge_242), weights["conv5_16/x2/bn_w_0"]), weights["conv5_16/x2/bn_b_0"]))))
            c_1(mean(relu.(Add(1, Mul(1, (BatchNorm(getindex(size(edge_243), 3), ϵ=1.0e-5, momentum=0.9))(edge_243), weights["conv5_blk/bn_w_0"]), weights["conv5_blk/bn_b_0"])), (1, 2)))
        end
    )
  Flux.testmode!(ls)
  return ls
end

struct DenseNet <: ClassificationModel{ImageNet.ImageNet1k}
  layers::Chain
end

DenseNet() = DenseNet(densenet_layers())

Base.show(io::IO, ::DenseNet) = print(io, "DenseNet()")

Flux.treelike(DenseNet)

(m::DenseNet)(x) = m.layers(x)