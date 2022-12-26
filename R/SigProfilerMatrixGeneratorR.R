#' @title
#'
#' @description
#'
#' @param
#'
#' @return
#'
#' @examples
#'
#' @export SigProfilerMatrixGeneratorR


SigProfilerMatrixGeneratorR <- function(project, genome, matrix_path, exome=F, bed_file=NULL, chrom_based=F, plot=F, tsb_stat=F, seqInfo=F, cushion=100, gs=F) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")

  matGen <- reticulate::import("SigProfilerMatrixGenerator.scripts.SigProfilerMatrixGeneratorFunc")
 
  
  matrices <- matGen$SigProfilerMatrixGeneratorFunc(project, genome, matrix_path, exome, bed_file, chrom_based, plot, tsb_stat, seqInfo, cushion, gs)
   
   
  sys$stdout$flush()
  return(matrices)
}

#' @export CNVMatrixGenerator
CNVMatrixGenerator <- function(file_type, input_file, project, output_path) {
  cnv <- reticulate::import("SigProfilerMatrixGenerator.scripts.CNVMatrixGenerator")
  cnv_matrices <- cnv$generateCNVMatrix(file_type, input_file, project, output_path)
  sys$stdout$flush()
  return(cnv_matrices)

}

#' @export SVMatrixGenerator
SVMatrixGenerator <- function(input_dir, project, output_dir) {
   sv <- reticulate::import("SigProfilerMatrixGenerator.scripts.SVMatrixGenerator")
   sv_matrices <- sv$generateSV(input_dir, project, output_dir)
   sys$stdout$flush()
   return(sv_matrices)

}

#' @export install
install <- function(genome, custom=F, rsync=F, bash=T, ftp=T){
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  genInstall <- reticulate::import("SigProfilerMatrixGenerator.install")
  genInstall$install(genome, custom, rsync, bash, ftp)
  sys$stdout$flush()
  }
