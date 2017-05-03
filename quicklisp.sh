#!/bin/bash

# Quicklisp Installation

case $1 in

    install)
        curl -o ~/quicklisp.lisp https://beta.quicklisp.org/quicklisp.lisp
        curl -o ~/quicklisp.lisp.asc https://beta.quicklisp.org/quicklisp.lisp.asc
        gpg --verify ~/quicklisp.lisp.asc ~/quicklisp.lisp
        sbcl --non-interactive --load ~/quicklisp.lisp \
            --eval '(quicklisp-quickstart:install)' \
            --eval '(ql:quickload "quicklisp-slime-helper")' \
            --eval '(ql:add-to-init-file)'
        ;;

    clean)
        rm -rf ~/quicklisp* ~/.sbclrc
        ;;
esac
exit 0

