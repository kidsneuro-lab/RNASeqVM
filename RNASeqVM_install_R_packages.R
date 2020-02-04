print("Creating user libraries directory")
dir.create(path = Sys.getenv("R_LIBS_USER"), showWarnings = FALSE, recursive = TRUE)

# Installing BiocManager
print("Installing BiocManager")
install.packages("BiocManager", quiet=TRUE)

# Install OUTRIDER
print("Installing OUTRIDER")
BiocManager::install(c("GenomicRanges","SummarizedExperiment","genefilter","geneplotter"), quiet=TRUE)
BiocManager::install("OUTRIDER", quiet=TRUE)

# Install FRASER
print("Installing FRASER")
install.packages('devtools', quiet=TRUE)
devtools::install_github('gagneurlab/FRASER', dependencies=TRUE, quiet=TRUE)

# Install few other Bioconductor packages that may be handy
print("Installing few other Bioconductor packages that may be handy")
BiocManager::install("biomaRt", quiet=TRUE, update=TRUE)
install.packages(c('ggplot2','data.table'), quiet=TRUE)

print("Complete")
quit(save="no")