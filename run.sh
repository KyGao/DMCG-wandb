DATA="/home/t-kaiyuangao/ml-container/v-gaokaiyuan/data/drugs_processed"
bash run_training.sh -c 0 --dropout 0.1 --use-bn --no-3drot \
    --aux-loss 0.2 --num-layers 6 --lr 2e-4 --batch-size 256 \
    --vae-beta-min 0.0001 --vae-beta-max 0.05 --reuse-prior \
    --node-attn --data-split confgf --pred-pos-residual --grad-norm 10 \
    --dataset-name drugs --remove-hs --shared-output \
    --ang-lam 0 --bond-lam 0 --base-path ${DATA}
