  <role rolename="manager-gui" />
<user username="manager" password="admin" roles="manager-gui" />

<role rolename="admin-gui" />
<user username="admin" password="admin" roles="manager-gui,admin-gui" />

<role rolename="deploy-gui" />
<user username="deployer" password="deployer" roles="manager-gui,admin-gui,deployer-gui, manager-script" />


sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.112/bin/apache-tomcat-9.0.112.tar.gz
 
sudo tar -xvf apache-tomcat-9.0.112.tar.gzd 
cd /opt/apache-tomcat-9.0.112/conf
sudo vim tomcat-users.xml
<-- add users roles and password -- >
sudo In -s /opt/apache-tomcat-9.0.112/bin/startup.sh  /usr/bin/startTcomcat
sudo ln -s /opt/apache-tomcat-9.0.112/bin/shutdown.sh /usr/bin/stopTomcat

sudo vi /opt/apache-tomcat-9.0.112/webapps/manager/META-INF/contex.xml
do the needful
sudo vi /opt/apache-tomcat-9.0.112/webapps/host-manager/META-INF/context.xml
do the needful
sudo stopTomcat
sudo startTcomcat

