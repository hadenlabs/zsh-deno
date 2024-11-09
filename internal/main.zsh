#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function deno::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_DENO_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_DENO_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_DENO_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_DENO_PATH}"/internal/helper.zsh
}

deno::internal::main::factory
dvm::internal::dvm::load

if ! core::exists curl; then core::install curl; fi
if ! core::exists dvm; then dvm::internal::dvm::install; fi