# Docker image fedora-sshd

This image runs a ssh server to provide connection to a runtime defined user.
User authentication is done through a ssh key, also provided at runtime.

Run the image through:

    docker run -e SSHUSER=<username> -e SSHKEY=<ssh-authorized-key>  quin/fedora-sshd

where

    <username> is the user you want to have within the image (the default provided on build is "fedora")
    <ssh-authorized-key> is the ssh public key of the user you want to connect with.
