(load "util.lisp")

(defvar input (read-input 2))
(defvar x 0)
(defvar y 0)
(defvar aim 0)

(defun parse-operation (command)
    (first (str:split " " command)))

(defun parse-value (command)
    (parse-integer (second (str:split " " command))))

(defun move (amount)
    (progn
        (incf x amount)
        (incf y (* aim amount))))

(loop for line in input
    do (let (
            (operation (parse-operation line))
            (value (parse-value line)))
        (cond 
            ((string= operation "up") (decf aim value))
            ((string= operation "down") (incf aim value))
            ((string= operation "forward") (move value)))))

(format T "x: ~a, y: ~a, answer: ~a" x y (* x y))