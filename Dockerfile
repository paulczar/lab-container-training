#FROM quay.io/eduk8s/workshop-dashboard:master

FROM quay.io/eduk8s/base-environment:200601.040417.e1f4cba

# USER root

# RUN dnf install tree tee

# USER 1001

COPY --chown=1001:0 workshop /opt/eduk8s/workshop

COPY --chown=1001:0 examples /home/eduk8s/examples

# RUN find /opt/eduk8s/workshop/setup.d -executable -type f -exec bash {} \;


# RUN mv /home/eduk8s/workshop /opt/workshop

# RUN fix-permissions /home/eduk8s
