
python main.py --backbone gcn --dataset cora --lr 0.01 --num_layers 2 \
    --hidden_channels 64 --weight_decay 5e-4 --dropout 0.5 \
    --method gcn --ours_layers 1 --use_graph --graph_weight 0.8 \
    --ours_dropout 0.2 --use_residual --alpha 0.5 --ours_weight_decay 0.001 \
    --rand_split_class --valid_num 500 --test_num 1000 --no_feat_norm \
    --seed 123 --device 3 --runs 5 --cpu
