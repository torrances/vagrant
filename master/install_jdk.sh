#!/usr/bin/env bash

################################################################################################################
# 	NOTES:
#	1. 	18-Jan-2016
# 		this script works, but generates a lot of gobbledygook in the console
# 		as a result, it's probably best to run this last
#
#	ALT. IMPLEMENTATIONS:
#	1.	Puppet: 	
# 		<http://blogs.atlassian.com/2013/03/instant-java-provisioning-with-vagrant-and-puppet-stash-one-click-install/>
################################################################################################################

apt-get -y -q update
apt-get -y -q upgrade
apt-get -y -q install software-properties-common htop
add-apt-repository ppa:webupd8team/java
apt-get -y -q update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-get -y -q install oracle-java8-installer
apt-get -y -q install oracle-java7-installer
update-java-alternatives -s java-8-oracle