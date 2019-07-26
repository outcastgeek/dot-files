#!/bin/bash

# Quicklisp Installation

case $1 in

    install)
        curl -o ~/quicklisp.lisp https://beta.quicklisp.org/quicklisp.lisp
        curl -o ~/quicklisp.lisp.asc https://beta.quicklisp.org/quicklisp.lisp.asc
        gpg --verify ~/quicklisp.lisp.asc ~/quicklisp.lisp
        sbcl --no-sysinit --no-userinit --non-interactive \
            --load ~/quicklisp.lisp \
            --eval '(quicklisp-quickstart:install)' \
            --eval '(ql:quickload "quicklisp-slime-helper")' \
            --eval '(ql::without-prompting (dolist (imp `(:sbcl :ccl :abcl :ecl)) (ql:add-to-init-file imp)))'
        ;;

    sbcl.linux)
	curl -o sbcl-$2-x86-64-linux-binary.tar.bz2 https://versaweb.dl.sourceforge.net/project/sbcl/sbcl/$2/sbcl-$2-x86-64-linux-binary.tar.bz2
        tar xjvf sbcl-$2-x86-64-linux-binary.tar.bz2
        mv sbcl-$2-x86-64-linux sbcl
        rm sbcl-$2-x86-64-linux-binary.tar.bz2
        ;;

    clean)
        rm -rf ~/quicklisp* ~/.sbclrc ~/.ccl-init.lisp ~/.abclrc ~/.eclrc
        ;;
esac
exit 0

