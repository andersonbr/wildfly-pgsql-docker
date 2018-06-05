#jdbc postgresql

curl -O $PGDOWNLOADURL
mkdir -p $PGMODBASE
mv $PGJDBCFILE $PGMODBASE
cat << EOF > $PGMODBASE/module.xml
<module name="org.postgresql" xmlns="urn:jboss:module:1.5">
    <resources>
        <resource-root path="$PGJDBCFILE"/>
    </resources>
    <dependencies>
        <module name="javax.api"/>
        <module name="javax.transaction.api"/>
        <module name="javax.servlet.api" optional="true"/>
    </dependencies>
</module>
EOF
