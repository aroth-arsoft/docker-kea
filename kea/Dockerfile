 
FROM tomcraftmc/kea-dhcp:latest

VOLUME ["/usr/local/etc/kea","/var/lib/kea"]

ADD docker-entrypoint.sh /docker-entrypoint.sh
ADD config/* /usr/local/etc/kea/

EXPOSE 67/tcp
EXPOSE 67/udp
EXPOSE 8000

ENTRYPOINT [ "/docker-entrypoint.sh" ]

#ENTRYPOINT ["kea-dhcp4", "-c", "/usr/local/etc/kea/kea-dhcp4.conf"]
