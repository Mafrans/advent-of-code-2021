(load "util.lisp")

(defvar input (read-input 1))
(defvar total-increases 0)
(defvar last-value 0)

(loop for string-value in input
    do (let 
        ((value (parse-integer string-value)))
        (progn 
            (if (> last-value 0)
                (if (> value last-value)
                    (incf total-increases)))
            (setq last-value value))))

(format T "~a" total-increases)