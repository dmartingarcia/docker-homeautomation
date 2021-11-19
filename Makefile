configure:
	cp .env.example .env

esphome-wizard:
	docker run --rm -v "${PWD}":/config -it esphome/esphome wizard livingroom.yaml

exphome-upload:
	docker run --rm -v "${PWD}":/config --privileged -e "CONF_BAUD_RATE=921600" -v /dev/bus/usb:/dev/bus/usb --device=/dev/ttyUSB0 -it esphome/esphome run livingroom.yaml
