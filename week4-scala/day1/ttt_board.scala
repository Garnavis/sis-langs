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
     * Determine the result of a line.
     * Returns:
     * - 'X' if the winner is X
     * - 'O' if the winner is O
     * - '_' if there is no winner
     * - '!' if the line is invalid
     */
    def result(l: List[Char]) = {
        if (l.map(c => valid(c)).contains(false)) '!'
        if (!l.map(c => c.equals('X')).contains(false)) 'X'
        if (!l.map(c => c.equals('O')).contains(false)) 'O'
        '_'
    }

    def winner: Boolean = {
        val results = all.map(l => result(l))
        if (results.contains('!')) {
            println("This board is invalid!")
            return false
        }

        results.foreach { r =>
            if (r == 'X') {
                println("X wins!")
                return true
            } else if (r == 'O') {
                println("O wins!")
                return true
            }
        }

        println("Nobody wins!")
        return false
    }

}

new Board("XXX|   |   ").winner
new Board("O  | O |  O").winner
new Board(" X |OOO|X  ").winner
new Board("   |   |   ").winner
new Board("XOO|OXX|OXO").winner

