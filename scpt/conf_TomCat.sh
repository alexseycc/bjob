echo "<user username=\"admin\" password=\"admin\" roles=\"manager-gui,manager-script,manager-jmx,manager-status,admin-gui,admin-script\"/>
</tomcat-users>
cat `/goormService/tomcat7/conf/tomcat-users.xml` " > /goormService/tomcat7/conf/tomcat-users.xml
sed "72a\\\t\\tURIEncoding=\"UTF-8\"" -i /goormService/tomcat7/conf/server.xml
