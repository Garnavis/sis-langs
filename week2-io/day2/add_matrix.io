"Adding this matrix:" println
matrix := list(list(1,2,3),list(4,5,6),list(7,8,9))
matrix foreach(row, row println)

"Summing rows..." println
sums := matrix map(row, row sum)
sums println

"Summing sums..." println
total := sums sum
total println

