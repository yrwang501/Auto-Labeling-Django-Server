spark-submit \
--verbose \
--master local[2] \
--driver-memory 8g \
--class com.intel.analytics.bigdl.models.resnet.TrainKfbio \
/home/django/AI-Master-0.1.0-SNAPSHOT-jar-with-dependencies.jar \
--batchSize 2 --nEpochs 30 --learningRate 0.1 --warmupEpoch 5 \
--maxLr 3.2 --depth 50 --classes 2 \
--coreSitePath /home/django/core-site.xml \
--hbaseSitePath /home/django/hbase-site.xml \
--hbaseTableName kfb_512 --rowKeyStart 000000001 --rowKeyEnd 000000051 \
--modelSavingPath /home/django/jupyter_notebooks/training_test_acc_30.obj

