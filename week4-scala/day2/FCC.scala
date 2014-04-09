import scala.io.Source;
import scala.collection.mutable.HashMap;

object FCC extends Censor {
    def main(args: Array[String]) = {
        m = mkMap(Source.fromFile(args(0)).mkString.split("\n"))
        val words = Source.fromFile(args(1)).mkString.split(" ")
        words.foreach(word => print(censor(word) + " "))
        println
    }

    def mkMap(lines: Array[String]): HashMap[String, String] = {
        var map = new HashMap[String, String]
        lines.foreach(line => {
            val pair = line.trim.split("\t")
            if (pair.length >= 2) {
                println(pair(0) + " -> " + pair(1))
                map.put(pair(0), pair(1))
            }
        })
        return map
    }
}

