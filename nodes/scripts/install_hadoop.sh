# create the directories
export HADOOP_HOME=/usr/lib/apache/hadoop/2.6.3/
export PATH=$HADOOP_HOME/bin:$PATH


if [ ! -d "$HADOOP_HOME" ]; then
	sudo mkdir -p $HADOOP_HOME

	cd $HADOOP_HOME
	sudo wget http://apache.claz.org/hadoop/common/hadoop-2.6.3/hadoop-2.6.3.tar.gz
	sudo tar -zxvf hadoop-2.6.3.tar.gz

	#   massage the directory structure and cleanup
    sudo rm hadoop-2.6.3.tar.gz
    sudo mv hadoop-2.6.3/* .
    sudo rm -rf hadoop-2.6.3/

fi