#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export ZSH_DENO_PACKAGE_NAME=deno
export ZSH_DENO_MESSAGE_BREW="Please install brew or use antibody bundle hadenlabs/zsh-brew"
export ZSH_DENO_MESSAGE_PYENV="Please install brew or use antibody bundle hadenlabs/zsh-pyenv"
export ZSH_DENO_MESSAGE_NOT_FOUND="this not found installed"

export DENO_VERSIONS=(
    1.46.3
    2.0.5
)

export DVM_DIR="${HOME}/.dvm"
export PATH="${DVM_DIR}/bin:$PATH"

export DENO_VERSION_GLOBAL=1.46.3
export DENO_PACKAGES=(
    vercel
)