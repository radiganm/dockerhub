#|
exec sbcl --script $0 $0 ${1+"$@"}
exit
|#
;; install-stumpwm.lisp
;;
;; Copyright 2016 Mac Radigan
;; All Rights Reserved

 ;(sb-ext:run-program "/usr/bin/env" '("curl" "-O" "https://beta.quicklisp.org/quicklisp.lisp"))
 ;(load #P"./quicklisp.lisp")
 ;(quicklisp-quickstart:install)

  (load #P"~/quicklisp/setup.lisp")

 ;(ql:add-to-init-file)

  (ql:quickload "cl-ppcre")
  (ql:quickload "alexandria")
  (ql:quickload "clx")
  (ql:quickload "quicklisp-slime-helper")
  (ql:quickload "split-sequence")
  (ql:quickload "swank-client")

 ;(load #P"./make-image.lisp")

  (sb-ext:exit)

;; *EOF*
