#!/usr/bin/env bash

set -ex

clang \
    -DCONFIG_BIGNUM \
    -DCONFIG_VERSION=\"$(<quickjs/VERSION)\" \
    -D_GNU_SOURCE \
    -o qjs_test \
    -lm \
    -lpthread \
    quickjs/cutils.c \
    quickjs/libbf.c \
    quickjs/libregexp.c \
    quickjs/libunicode.c \
    quickjs/quickjs-libc.c \
    quickjs/quickjs.c \
    main.c
