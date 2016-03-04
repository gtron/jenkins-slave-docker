# jenkins-slave-docker
A fast way to set up a new Slave for your Jenkins


To use it just launch :
```
docker run -e JENKINS_URL="http://jenkins.myhost.com:8080" -e JENKINS_SLAVE_NAME=MyNodeName -e SECRET="MyNodeSecret" gtron/jenkins-slave
```
Or you can create a docker-compose.yml :

```
slave:
  image: docker pull gtron/jenkins-slave
  volumes:
    - ./opt:/opt
  cpu_shares: 128
  restart: always
  environment:
    JENKINS_URL: "http://jenkins.myhost.com:8080"
    JENKINS_SLAVE_NAME: MyNodeName
    SECRET: "MyNodeSecret"
```


