FROM pangeo/pangeo-notebook:2025.01.10

ENV STAFF_GID=1010

RUN echo "Installing packages..." \
    && apt-get update --fix-missing > /dev/null \
    && apt-get install -y gcc gfortran nco cdo make emacs > /dev/null \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Adding ${NB_USER} user to staff group..." \
    && groupadd --gid ${STAFF_GID} ${NB_USER}
