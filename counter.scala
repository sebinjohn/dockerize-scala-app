
object Counter {
    def repeat(i: Integer): Unit = {
        println(i)
        Thread.sleep(1000)
        repeat(i + 1)
    }
    def main(args: Array[String]) {
        repeat(0)
    }
}
