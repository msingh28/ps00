;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |28|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))


;; PURPOSE : To design a function that takes a list of lists of strings as an 
;;           argument that treats each of the lists of strings as a line in a
;;           text and renders the whole text as an image. 

;;******************************FUNCTION****************************************
(require 2htdp/image)

;; stringdisp : ListOfListOfStrings -> Image
    ;; GIVEN : a list of list of strings
    ;; RETURNS : a string that contains each of the lists of strings as a line
    ;;           in a text and renders the whole text as an image. 
    ;; Examples: 
    ;; (stringdisp (list "Hi" "John") (list "How" "are" "you?")
    ;; => Hi John
    ;;    How are you?

(define (stringdisp lst)
   (cond 
      [(empty? lst) (text "" 12 "black")]
      [else (beside (beside (text (first lst) 12 "black") (text " " 12 "black"))
                    (stringdisp (rest lst)))]))

;;*****************************TEST****************************************

(check-expect (stringdisp (list "Hi" "John")) (text "Hi John " 12 "black"))
