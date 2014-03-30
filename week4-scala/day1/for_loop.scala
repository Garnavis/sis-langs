def forLoop {
    println("for loop using Java-stle iteration")
    for (i <- 0 until args.length) {
        println(args(i))
    }
}

forLoop

