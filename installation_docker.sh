# Pour installer docker :
# - rendre ce script excutable : chmod +x installation_docker.sh
# - executer le script : ./installation_docker.sh

sudo apt-get update

sudo apt-get install curl \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

sudo apt-get install apt-transport-https \
                       ca-certificates

curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -

apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D

sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

sudo apt-get update

sudo apt-get -y install docker-engine

sudo docker run hello-world
