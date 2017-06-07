FROM debian:jessie

# Install XeTeX
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends install -y --force-yes \
        texlive-xetex \
        texlive-latex-recommended \
        texlive-fonts-recommended \
        latex-xcolor \
        texlive-latex-extra \
        latexmk \
	      lmodern \
        make && \
    tlmgr init-usertree && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash xetex
USER xetex
WORKDIR /home/xetex
