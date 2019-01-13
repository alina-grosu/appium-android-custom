FROM appium/appium

COPY run_x11vnc_server.sh /root/
RUN chmod +x /root/run_x11vnc_server.sh
RUN apt-get -y install x11vnc

EXPOSE 5900

CMD /root/wireless_autoconnect.sh && \
#    /root/entry_point.sh && \
    /root/run_x11vnc_server.sh