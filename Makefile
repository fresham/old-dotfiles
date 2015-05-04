DOTFILE_DIR = $(HOME)/code/dotfiles

.PHONY: link

all: link

link:
	$(MAKE) -C vim link
	DOTFILE_DIR=$(DOTFILE_DIR) $(MAKE) -C git link
	ln -sf $(DOTFILE_DIR)/gemrc $(HOME)/.gemrc
	ln -sf $(DOTFILE_DIR)/bash_aliases $(HOME)/.bash_aliases
	ln -sf $(DOTFILE_DIR)/tmux.conf $(HOME)/.tmux.conf
