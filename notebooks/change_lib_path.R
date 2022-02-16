# check the default library paths
.libPaths()

# add a new library path
.libPaths(new = "/packages")

# check to see if the new library path was added
.libPaths()


# install the pheatmap package
install.packages("pheatmap")

# load package
library(pheatmap)

# create an example heatmap
pheatmap(as.matrix(iris[, -5]))