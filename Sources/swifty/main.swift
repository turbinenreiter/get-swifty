import Glibc

func countdown(dt: Int) -> Int {
    print(dt)
    if(dt >= 1) {
        sleep(1)
        return countdown(dt: dt - 1)
    } else {
        return 0
    }
}

if CommandLine.argc < 2 {
    print("No arguments are passed.")
    exit(1)
} else {
    exit(Int32(countdown(dt: Int(CommandLine.arguments[1])!)))
}
