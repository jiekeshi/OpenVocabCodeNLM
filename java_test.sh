# Maximum training epochs
EPOCHS=50
# Initial learning rate
LR=0.1 # This is the default value. You can skip it if you don't want to change it.
# Training batch size
BATCH_SIZE=128 # This is also the default.
# RNN unroll timesteps for gradient calculation.
STEPS=200 # This also the default.
# 1 - Dropout probability
KEEP_PROB=0.5 # This is also the default.
# RNN hidden state size
STATE_DIMS=512 # This is also the default.
# Checkpoint and validation loss calculation frequency.
CHECKPOINT_EVERY=5000 # This is also the default.

# CUDA_VISIBLE_DEVICES=2 python code_nlm.py --test True --data_path data/java-corpus/bigcode --train_dir data/java-corpus/bigcode/model_2000 --test_filename java_test_pre_enc_bpe_2000 --gru True --batch_size $BATCH_SIZE --word_level_perplexity True --cross_entropy True | tee java_logs/bpe_2000_test.log &

# CUDA_VISIBLE_DEVICES=3 python code_nlm.py --test True --data_path data/java-corpus/bigcode --train_dir data/java-corpus/bigcode/model_5000 --test_filename java_test_pre_enc_bpe_5000 --gru True --batch_size $BATCH_SIZE --word_level_perplexity True --cross_entropy True | tee java_logs/bpe_5000_test.log &

# CUDA_VISIBLE_DEVICES=1 python code_nlm.py --test True --data_path data/java-corpus/bigcode --train_dir data/java-corpus/bigcode/model_10000 --test_filename java_test_pre_enc_bpe_10000 --gru True --batch_size $BATCH_SIZE --word_level_perplexity True --cross_entropy True | tee java_logs/bpe_10000_test.log &

# CUDA_VISIBLE_DEVICES=2 python code_nlm.py --test True --data_path data/java-corpus/split --train_dir data/java-corpus/split/model_2000 --test_filename java_test_pre_enc_bpe_split_2000 --gru True --batch_size $BATCH_SIZE --word_level_perplexity True --cross_entropy True | tee java_logs/bpe_split_2000_test.log &

# CUDA_VISIBLE_DEVICES=3 python code_nlm.py --test True --data_path data/java-corpus/split --train_dir data/java-corpus/split/model_5000 --test_filename java_test_pre_enc_bpe_split_5000 --gru True --batch_size $BATCH_SIZE --word_level_perplexity True --cross_entropy True | tee java_logs/bpe_split_5000_test.log &

# CUDA_VISIBLE_DEVICES=1 python code_nlm.py --test True --data_path data/java-corpus/split --train_dir data/java-corpus/split/model_10000 --test_filename java_test_pre_enc_bpe_split_10000 --gru True --batch_size $BATCH_SIZE --word_level_perplexity True --cross_entropy True | tee java_logs/bpe_split_10000_test.log &

CUDA_VISIBLE_DEVICES=2 python code_nlm.py --test True --data_path data/java-corpus/merge --train_dir data/java-corpus/merge/model_2000 --test_filename test_merge_2000 --gru True --batch_size $BATCH_SIZE --word_level_perplexity True --cross_entropy True | tee java_logs/bpe_merge_2000_test.log &

CUDA_VISIBLE_DEVICES=3 python code_nlm.py --test True --data_path data/java-corpus/merge --train_dir data/java-corpus/merge/model_5000 --test_filename test_merge_2000 --gru True --batch_size $BATCH_SIZE --word_level_perplexity True --cross_entropy True | tee java_logs/bpe_merge_5000_test.log &

CUDA_VISIBLE_DEVICES=1 python code_nlm.py --test True --data_path data/java-corpus/merge --train_dir data/java-corpus/merge/model_10000 --test_filename test_merge_2000 --gru True --batch_size $BATCH_SIZE --word_level_perplexity True --cross_entropy True | tee java_logs/bpe_merge_10000_test.log &

CUDA_VISIBLE_DEVICES=3 python code_nlm.py --test True --data_path data/java-corpus/split --train_dir data/java-corpus/split/model_10000_spm --test_filename java_test_pre_spm_10000 --gru True --batch_size 64 --word_level_perplexity True --cross_entropy True