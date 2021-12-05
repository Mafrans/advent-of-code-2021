(load "util.lisp")

(defvar input (read-input 1))
(defvar total-increases 0)
(defvar last-sum 0)

(dotimes (i (- (length input) 2))
    (let (
            (sum (+ 
                (parse-integer (nth (+ i 0) input)) 
                (parse-integer (nth (+ i 1) input))
                (parse-integer (nth (+ i 2) input)))))
        (progn 
            (if (and (> last-sum 0) (> sum last-sum))
                (incf total-increases))
            (setq last-sum sum))))

(format T "~a" total-increases)