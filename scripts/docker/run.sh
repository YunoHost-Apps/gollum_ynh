#!/bin/bash

# example :
#
# [ "$architecture" == "amd64" ] && image=portainer/portainer:1.14.0
# [ "$architecture" == "i386" ]  && image=portainer/portainer:linux-386-1.14.0
# [ "$architecture" == "armhf" ] && image=portainer/portainer:linux-arm-1.14.0
# [ -z $image ] && ynh_die "Sorry, your $architecture architecture is not supported ..."

# options="-p $port:9000 -v $data_path/data:/data"

# docker run -d --name=$app --restart always $options $image 1>&2
# echo $?

[ "$architecture" == "amd64" ] && image=gollumorg/gollum:latest
[ -z $image ] && ynh_die "Sorry, your $architecture architecture is not supported ..."

options="-p $port:4567 -v $data_path/wiki:/wiki"

docker run -d --name=$app --restart always $options $image 1>&2
echo $?
