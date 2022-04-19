#!/bin/sh

if [ ! -f yolox_s.pth ]; then
  echo 'downloading yolox_s.pth ...'
  curl -O -L https://github.com/Megvii-BaseDetection/YOLOX/releases/download/0.1.1rc0/yolox_s.pth
fi

CMD="python tools/train.py"
CMD="$CMD -f exps/example/custom/breakdown_test.py"
CMD="$CMD -d 1"
CMD="$CMD -b 4"
CMD="$CMD -o"
CMD="$CMD -c yolox_s.pth"

echo $CMD
$CMD
