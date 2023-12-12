@PHONY: build
build:
	docker build . -t mokemokechicken/draw-a-ui

@PHONY: run
run:
	docker run -it -p 3000:3000 -e OPENAI_API_KEY mokemokechicken/draw-a-ui