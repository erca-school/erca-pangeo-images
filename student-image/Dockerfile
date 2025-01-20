FROM pangeo/pangeo-notebook:2025.01.10

ENV STUDENT_GID=1010

RUN echo "Installing additional packages..." \
    && apt-get update --fix-missing > /dev/null \
    && apt-get install -y gcc gfortran nco cdo make emacs > /dev/null \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Adding ${NB_USER} user to student group..." \
    && groupadd --gid ${STUDENT_GID} ${NB_USER}
