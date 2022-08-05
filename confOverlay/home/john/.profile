export _JAVA_AWT_WM_NONREPARENTING=1
# clash path
export PATH=$PATH:~/.local/bin/
# texmacs path
export TEXMACS_PATH=~/.local/TeXmacs
export PATH=$TEXMACS_PATH/bin:$PATH
# arduino path
export PATH=~/.local/arduino:$PATH
# riscv toolchain path
export PATH=~/.local/riscv/bin:$PATH
# zoom path
export PATH=~/.local/zoom/:$PATH
. "$HOME/.cargo/env"
