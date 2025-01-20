FROM pangeo/pangeo-notebook:2025.01.10

ENV STUDENT_GID=1010 \
    STUDENT_GROUP=erca-student

USER root

RUN echo "Installing packages..." \
    && apt-get update --fix-missing > /dev/null \
    && apt-get install -y gcc gfortran nco cdo make emacs > /dev/null \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Adding user to student group..." \
    && groupadd --gid ${STUDENT_GID} ${STUDENT_GROUP} \
    && usermod -aG ${STUDENT_GROUP} ${NB_USER}

USER ${NB_USER}
