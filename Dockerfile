#FROM quay.io/eduk8s/workshop-dashboard:master

FROM quay.io/eduk8s/base-environment:200518.d8f9aef

COPY --chown=1001:0 workshop /opt/eduk8s/workshop

# COPY --chown=1001:0 . /home/eduk8s/

# RUN mv /home/eduk8s/workshop /opt/workshop

# RUN fix-permissions /home/eduk8s
