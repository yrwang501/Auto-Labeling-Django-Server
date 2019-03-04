$SPARK_HOME/bin/spark-submit --master "spark://ai-master-bigdl-0.sh.intel.com:7077" \
    --conf 'spark.driver.extraJavaOptions=-Dbigdl.engineType=mkldnn'\
    --conf 'spark.executor.extraJavaOptions=-Dbigdl.engineType=mkldnn' \
    --driver-memory 4g --class com.intel.analytics.bigdl.models.resnet.test \
	--total-executor-cores 48\
	--executor-cores 24\
/home/django/AI-Master-0.1.0-SNAPSHOT-jar-with-dependencies.jar \
/home/django/core-site.xml \
/home/django/hbase-site.xml \
/home/django/model_new_helper_API_10.obj \
kfb_512_100_test 000000001 000000031 30
