# Introduction

A simple repository to keep track of all the dotfiles that I have setup for my
personal Linux distro (Manjaro with GNOME).

_I might put other stuff in here besides just the dotfiles, I'll also look into
doing a full automated script that can copy all of these things to their respective
places and get an environment up and running in no time_

## Dotfiles

As a broad definition, _Dotfiles_ are the slang term used in the** GNU/Linux sphere**
to refer to **config files** (most of the time) that help shape up **tools behaviors**
and extend with other functionalities as well. In short, every setup has the
capability of **personalizing its experience** to the user's needs (_this is why Linux
is so awesome_).

I have my **own way of working and preferences**, and since these config files are
just **plain text**, they are totally up for grabs for versioning such as **Git**,
and besides, through an actual history you can go back to a working state before
you messed everything up.

And not just that, this allows for one to **document everything** he has done to his
workstation, since we tend to forget as time goes on as to the things we installed,
the commands we ran, and overall setups we make.

### Requirements

- [yay](https://itsfoss.com/install-yay-arch-linux/)
- [nvm](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
- [deno](https://docs.deno.com/runtime/getting_started/installation/)
- [pnpm](https://pnpm.io/installation)
- [bun](https://bun.com/docs/installation)
- [alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)
- [go](https://go.dev/doc/install)
- [rvm](https://rvm.io/rvm/install)
- [fastfetch](https://itsfoss.com/install-yay-arch-linux/)
- [tmux](https://github.com/tmux/tmux/wiki/Installing)
- [zathura](https://archlinux.org/packages/extra/x86_64/zathura/)

### Zsh

Setup is a combination of Alacritty with tmux and all running with zsh. Enhanced
auto-completion and experience overall.

Due to _security concerns_ the way that the `.zsh` file has been versioned here,
(and this is with future automation in mind), there's a `.vars.example` file that
has a brief rundown of the shape of how specific values should be put in a `.vars`
file. This is so that this then gets passed down at runtime to replace placeholders
in `.zshrc`.

_Note:_ Of course this means that `.vars` is by default ignored by git (.gitignore).
