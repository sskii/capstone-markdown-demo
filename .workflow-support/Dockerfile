# This Dockerfile takes the existing Pandoc container with a minimal LaTeX
# installation and adds in the missing packages needed for our project

# Using Docker means this can be run on GitHub actions and your local
# machine equally well. If you're unfamiliar with Docker you might find
# these useful:
# https://youtu.be/Gjnup-PuquQ?si=WguWe7H-IRTTtzJf as a primer explaining what Docker does
# https://youtu.be/gAkwW2tuIqE?si=EE-69CrFwADqYxNI will explain what's happening in ./testscript.sh

# build on top of the publicly available Pandoc LaTeX container
# https://hub.docker.com/r/pandoc/latex
FROM pandoc/latex:3.1.1.0-ubuntu

# install missing packages
# packages for Capstone report template
RUN tlmgr install collection-fontsrecommended
RUN tlmgr install bookman
