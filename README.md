# Neovim Configuration

## About the Config

//TODO

## Installing on a new system

### 1. Install packer. 
    The current command as of July 2023 is the following: 
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

However, it would be a good idea to go to `https://github.com/wbthomason/packer.nvim` and check out the current installation instructions

### 2. Install GHCUP
Source: `https://www.haskell.org/ghcup/`
Command: 
```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```
Ensure that you type 'Y' when asked if you want the haskell language server.

### 3. Start nvim and run :PackerSync
