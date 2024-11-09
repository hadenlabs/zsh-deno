#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function deno::core::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_DENO_PATH}"/core/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_DENO_PATH}"/core/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_DENO_PATH}"/core/linux.zsh
      ;;
    esac
}

deno::core::main::factory