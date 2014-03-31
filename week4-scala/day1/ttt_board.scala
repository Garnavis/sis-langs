/**
 * A Board is described by a String in three sequences of three characters
 * divided by the pipe character and using spaces for blanks.
 *
 * For example: "X X|OOX|  O" describes this board:
 * X| |X
 * -----
 * O|O|X
 * -----
 *  | |O
 */
class Board(s: String) {

    val board  = s.split("\\|").toList.map(r => r.toCharArray.toList)

    /* Get the nth row. */
    def row(n: Int) = board(n)

    /* Get the nth column. */
    def col(n: Int) = board.map(row => row(n))

    /* Get the major diagonal. */
    def maj() = board(0)(0) :: board(1)(1) :: board(2)(2) :: Nil

    /* Get the minor diagonal. */
    def min() = board(0)(2) :: board(1)(1) :: board(2)(0) :: Nil

    /* Get all of the rows. */
    def rows() = row(0) :: row(1) :: row(2) :: Nil

    /* Get all of the columns. */
    def cols() = col(0) :: col(1) :: col(2) :: Nil

    /* Get all possible rows, columns, and diagonals. */
    def all() = rows ::: cols :: maj :: min :: Nil

    /* true if the input is a valid character */
    def valid(c: Char) = List('X', 'O', ' ') contains c

    /**
     * Determine the winner of a line.
     * Returns:
     * - 'X' if the winner is X
     * - 'O' if the winner is O
     * - '_' if there is no winner
     * - '!' if the line is invalid
     */
    def winner(l: List[Char]): Char {
        if (l.map(valid).contains(false)) return '!'
        // TODO
    }
}

val b = new Board("abc|def|ghi")

println("All rows:")
b.rows().foreach(row => println(row))

println("All columns:")
b.cols().foreach(col => println(col))

println("Both diagonals:")
println(b.maj)
println(b.min)

println("Everything:")
println(b.all)

