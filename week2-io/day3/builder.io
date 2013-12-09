Builder := Object clone
Builder spaces := 0

Builder forward := method(
    spaces repeat(" " print)
    spaces = spaces + 2
    write("<", call message name)
    if(call message argAt(0) type == Map,
        call message argAt(0) keys foreach(key,
            write(" ", key, "=", call message argAt(0) at(key))
        )
    )
    writeln(">")
    call message arguments foreach(arg,
        content := self doMessage(arg);
        if(content type == "Sequence",
            spaces repeat(" " print); writeln(content))
    )
    spaces = spaces - 2
    spaces repeat(" " print)
    writeln("</", call message name, ">")
)

attrs := Map clone
attrs atPut("type", "unordered-list")
attrs atPut("name", "languages")
Builder ul(
    attrs,
    li("Io"),
    li("Lua"),
    li("JavaScript")
)

