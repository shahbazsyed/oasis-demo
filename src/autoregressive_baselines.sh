LM_MODEL_LIST=(
    "huggyllama/llama-7b"
)

for model in "${LM_MODEL_LIST[@]}"
do
    python /bigwork/nhwpziet/oasis-demo/src/autoregressive_baselines.py --model_name $model --model_type lm --num_shots 0
done

InstructLM_MODEL_LIST=(
    "/bigwork/nhwpziet/appropriateness-style-transfer/data/models/instruction-finetuning/llama-7b-instruct"
)

for model in "${InstructLM_MODEL_LIST[@]}"
do
    python /bigwork/nhwpziet/oasis-demo/src/autoregressive_baselines.py --model_name $model --model_type instruct --num_shots 0
done
