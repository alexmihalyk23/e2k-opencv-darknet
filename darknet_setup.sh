unzip darknet-e2k.zip

cd darknet

wget https://pjreddie.com/media/files/yolov3-tiny.weights

./darknet detector test cfg/coco.data cfg/yolov3-tiny.cfg yolov3-tiny.weights