;## Crystal Supplements
;(defun perogoseho (interpret)
;  (ext:shell (format nil "~a" interpret))
;)

;#| Risuto |#
;(defun risuto ()
;  (ext:shell "./bin/lists/risuto 3 :ne_mais :oui_non :hello_world")
;)

; Bootstrapped DSL
(defun ne (x y)
  (princ "Non ")
  
  (format t "~a" x)
  
  (princ " ou ")
  
  (format t "~a" y)
)

(defun mais (z)
  (princ ", mais c'est ")
  
  (format t "~a" z)

  (princ ".")
)

(defun ne_mais (a b)
  (progn (format nil "~a" a) (format nil "~a" b))
)

#| Postive Constraint Logic |#

(defun oui (x y)
  (princ "Oui, ")
  
  (format t "~a" x)
  
  (princ " et ")
  
  (format t "~a" y)
)

(defun et_non (z)
  (princ ", et non")
  
  (format t "~a" x)
  
  (princ ".")
)

#| Positive Probabilistic Otherwise |#
(defun sore (current_percentile greater_than less_than)
  (setq x current_percentile) (if (> x 0.8) (format nil "~a" greater_than) (format nil "~a" less_than))
)

(defun shikashi (current_percentile greater_than less_than)
  (setq x current_percentile) (if (< x 0.2) (format nil "~a" greater_than) (format nil "~a" less_than))
)

(defun matawa (current_percentile maybe_state above_below )
  (setq x 0.8)
  (setq y 0.2)

  (setq z current_percentile)

  (if (and (< z x) (> z y)) (format nil "~a" maybe_state) (format nil "~a" above_below))
)

#| Negative Probabilistic Otherwise |#
(defun nisore (current_percentile greater_than less_than)
  (setq x current_percentile) (if (< x 0.8) (format nil "~a" greater_than) (format nil "~a" less_than))
)

(defun nishikashi (current_percentile greater_than less_than)
  (setq x current_percentile) (if (> x 0.2) (format nil "~a" greater_than) (format nil "~a" less_than))
)

; This determines whether something is below meaningful measurement or above it.
(defun nimatawa (current_percentile maybe_state above_below )
  (setq x 0.8)
  (setq y 0.2)

  (setq z current_percentile)

  (if (and (< z x) (> z y)) (format nil "~a" above_below) (format nil "~a" maybe_state))
)

#| Contrastif |#
(defun contrastif (upper_threshold middle_threshold lower_threshold)
  (setq x  upper_threshold)
  (setq z middle_threshold)
  (setq y  lower_threshold)

  (sore x
        (ne_mais (ne "fifty" "twenty") (mais "eighty"))
        (ne_mais (ne "eighty" "twenty") (mais "fifty"))
  )

  (shikashi y
        (ne_mais (ne "eighty" "twenty") (mais "fifty"))
        (ne_mais (ne "eighty" "fifty") (mais "twenty"))
  )

  (matawa z
        (ne_mais (ne "eighty" "twenty") (mais "fifty"))
        (ne_mais (ne "eighty" "fifty") (mais "twenty"))
  )
)

(defun odorokiyoso (lowest_probability highest_probability)
  (setq x lowest_probability)
  (setq y highest_probability)
  
  (/ x y)
)
