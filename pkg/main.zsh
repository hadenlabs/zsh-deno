#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function deno::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_DENO_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_DENO_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_DENO_PATH}"/pkg/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_DENO_PATH}"/pkg/helper.zsh

    # shellcheck source=/dev/null
    source "${ZSH_DENO_PATH}"/pkg/alias.zsh
}

deno::pkg::main::factory
