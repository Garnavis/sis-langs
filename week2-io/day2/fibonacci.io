fib := method(number,
    fib_r(1, 1, 1, number) println
    fib_i(number) println
    nil)

fib_r := method(firstNum, secondNum, count, end,
    if(count == end,
        firstNum,
        fib_r(secondNum, firstNum + secondNum, count + 1, end)))

fib_i := method(end,
    firstNum := 1
    secondNum := 1
    tempNum := 0
    count := 1
    while(count < end,
        tempNum = firstNum + secondNum
        firstNum = secondNum
        secondNum = tempNum
        count = count + 1)
    firstNum)

