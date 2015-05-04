DOTFILE_DIR = $(HOME)/code/dotfiles

.PHONY: link

all: link

link:
	$(MAKE) -C vim link
	DOTFILE_DIR=$(DOTFILE_DIR) $(MAKE) -C git link
	ln -sf $(DOTFILE_DIR)/gemrc $(HOME)/.gemrc
