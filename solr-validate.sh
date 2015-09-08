cd /opt/lucidworks-hdpsearch/solr/server/solr/configsets/hdp1
sudo -u solr hadoop jar hadoop-lws-job-1.2.0-0-0.jar com.lucidworks.hadoop.ingest.IngestJob -Dlww.commit.on.close=true -DcsvFieldMapping=0=id,1=text -cls com.lucidworks.hadoop.ingest.CSVIngestMapper -c hdp1 -i /user/solr/data/csv/mydata.csv -of com.lucidworks.hadoop.io.LWMapRedOutputFormat -s http://ip-10-6-3-28.ec2.internal:8983/solr
