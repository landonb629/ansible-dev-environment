# Project: Ansible local development environment

### What is this?

In an effort to brush up on some docker container practice, I wanted to create a local development environment using containers for ansible.
I have always found it troublesome to test some aspects of ansible playbooks, so I figured that docker containers running locally would be a great solution!

### What are the files in the repository?
- Top level 
  - ansible-config : This directory will be mapped as a bind mount to the location on your computer that you have cloned the repo. This gets mapped to /etc/ansible, when you create new playbooks in your code editor or terminal, as long as they are under ansible-config, they will be present in the container
  - .env : This is how you will tell docker-compose where to bind mount the ansible-config directory
  - docker-compose.yml : the file that will describe the intended docker environment to create


### How to use this repository?
1. clone the repository to your local machine 
```
git clone https://github.com/landonb629/ansible-dev-environment.git
```
2.  edit the .env file to match the location that you cloned the repository to on your local machine 
```
pwd => copy the output 
paste after HOST= in the repo
```
example:
running pwd in terminal gives me /Users/landon/ansible-dev-environment
This is what my .env file looks like HOST=/Users/landon/ansilbe-dev-environment

3. change to the directory that has docker-compose.yml
4. bring up the docker containers 
```
docker-compose up -d 
```
5. you should see both the containers come up without a problem!

### How do I access the containers 
1. docker exec into the ansible controller 
```
docker exec -it ansible-controller /bin/bash
```

### How do I know that the ansible environment is working?
1. docker exec into the controller node
2. run the following 
``` 
ansible all -m ping 
```
3. This command should return pong, and then you know that the environment is ready for you to use!







