#lang racket/base


(require (only-in racket/cmdline command-line)
         (only-in racket/string string-join)
         "SilentCore.rkt"
         )

(define WhereIs-version 0.1)

(module+ main
  (command-line
   #:program "WhereIs"
   #:args person
   (begin
     (define name (string-join person " "))
     (printf ">>> Where Is ~a?\n" name)
     (printf ">>> version: ~a\n" WhereIs-version))))

; end
