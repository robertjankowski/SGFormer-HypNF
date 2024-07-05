import os

def compose_train_command(folder):
    command = f"""
    python main.py --backbone gcn --dataset S1 --lr 0.01 --num_layers 2 \
        --hidden_channels 64 --weight_decay 5e-4 --dropout 0.5 \
        --method ours --ours_layers 1 --use_graph --graph_weight 0.8 \
        --ours_dropout 0.2 --use_residual --alpha 0.5 --ours_weight_decay 0.001 \
        --rand_split --no_feat_norm \
        --seed 123 --device 0 --runs 3 --data_dir {folder}
    """
    return command 

def run_single_commands(commands):
    for c in commands:
        print(c)
        os.system(c)


if __name__ == '__main__':
    net_folders = [f.path for f in os.scandir('./data') if f.is_dir() and 'output' in f.path]
    run_commands = [compose_train_command(folder) for folder in net_folders]
    run_single_commands(run_commands[:5])
