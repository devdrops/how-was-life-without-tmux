.PHONY: build tmux version bash slides

build:
	docker build -t devdrops/tmux:latest .

tmux:
	docker run -ti \
		-v $(CURDIR):/talk \
		-w /talk \
		devdrops/tmux:latest tmux

version:
	docker run -ti --rm devdrops/tmux tmux -V

bash:
	@docker run -ti --rm \
		-v $(CURDIR):/talk \
		-w /talk \
		devdrops/tmux:latest bash

slides:
	@docker run -ti --rm \
		-v $(CURDIR):/talk \
		-w /talk \
		devdrops/tmux:latest vim slides.txt

