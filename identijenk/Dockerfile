FROM jenkins:1.609.3
USER root
RUN apt-get update \
	&& apt-get install -y apt-utils \
	&& apt-get install -y apt-transport-https \
	&& apt-get install -y ca-certificates \
	&& apt-get install -y curl \
	&& apt-get install -y gnupg2 \
	&& apt-get install -y software-properties-common \
	&& apt-get install -y sudo \
	&& curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
	&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
	&& apt-get update \
	&& apt-get install -y docker.io \
#	&& apt-get install -y --force-yes containerd.io \
#	&& apt-get install -f -y \
	&& rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
USER jenkins
