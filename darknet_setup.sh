unzip darknet-e2k.zip

cd darknet

wget https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v4_pre/yolov4-tiny.weights

./darknet detector test cfg/coco.data yolov4-tiny.cfg yolov4-tiny.weights
