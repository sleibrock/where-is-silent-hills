#lang racket/base


(require (only-in racket/list
                  first
                  second
                  )
         (only-in racket/string
                  string-split
                  )
         (only-in racket/file
                  file->lines
                  )
         (only-in racket/contract
                  define/contract
                  ->
                  any/c
                  list/c
                  )
         )

(provide read-csv-file
         )

(define/contract (split-csv-row row)
  (-> string? pair?)
  (define results (string-split row ","))
  (define arglen (length results))
  (cond
    ([= 0 arglen] (error 'split-csv-row "No data in CSV row"))
    ([= 1 arglen] (cons row  "No Role"))
    ([= 2 arglen] (cons (first results) (second results)))
    (else         (error 'split-csv-row "Too many results with ~a" results))))


(define (read-csv-file fname)
  (-> file-exists? list?)
  (define rows (file->lines fname))
  (map split-csv-row rows))

; end
