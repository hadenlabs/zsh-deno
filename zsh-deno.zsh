#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines functions deno for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
#
ZSH_DENO_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_DENO_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_DENO_PATH}"/core/main.zsh

# shellcheck source=/dev/null
source "${ZSH_DENO_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_DENO_PATH}"/pkg/main.zsh
