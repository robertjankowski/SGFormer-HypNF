
python main.py --backbone gcn --dataset S1 --lr 0.01 --num_layers 2 \
    --hidden_channels 64 --weight_decay 5e-4 --dropout 0.5 \
    --method ours --ours_layers 1 --use_graph --graph_weight 0.8 \
    --ours_dropout 0.2 --use_residual --alpha 0.5 --ours_weight_decay 0.001 \
    --rand_split --no_feat_norm \
    --seed 123 --device 0 --runs 3 --data_dir data/output_B_s_1.1_g_s_2.1_Ns_obs_5000_k_s_30_g_n_3.5_k_n_3_g_f_3.5_N_f_2000_B_bi_3_nu_0.0_alpha_5_N_l_6_i_0

