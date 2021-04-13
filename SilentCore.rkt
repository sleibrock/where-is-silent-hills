#lang racket/base

(require "CSV.rkt"
         (only-in racket/set
                  list->set
                  set->list
                  set-intersect
                  set-union
                  set-subtract
                  )
         (only-in racket/string
                  string-join
                  )
         )


(provide Order-of-Games
         )


(define Order-of-Games
  '("data/SilentHill.csv"                  ; 1999 (PSX)
    "data/SilentHill2.csv"                 ; 2001 (PS2)
    ;"data/SilentHill3.csv"                 ; 2003 (PS2)
    ;"data/Siren.csv"                       ; 2003 (PS2)
    ;"data/SilentHill4.csv"                 ; 2004 (PS2)
    ;"data/Siren2.csv"                      ; 2006
    ;"data/SilentHillOrigins.csv"           ; 2007 (PSP)
    ;"data/Siren3.csv"                      ; 2008
    ;"data/SilentHillHomecoming.csv"        ; 2008 (X360/PS3/PC)
    ;"data/SilentHillShatteredMemories.csv" ; 2009 (Wii/PS2/PSP)
    ;"data/SilentHillDownpour.csv"          ; 2012 (X360/PS3)
    ;"data/SilentHillHDCollection.csv"      ; 2012 (X360/PS3)
    ;"data/SilentHillBookofMemories.csv"    ; 2012 (PSVita)
    ;"data/PTSilentHills.csv"               ; 2014 (PS4)
    ;"data/DeathStranding.csv"              ; 2019 (PS4/XOne/PC)
    ))


(define (file->name-set fname)
  (list->set
   (map (λ (row) (car row))
        (read-csv-file fname))))


(define (set->formatted-string setref)
  (string-join (set->list setref) ", "))


(define (info-print older-game newer-game)
  (define shared-employees   (set-intersect older-game newer-game))
  (define people-who-left    (set-subtract  older-game newer-game))
  (define people-who-joined  (set-subtract  newer-game older-game))
  (displayln "People who worked on both games:")
  (displayln (set->formatted-string shared-employees))
  (displayln "")
  (displayln "People who left:")
  (displayln (set->formatted-string people-who-left))
  (displayln "")
  (displayln "People who joined:")
  (displayln (set->formatted-string people-who-joined))
  (displayln ""))



(define (find-all-commons . restsets)
  (displayln "People who worked on all games:")
  (displayln (set->formatted-string
              (foldr set-intersect (car restsets) (cdr restsets)))))
  


(module+ main
  (define silenthill1 (file->name-set "data/SilentHill.csv"))
  (define silenthill2 (file->name-set "data/SilentHill2.csv"))
  (define silenthill3 (file->name-set "data/SilentHill3.csv"))
  (define silenthill4 (file->name-set "data/SilentHill4.csv"))
  (define siren       (file->name-set "data/Siren.csv"))
  
  ;(info-print silenthill1 silenthill2)
  ;(info-print silenthill1 siren)
  ;(info-print silenthill2 silenthill3)
  (find-all-commons silenthill1 silenthill2 silenthill3 silenthill4)
  )
  
  
