CUDA_VISIBLE_DEVICES=0 python Main.py \
    --dataset='gowalla' \
    --mask_epoch=300 `#300 is an example; increase it for better recommendation performance` \
    --lr=0.001 \
    --reg=1e-8 \
    --latdim=64 \
    --gnn_layer=2 \
    --adj_aug=True `# Necessary for obtaining the final student` \
    --adj_aug_layer=1  `# Necessary for obtaining the final student`  \
    --use_adj_mask_aug=True `# Necessary for obtaining the final student` \
    --use_SM_edgeW2aug=True  `# Necessary for obtaining the final student` \
    --adj_mask_aug1=0.05 \
    --adj_mask_aug2=1.0 \
    --use_mTea2drop_edges=True `# Necessary for obtaining the final student` \
    --use_tea2drop_edges=False `# Necessary for obtaining the final student` \
    --PRUNING_START=1 \
    --PRUNING_END=13 \
    --model_save_path=./outModels/gowalla/example1/checkpoints/fnl_student_ckpts \
    --his_save_path=./outModels/gowalla/example1/history/fnl_student_his \
    --middle_teacher_model=./inModels/gowalla/example_intermediate_KD_model_dim64_gowalla_ckpt.mod \
    --distill_from_middle_model=True `# Necessary for obtaining the final student` \
    --distill_from_teacher_model=False  `# Necessary for obtaining the final student` \
    --train_middle_model=False `# Necessary for obtaining the final student` \
    --pruning_percent_adj=0.15 \
    --pruning_percent_emb=0.2 | tee ./logs/fnl_student_gowalla_example1_log
