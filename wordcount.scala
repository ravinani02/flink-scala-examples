import org.apache.flink.api.scala._

object WordCount {
  def main(args: Array[String]) {
    val env = ExecutionEnvironment.getExecutionEnvironment
    val text = env.readTextFile("/opt/flink/usrlib/wordcount.txt")

    val counts = text.flatMap { _.toLowerCase.split("\\W+") }
                     .map { (_, 1) }
                     .groupBy(0)
                     .sum(1)

    counts.writeAsText("/opt/flink/usrlib/wordcount_results.txt")
    env.execute("WordCount")
  }
}