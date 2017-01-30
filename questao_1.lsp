;questao 1 lisp
(setq entrada (open "C:\Users\Jaime\Desktop\ECT - UFRN\Paradigmas de Programação\Lista 2 Lisp Jaime\ufrn.ppm"))
(read-line entrada)
(read-line entrada)
(setq largura (read entrada))
(setq altura (read entrada))
(read-line entrada)
(format t "-a -a~%" largura altura))

(with-open-file
	(out "Logo_ufrn.html" :direction :output)
	(format out "<html>~%")
	(format out "TABLE BORDER=2 CELLPADDING=1 CELLSPACING=1>~%)
	(loop for i from 1 to altura do
		(format out "<tr>")
		(loop for j from 1 to largura do
			(if (eq 0 (mod j 2)
				(format out "<td bgcolor= #~(~3, ´0x~|)~(~3, ´0x~)~(~3, ´0x~)>1</td>" (read entrada) (read entrada) (read entrada))
				(format out "<td bgcolor= #~(~3, ´0x~|)~(~3, ´0x~)~(~3, ´0x~)>0</td>" (read entrada) (read entrada) (read entrada))
				)
			)
			(format out "</tr>~%")
		)
		(format out "</tr>~%)
	)
	(format out "</table>~%</html>")
)
(close entrada)
		

