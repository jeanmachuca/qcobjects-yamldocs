FROM --platform=$BUILDPLATFORM node:17.0.1-bullseye-slim as builder
FROM composer
ADD ./install.sh /usr/local/bin/install.sh

RUN ["chmod", "+x", "/usr/local/bin/install.sh"]
RUN ["/usr/local/bin/install.sh"]
CMD ["/bin/bash"]