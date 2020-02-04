print("Creating user libraries directory")
dir.create(path = Sys.getenv("R_LIBS_USER"), showWarnings = FALSE, recursive = TRUE)

# Installing BiocManager
print("Installing BiocManager")
install.packages("BiocManager", quiet=TRUE, lib=Sys.getenv("R_LIBS_USER"))

# Install OUTRIDER
print("Installing OUTRIDER")
BiocManager::install(c("GenomicRanges","SummarizedExperiment","genefilter","geneplotter"), quiet=TRUE, lib=Sys.getenv("R_LIBS_USER"))
BiocManager::install("OUTRIDER", quiet=TRUE, lib=Sys.getenv("R_LIBS_USER"))

# Install FRASER
print("Installing FRASER")
install.packages('devtools', quiet=TRUE, lib=Sys.getenv("R_LIBS_USER"))
devtools::install_github('gagneurlab/FRASER', dependencies=TRUE, quiet=TRUE)

# Install few other Bioconductor packages that may be handy
print("Installing few other Bioconductor packages that may be handy")
BiocManager::install("biomaRt", quiet=TRUE, update=TRUE, lib=Sys.getenv("R_LIBS_USER"))
install.packages(c('ggplot2','data.table'), quiet=TRUE, lib=Sys.getenv("R_LIBS_USER"))

print("Complete")
quit(save="no")
