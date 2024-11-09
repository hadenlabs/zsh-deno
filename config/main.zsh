#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function deno::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_DENO_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_DENO_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_DENO_PATH}"/config/linux.zsh
      ;;
    esac
}

deno::config::main::factory