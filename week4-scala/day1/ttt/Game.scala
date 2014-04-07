package ttt;

println("Welcome to tic tac toe!")
board b = new Board("   |   |   ")
var r = false
var nextChar = 'X'
var input = ''
val spaces = Map(
    "nw" -> (0, 0),
    "n"  -> (0, 1),
    "ne" -> (0, 2),
    "w"  -> (1, 0),
    "c"  -> (1, 1),
    "e"  -> (1, 2),
    "sw" -> (2, 0),
    "s"  -> (2, 1),
    "se" -> (2, 2)
)

do {
    println("Player " + nextChar + ", pick a square.")
    input = readLine("> ")
    if (spaces.contains(input)) {

    }
} while (!r)
