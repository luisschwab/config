# config

This repo contains my configuration files for my system. They are centralized here and
symlinked to their respective locations on my computer.

## ghostty

`ghostty` is a _fast, native, feature-rich terminal emulator pushing modern features_.

```shell
ln -s ~/git/config/ghostty/config ~/.config/ghostty/config
```

## git

Good ol' `git`.

```shell
ln -s ~/git/config/git/gitconfig ~/.gitconfig
```

## helix

`helix` is _a post-modern text editor_ (helix btw).

```shell
ln -s ~/git/config/helix/config.toml ~/.config/helix/config.toml
ln -s ~/git/config/helix/themes/gruvbox_dark_hard_transparent.toml ~/git/config/helix/themes/gruvbox_dark_hard_transparent.toml
```

## hosts

`/etc/hosts` so I don't have to remember a million IP addresses (requires a hard link):

```shell
ln ~/git/hosts /etc/hosts
```

## scripts

Useful scripts. The `scripts` folder is added to `PATH` on `.zshrc`.

## ssh

Set the `TERM` envronment variable to `xterm256-color` when connecting over `ssh`
(because nobody supports `xterm-ghostty` yet):

```shell
ln -s ~/git/config/ssh/config ~/.ssh/config
```

## vim

Because we need to remember our origins:

```shell
ln -s ~/git/config/vim/vimrc ~/.vimrc
```

## zsh

The _Z_ shell:

```shell
ln -s ~/git/config/zsh/zshrc ~/.zshrc
```

## wireguard

`wireguard` for safe remote access. Tunnel private keys are stored PGP-encrypted on my computer,
and are only decrypted when creating a tunnel, using a Yubikey. This way, the naked private key
lives in memory only, which makes leaking a private key extremely hard to do.

The [example.conf](/wireguard/example.conf) file is a tunnel template for using a Yubikey for securely
decrypting the private key and creating the tunnel (this config is good for macOS only, you will need to
use a different command on Linux). This template assumes the key is ASCII-encoded and on the
same folder as the tunnel configuration file.

```shell
ln -s ~/git/config/wireguard/example.conf /opt/homebrew/etc/wireguard/example.conf
```

