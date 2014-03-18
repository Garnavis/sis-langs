Matrix := List clone

Matrix dim := method(x, y,
    y repeat(append(list()))
    foreach(row, x repeat(row append(nil)))
    self)

Matrix set := method(x, y, value,
    at(y) atPut(x, value)
    value)

Matrix get := method(x, y,
    at(y) at(x))

Matrix transpose := method(
    other := Matrix clone
    other copy(self)
    other print
    empty
    Range 0 to(size - 1) foreach(i, append(other map(row, row at(i)))))

Matrix print := method(
    foreach(row, row println))

matrix := Matrix clone
matrix dim(3, 3)
matrix set(0, 0, 1)
matrix set(0, 1, 2)
matrix set(0, 2, 3)
matrix set(1, 0, 4)
matrix set(1, 1, 5)
matrix set(1, 2, 6)
matrix set(2, 0, 7)
matrix set(2, 1, 8)
matrix set(2, 2, 9)
matrix print

