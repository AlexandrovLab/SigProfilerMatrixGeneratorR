library(devtools)
install_github("AlexandrovLab/SigProfilerMatrixGeneratorR@development")

library(reticulate)
py_config()

library(SigProfilerMatrixGeneratorR)

cnv <- CNVMatrixGenerator("BATTENBERG",
                          "./test_data/CNV/Battenberg_test.tsv",
                          "test_CNV",
                          "./test_data/output_CNV")


sv <- SVMatrixGenerator("./test_data/SV",
                          "test_CNV",
                          "./test_data/output_SV")

