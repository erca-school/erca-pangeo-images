FROM ghcr.io/erca-school/student:main

ENV STAFF_GID=1011 \
    STAFF_GROUP=erca-staff

USER root

RUN echo "Adding ${NB_USER} user to staff group..." \
    && groupadd --gid ${STAFF_GID} ${STAFF_GROUP} \
    && usermod -aG ${STAFF_GROUP} ${NB_USER}

USER ${NB_USER}
