cd darknet
while true; do
  imagesnap -w 1 input.jpg 1>/dev/null
  sips -Z 512 input.jpg 1>/dev/null 2>/dev/null
  ./darknet detector test cfg/voc.data cfg/tiny-yolo-voc.cfg tiny-yolo-voc.weights input.jpg 1>/dev/null 2>/dev/null &
  sleep 0.2
done
