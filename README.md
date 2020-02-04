# RNASeqVM

VM hosting RNA seq analysis packages: Outrider<sup>1</sup> and FRASER<sup>2</sup>. The purpose of this VM is to provide an easy to use platform which has OUTRIDER and FRASER already installed.

Both these packages were recently presented at ASHG 2019. For a short tutorial on how to use OUTRIDER and FRASER, please refer to the Colab tutorial (http://tinyurl.com/RNA-ASHG-colab) that was presented by the team.

<sup>1</sup> Brechtmann, F., Mertes, C., Matusevičiūtė, A., Yépez, V. A., Avsec, Ž., Herzog, M., Bader, D. M., Prokisch, H., & Gagneur, J. (2018). OUTRIDER: A Statistical Method for Detecting Aberrantly Expressed Genes in RNA Sequencing Data. The American Journal of Human Genetics, 103(6), 907–917. https://doi.org/10.1016/j.ajhg.2018.10.025

<sup>2</sup> Mertes, C., Scheller, I., Yépez, V. A., Çelik, M. H., Liang, Y., Kremer, L. S., Gusic, M., Prokisch, H., & Gagneur, J. (2019). Detection of aberrant splicing events in RNA-seq data with FRASER. BioRxiv, 2019.12.18.866830. https://doi.org/10.1101/2019.12.18.866830

## Pre-requisties
* [Virtualbox](https://www.virtualbox.org/wiki/Downloads) 6.0+ is installed
* [Vagrant](https://www.vagrantup.com/downloads.html) is installed

## How to launch?
1. Navigate to the R project folder
2. Launch vagrant instance
Note: This will taken some time (30 min+) the very first time to download the 2.4 Gb image
The command below will launch the instance

```bash
vagrant init kidsneuroscience/RNASeqVM \
--box-version 1.0.0
vagrant up
```
3. Once launched, your R project folder will be mapped to ```~/vagrant```

## How to use?

### To SSH into the box
```bash
vagrant ssh
```
### To access RStudio
1. In your browser of choice, navigate to (http://127.0.0.1:9000)
2. Enter username: *vagrant*, password: *vagrant* to login

### How can I access my local files?
The folder where you have brought up the vagrant instance (i.e. where you entered ```vagrant init, up ..```) is mapped to ```vagrant``` folder inside the virtual machine
