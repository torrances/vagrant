# create the directories
export MAVEN_HOME=/usr/lib/apache/maven/3.3.9
export PATH=$MAVEN_HOME/bin:$PATH

if [ ! -d "$MAVEN_HOME" ]; then
    sudo mkdir -p $MAVEN_HOME
    
    #   download and extract the files
    cd $MAVEN_HOME
    sudo wget http://mirrors.koehn.com/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
    sudo tar -zxvf apache-maven-3.3.9-bin.tar.gz
    
    #   massage the directory structure and cleanup
    sudo rm apache-maven-3.3.9-bin.tar.gz
    sudo mv apache-maven-3.3.9/* .
    sudo rm -rf apache-maven-3.3.9/
fi