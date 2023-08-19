FROM btpanel/bt
MAINTAINER YourName <your_email@example.com>


ENV BT_PANEL_USERNAME=admin
ENV BT_PANEL_PASSWORD=123456

RUN /etc/init.d/bt start && \
    sleep 5 && \
    /etc/init.d/bt default_install ${BT_PANEL_USERNAME} ${BT_PANEL_PASSWORD}

# Expose port 8888 for web access
EXPOSE 80
