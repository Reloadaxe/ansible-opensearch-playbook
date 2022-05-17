# ansible-opensearch-playbook

This is an example of how to make ansible playbook with the [flavienbwk/opensearch-docker-compose](https://github.com/flavienbwk/opensearch-docker-compose) repository.

## Pre-requisite

First, you need to have docker and docker-compose installed

You can go to [docker site](https://docs.docker.com/compose/install/) to install it

Then, you need to install ansible version > 5.7.1

```bash
# Add ansible repository
apt-add-repository ppa:ansible/ansible

# Install ansible
apt install ansible
```

This playbook requires the `Posix` module, so you need to install it

> Used to update `vm.max_max_count` variable in /etc/sysctl.conf file

```bash
ansible-galaxy collection install ansible.posix
```

## Run Opensearch playbook

Copy the file config/opensearch.example.json and set the directory where you want to install the project

```bash
cp config/opensearch.example.json config/opensearch.json
```

Copy the file `hosts.example` and set ip addresses where you want to run the playbook

You can just create the file `hosts` and make your own. `hosts.example` is just an example of how to make your file.

> :warning: You have to put your ssh public key on the hosts.
> Only one host by line

```bash
cp hosts.example hosts

# OR

touch hosts
```

Then launch the playbook with ansible

```bash
#You can use the Makefile to simplify the command line
make opensearch
```

> The asked password is your sudo password

When the script is finished, you can launch the following command to show docker containers

```bash
docker ps
```

Now you can see all the containers up and running !
