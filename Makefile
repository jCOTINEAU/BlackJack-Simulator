#do not forget xhost command in order to activate xhost sharing

IMAGE_NAME?=bjsimulator
IMAGE_TAG?=latest

docker-build:
	docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .

docker-run:
	docker run --rm -it --net=host -e DISPLAY=${DISPLAY} -v $(pwd):/app -v ${HOME}/.Xauthority:/root/.Xauthority bjsimulator python /app/BlackJack.py /app/strategy/BasicStrategy.csv
