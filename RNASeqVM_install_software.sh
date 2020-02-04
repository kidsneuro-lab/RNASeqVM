#!/bin/sh

# Add R repo
sudo bash -c 'echo "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/" >> /etc/apt/sources.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

# Install all updates
sudo apt-get update -y -q
sudo apt upgrade -y -q

# Install R packages
sudo apt-get install r-base -y -q
sudo apt-get install r-base-dev -y -q

# This installs curl-config (required by RCurl later when installing R packages)
sudo apt-get install libcurl4-openssl-dev -y -q
sudo apt-get install libxml2-dev -y -q

# Setting up CRAN repo of choice
echo 'options(repos=structure(c(CRAN="https://mirror.aarnet.edu.au/pub/CRAN/")))' > ~/.Rprofile

# Installing R packages
Rscript /tmp/RNASeqVM_install_R_packages.R

# Install RStudio server
sudo apt-get install gdebi-core -y -q
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.5033-amd64.deb
sudo gdebi rstudio-server-1.2.5033-amd64.deb -q -n
rm -f rstudio-server-1.2.5033-amd64.deb

# Cleaning up unnecessary packages
sudo apt autoremove -y -q -q
sudo apt autoclean -y -q -q