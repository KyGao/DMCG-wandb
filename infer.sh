DATA=/home/aiscuser/drugs_processed
for seed in {0..19}
do
    python evaluate.py --dropout 0.1 --use-bn --lr-warmup --use-adamw \
        --train-subset --num-layers 6 --eval-from checkpoint_94.pt --workers 20 --batch-size 128 \
        --reuse-prior --data-split confgf --node-attn --dataset-name drugs  \
        --remove-hs --shared-output --pred-pos-residual --sample-beta 1.2 --mlp-hidden-size 1024 --latent-size 256 \
        --base-path ${DATA} --seed ${seed}
done