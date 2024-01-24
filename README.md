# Description

My 2024 Neovim config.

## Overview

This year I'm experimenting with adding more custom UI stuff. Some of it is rice that I'm not particularly attached to, but other changes such as migrating away from lsp-zero were necessary for improving my dev experience.

## Changes

### Package Manager
- Migrated from Packer to Lazy

### LSP and formatter stuff
- Removed lsp-zero

- Removed formatter.nvim

- added none_ls for handling formatters and linters.

### Live Server

removed liveserver.nvim in favor of writing a command in set.lua to do it through the npm cli

## TODO

- Decide on using fugitive or lazygit for git management

- Consider [Trouble.nvim](https://github.com/folke/trouble.nvim) for lsp info

- Rewrite live-server commands to use npm tools

- add all this new stuff to my [dotfiles](https://github.com/bduckdev/.dotfiles)

- add plugin links to readme.md

### Add Plugins

- [UndoTree](https://github.com/mbbill/undotree)

- [Harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) (fast file switching)

- Git Integration (need to make up my mind on this one)

### Plugins

Need to fill this out
