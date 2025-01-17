 CUDA_VISIBLE_DEVICES=2 python Main.py \
    --dataset='amazon' \
    --mask_epoch=200 `#200 is an example; increase it for better recommendation performance` \
    --lr=0.001 \
    --reg=1e-5 \
    --latdim=64 \
    --gnn_layer=6 \
    --adj_aug=True `#Necessary for training intermediate model` \
    --adj_aug_layer=1 `#Necessary for training intermediate model` \
    --adj_aug_sample=True \
    --adj_aug_sample_ratio=0.9 \    
    --use_adj_mask_aug=False  `#Necessary for training intermediate model`\
    --use_SM_edgeW2aug=False  `#Necessary for training intermediate model`\
    --PRUNING_START=1 `#Necessary for training intermediate model`\
    --PRUNING_END=1  `#Necessary for training intermediate model` \
    --model_save_path=./outModels/amazon/example2/checkpoints/mid_tea_ckpts \
    --his_save_path=./outModels/amazon/example2/history/mid_tea_his \
    --teacher_model=./inModels/amazon/example_teacher_model_dim64_amazon_ckpt.mod `#Necessary for training intermediate model` \
    --distill_from_middle_model=False `#Necessary for training intermediate model`\
    --distill_from_teacher_model=True `#Necessary for training intermediate model`\
    --train_middle_model=True | tee ./logs/intermediate_amazon_example2_log `#Necessary for training intermediate model`
