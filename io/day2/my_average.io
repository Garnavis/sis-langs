List myAverage := method(
    if(isEmpty,
        Exception raise("List is empty."),
        sum / size))
