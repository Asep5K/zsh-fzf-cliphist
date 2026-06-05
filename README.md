<div align="center">
  
![Static Badge](https://img.shields.io/badge/works%20on%20my%20machine%20btw-blue?style=for-the-badge)

</div>

# zsh-fzf-cliphist
A minimalist, blazing-fast Zsh ZLE widget to search and paste your `cliphist` clipboard history using `fzf` without leaving your current command line buffer.

## Features
- **Inline Injection:** Automatically appends the selected clipboard item to your current typed command (e.g., type `cp ` -> press shortcut -> choose item -> results in `cp <your_item>`).

## Dependencies
Make sure you have the following tools installed in your system:
- `fzf`
- `cliphist`

## Installation

### Using [Zinit](https://github.com/zdharma-continuum/zinit)

Add the following line to your `.zshrc`:
```zsh
zinit light Asep5K/zsh-fzf-cliphist
```

## Usage 
Just press CTRL + G (default keybinding)

## License
[WTFPL](./LICENSE)
