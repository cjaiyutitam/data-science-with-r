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
