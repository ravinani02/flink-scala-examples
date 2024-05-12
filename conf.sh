FLINK_PROPERTIES="jobmanager.rpc.address: localhost
jobmanager.rpc.port: 6123
jobmanager.memory.process.size: 1024mb
taskmanager.memory.process.size: 1024mb
taskmanager.memory.jvm-metaspace.size: 256mb
jobmanager.heap.size: 256mb
taskmanager.heap.size: 256mb
taskmanager.memory.managed.fraction: 0.5
taskmanager.memory.network.min: 64mb
taskmanager.memory.network.max: 256mb
taskmanager.numberOfTaskSlots: 2
parallelism.default: 2
"

docker run -d -p 8081:8081  \
-m 4g \
-v /Users/ravitejasagiraju/flink/logs:/opt/flink/log \
-v /Users/ravitejasagiraju/flink/usrlib:/opt/flink/usrlib \
-e DISABLE_JEMALLOC=true \
-e FLINK_PROPERTIES=${FLINK_PROPERTIES} \
--name flink-scala-demo \
flink:scala_2.12-java17 standalone-job


taskmanager.memory.flink.size: 1024m
taskmanager.memory.task.heap.size: 512m
taskmanager.memory.managed.size: 256m
taskmanager.memory.framework.heap.size: 256m
taskmanager.memory.framework.off-heap.size: 128m
taskmanager.memory.network.min: 64m
taskmanager.memory.network.max: 256m


-e JOB_CLASS_NAME="com.job.WordCount" \


docker run -d -p 8081:8081  \
-m 4g \
-v /Users/ravitejasagiraju/flink/logs:/opt/flink/log \
-v /Users/ravitejasagiraju/flink/usrlib:/opt/flink/usrlib \
-e DISABLE_JEMALLOC=true \
-e FLINK_PROPERTIES=${FLINK_PROPERTIES} \
--name flink-scala-demo \
flink:1.19.0-scala_2.12 standalone-job



taskmanager.memory.process.size: 1024mb
taskmanager.memory.jvm-metaspace.size: 256mb
taskmanager.heap.size: 256mb
taskmanager.memory.managed.fraction: 0.5
taskmanager.memory.network.min: 64mb
taskmanager.memory.network.max: 256mb



docker exec -it fdf0d65889e7 flink run /opt/flink/usrlib/wordcount_2.12-1.0.jar #session mode submitting a job

docker-compose up  --abort-on-container-exit #standalone job running mode and exiting both containers after job completion taskmanager and jobmanager






