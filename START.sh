docker run --name sshd --rm -it -p 38322:22 -v `pwd`/data:/data sshd:$1-alpine
