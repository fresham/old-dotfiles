VIM_DIR = vim
GIT_DIR = git

all: link

link:
	$(MAKE) -C $(VIM_DIR) link
	$(MAKE) -C $(GIT_DIR) link
