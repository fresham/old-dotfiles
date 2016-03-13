DOTFILE_DIR = $(HOME)/code/dotfiles
BASE16_DIR = $(DOTFILE_DIR)/base16-builder
BASE16_OUTPUT_DIR = $(BASE16_DIR)/output

.PHONY: base16 link

all: base16 link

clean-base16:
	rm -rv $(BASE16_OUTPUT_DIR)/*
	rm -rv $(DOTFILE_DIR)/vim/colors/base16-*

base16:
	cd $(BASE16_DIR) && ./base16
	for file in $(BASE16_OUTPUT_DIR)/vim/*.vim; do \
		ln -svf "$$file" $(DOTFILE_DIR)/vim/colors; \
	done

link:
	$(MAKE) -C vim
	DOTFILE_DIR=$(DOTFILE_DIR) $(MAKE) -C git link
	ln -svf $(DOTFILE_DIR)/tmux.conf $(HOME)/.tmux.conf
	ln -svf $(DOTFILE_DIR)/gemrc $(HOME)/.gemrc
