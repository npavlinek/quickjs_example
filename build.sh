#!/usr/bin/env bash

set -ex

clang \
    -DCONFIG_BIGNUM \
    -DCONFIG_VERSION=\"$(<quickjs/VERSION)\" \
    -o qjs_test \
    -lpthread \
    quickjs/cutils.c \
    quickjs/libbf.c \
    quickjs/libregexp.c \
    quickjs/libunicode.c \
    quickjs/quickjs-libc.c \
    quickjs/quickjs.c \
    main.c
