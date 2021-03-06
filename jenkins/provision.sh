rpm -Uvh http://repos.mesosphere.com/el/7/noarch/RPMS/mesosphere-el-repo-7-3.noarch.rpm

yum update -y
useradd -u 203 -g 1992 jenkins

yum install -y cyrus-sasl java-1.8.0-headless which bash
yum install -y mesos-1.0.4 
yum install -y fontconfig dejavu-sans-fonts

mkdir -p /usr/lib/jenkins
curl -o /usr/lib/jenkins/jenkins.war https://get.jenkins.io/war-stable/2.46.3/jenkins.war
yum versionlock add mesos

yum clean all -y
