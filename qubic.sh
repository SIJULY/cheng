#!/bin/bash

# 直接在这里设置你想要的名字！
WORKER="sjune" 

# 既然已经固定了名字，就不再需要 curl 和下面的 if 判断了
# WORKER=$(curl -s https://api.ipify.org) 
# if [ -n "$CUSTOM_WORKER" ]; then
#     WORKER=sijuly
# fi

# 直接尝试启动，跳过检查
nohup ./apoolminer --account CP_0codi1cvup --worker $WORKER --gpu-off --pool qubic1.hk.apool.io:3334 >> qubic.log 2>&1 &
