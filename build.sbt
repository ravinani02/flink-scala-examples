name := "WordCount"

version := "1.0"

scalaVersion := "2.12.19" // replace with your Scala version

libraryDependencies ++= Seq(
  "org.apache.flink" %% "flink-scala" % "1.19.0", // replace with your Flink version
  "org.apache.flink" %% "flink-streaming-scala" % "1.19.0" // replace with your Flink version
)

assemblyMergeStrategy in assembly := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x =>
    val oldStrategy = (assemblyMergeStrategy in assembly).value
    oldStrategy(x)
}