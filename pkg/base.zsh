#!/usr/bin/env ksh
# -*- coding: utf-8 -*-
function dvm::install {
  dvm::internal::dvm::install
}

function deno::install {
  dvm::install::version::global
}

function dvm::load {
  dvm::internal::dvm::load
}

function deno::post_install {
  message_info "Post Install ${DENO_PACKAGE_NAME}"
  message_success "Success Install ${DENO_PACKAGE_NAME}"
}

function dvm::upgrade {
  dvm::internal::dvm::upgrade
}

function dvm::package::all::install {
  deno::internal::packages::install
}

function dvm::install::versions {
  dvm::internal::version::all::install
}

function dvm::install::version::global {
  dvm::internal::version::global::install
}