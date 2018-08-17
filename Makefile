.PHONY: build tmux version bash

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
	docker run -ti --rm \
		-v $(CURDIR):/talk \
		-w /talk \
		devdrops/tmux:latest bash

new:
	docker run -ti --rm \
		-v $(CURDIR)/tmuxinator:/talk \
		-w /talk \
		devdrops/tmux:latest \
		tmuxinator new talk

start:
	docker run -ti --rm \
		-v $(CURDIR)/tmuxinator:/talk \
		-w /talk \
		devdrops/tmux:latest \
		tmuxinator start talk

