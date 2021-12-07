(load "util.lisp")

(defvar input (read-input 2))
(defvar x 0)
(defvar y 0)

(loop for line in input
    do (let ((command (str:split " " line)))
            (let (
                    (operation (first command))
                    (value (parse-integer(second command))))
                (cond 
                    ((string= operation "up") (decf y value))
                    ((string= operation "down") (incf y value))
                    ((string= operation "forward") (incf x value))))))

(format T "x: ~a, y: ~a, answer: ~a" x y (* x y))