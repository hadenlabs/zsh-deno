#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function dvm::internal::dvm::install {
    message_info "Installing ${DENO_PACKAGE_NAME}"
    curl -fsSL https://dvm.deno.dev | sh
    deno::internal::deno::load
    message_success "Installed ${DENO_PACKAGE_NAME}"
}

function dvm::internal::dvm::load {
  true
}

function dvm::internal::packages::install {
  if ! core::exists yarn; then
      npm install --global yarn
  fi

  message_info "Installing required yarn packages"
  yarn global add "${DENO_PACKAGES[@]}"
  message_success "Installed required yarn packages"
}

function dvm::internal::version::all::install {
  if ! core::exists dvm; then
      message_warning "not found dvm"
      return
  fi

  for version in "${DENO_VERSIONS[@]}"; do
      message_info "Install version of deno ${version}"
      dvm install "${version}"
      message_success "Installed version of deno ${version}"
  done
  dvm use "${DENO_VERSION_GLOBAL}"
  message_success "Installed versions of deno"
}

function dvm::internal::version::global::install {
  if ! core::exists dvm; then
      message_warning "not found dvm"
      return
  fi
  message_info "Installing version global of deno ${DENO_VERSION_GLOBAL}"
  dvm install "${DENO_VERSION_GLOBAL}"
  dvm alias set default "${DENO_VERSION_GLOBAL}"
  message_success "Installed version global of deno ${DENO_VERSION_GLOBAL}"
}

function dvm::internal::dvm::upgrade {
  message_info "command not implemented ${DENO_PACKAGE_NAME}"
}