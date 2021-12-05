(ql:quickload "str")


(defun read-input (day)
    (str:split 
        #\newline
        (str:from-file 
            (format nil "input/input-day-~a.txt" day))))