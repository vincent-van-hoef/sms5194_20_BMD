chk_pkgs 	<- c("BiocManager", "kableExtra", "openxlsx", "factoextra", "FactoMineR", "cowplot", "ggpubr", "mixOmics", "PCAtools", "limma", "mCSEA")

suppressPackageStartupMessages(
  sapply(chk_pkgs, require, character.only=TRUE, quietly=FALSE, warn.conflicts=FALSE)
) -> ret

missing_pkgs <- sort(names(which(ret == FALSE)))

if (length(missing_pkgs) > 0) {
  warning("The following packages are not installed: %s", 
          paste0(sprintf("  - %s", missing_pkgs), collapse="\n"))
}

quit(save="no", status=length(names) == 0, runLast = FALSE)
