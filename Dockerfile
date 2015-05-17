FROM fedora
RUN yum install -y xorg-x11-apps
RUN yum install -y linphone
RUN yum install -y gtk-unico-engine
RUN yum install -y gnome-shell-theme*
ENV DISPLAY :0
CMD ip a
CMD linphone
