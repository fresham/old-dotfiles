DOTFILE_DIR = $(HOME)/code/dotfiles

all: link

link:
	$(MAKE) -C vim link
	$(MAKE) -C git link
	ln -sf $(DOTFILE_DIR)/gemrc $(HOME)/.gemrc
