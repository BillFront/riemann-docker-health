# riemann-docker-health

Remember that for the utility to have access to your other Docker services, you
need to mount the socket inside the container.

You can adjust the arguments using the `RIEMANN_DOCKER_HEALTH_ARGUMENTS`
environment variable.

For example:
`docker run -it -v /var/run/docker.sock:/var/run/docker.sock -e "RIEMANN_DOCKER_HEALTH_ARGUMENTS=-h your-riemann-server.com -t some -t tags --host-hostname your_hostname" your-tag`
