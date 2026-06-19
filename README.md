## About

Vim syntax highlighting, folding and (simple) indentation rules for ZAP schema
files (`.zap`, and `.capnp` for back-compat).

ZAP is a fork of [Cap'n Proto][capnp] that stays wire- and library-compatible,
so this plugin highlights both `.zap` and `.capnp` schemas.

## Install

### Pathogen

```bash
git clone https://github.com/zap-proto/vim.git ~/.vim/bundle/vim-zap
```

### Vundle

Add the following to *$MYVIMRC* (after `call vundle#rc()`):
```vim
Plugin 'zap-proto/vim'
```

# Contributing

> **Docs:** [ZAP for Vim / Neovim](https://zap-proto.dev/docs/sdks) · part of the [ZAP Protocol](https://zap-proto.io)


If you have any ideas, feel free to open an issue and/or pull request!

# Authors

- [Charles Strahan](https://github.com/cstrahan)
- [Andreas Misje](https://github.com/misje)
- [Stanislav Ivochkin](https://github.com/ivochkin)
- [Ross Light](https://github.com/zombiezen)

# License

See the `LICENSE` file in this repository.

[capnp]: https://capnproto.org "Cap'n Proto"
