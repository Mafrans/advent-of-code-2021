(load "util.lisp")

(defvar input (read-input 1))
(defvar total-increases 0)
(defvar last-value 0)

(loop for line in input
    do (let ((value (parse-integer line)))
        (progn 
            (if (and (> last-value 0) (> value last-value))
                (incf total-increases))
            (setq last-value value))))

(format T "~a" total-increases)