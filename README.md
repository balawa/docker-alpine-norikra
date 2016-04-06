docker-alpine-norikra
=================================

Docker image for [Norikra](http://norikra.github.io/) based on [AlpineLinux](http://alpinelinux.org/)

Usage
---------------------------------

Example:

    docker run -d -p 26571:26571 -p 26578:26578 -p 8778:8778 -v /var/tmp/norikra:/var/tmp/norikra:rw laughingman7743/docker-alpine-norikra --stats /var/tmp/norikra/stats.json
