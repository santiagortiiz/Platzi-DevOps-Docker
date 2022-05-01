docker commit <container> [options] <repository>:<tag>
docker commit --change="ENTRYPOINT=["tail -f /dev/null"]" vm ubuntu:configured