export MAX_JOBS=128
export VLLM_FLASH_ATTN_SRC_DIR=/data1/jyj/DengSeek/others/vllm/.deps/vllm-flash-attn-src 
export FLASH_MLA_SRC_DIR=/data1/jyj/DengSeek/others/vllm/.deps/flashmla-src 
export VLLM_PYTHON_EXECUTABLE=/data1/jyj/micromamba/envs/vllm-ext/bin/python
export LD_LIBRARY_PATH=/data1/jyj/micromamba/envs/vllm-ext/lib:$LD_LIBRARY_PATH
bear -- pip install -e . -v --no-deps --no-build-isolation 2>&1 | tee build.log
mv compile_commands.json build