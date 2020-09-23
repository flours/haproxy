FROM haproxy:2.2
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY startup.sh /root/startup.sh
RUN chmod +x /root/startup.sh
ENTRYPOINT ["/root/startup.sh"]
