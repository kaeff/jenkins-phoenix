# Jenkins in Docker

An out-of-the-box jenkins with suggested plugins installed that allows
following the [phoenix
pattern](http://martinfowler.com/bliki/PhoenixServer.html).

Requirements: docker, docker-compose

## Running locally

```
$ docker-compose up -d
```

Username: admin
Password: admin

## Making changes: Click, commit, rebuild

Managing Jenkins so that it doesn't become a snowflake is hard. This approach is to version the jenkins_home, make changes locally, then commit to source. Afterwards, the image can be rebuild & run through a pipeline.

### Adding a job

Add the job using the GUI

Consider defining Pipeline jobs that pull a Jenkinsfile from source.
That way, job configuration doesn't need to be versioned here.

## Installing plugins

Install new plugins using admin menu, then run:

```
$ ./pull-plugins.sh
```

to extract them from the running instance. Then commit & rebuild.
