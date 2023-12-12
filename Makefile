@PHONY: build
build:
	docker build . -t mokemokechicken/draw-a-ui

@PHONY: run
run:
	docker run -it -p 3000:3000 -e OPENAI_API_KEY mokemokechicken/draw-a-ui

@PHONY: run-in-background
run-in-background:
	docker run -d -p 3000:3000 -e OPENAI_API_KEY mokemokechicken/draw-a-ui

@PHONY: push
push:
	docker push mokemokechicken/draw-a-ui