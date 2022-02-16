# Data science for production tools

## docker command

```bash
docker run --rm \
           -p 8888:8787 \
           -d \
           --name rstudio_server \
           -v ${PWD}/packages:/packages \
           -v ${PWD}/notebooks:/home/rstudio/notebooks \
           -e PASSWORD=password \
           -e USERID=$(id -u) \
           -e GROUPID=$(id -g) \
           rstudio

# -N Do not execute a remote command. This is useful for just forwarding ports
# -f Requests ssh to go to background just before command execution
# -Y Enables trusted X11 forwarding
# -L Specifies that connections to the given TCP port or Unix socket on the local (client) host are to be forwarded to the given host and port

ssh -N -f -Y -L 8888:localhost:8888 dtang@192.168.1.42
```

## lib packages

```R
options(encoding = "UTF-8")

# check the default library paths
.libPaths()
[1] "/usr/local/lib/R/site-library" "/usr/local/lib/R/library"

# add a new library path
.libPaths(new = "/packages")

# check to see if the new library path was added
.libPaths()
[1] "/packages"                     "/usr/local/lib/R/site-library" "/usr/local/lib/R/library"

# install the pheatmap package
install.packages("pheatmap")

# load package
library(pheatmap)

# create an example heatmap
pheatmap(as.matrix(iris[, -5]))
```
