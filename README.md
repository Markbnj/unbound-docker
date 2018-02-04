# unbound-docker

A docker image for running [unbound](http://unbound.net/), a fast caching DNS resolver. Based on alpine:latest and using the most recent version of unbound from latest-stable (unbound 1.6.7 as of this writing). This image also includes bash and bind-tools. In the default startup configuration unbound listens for udp connections on port 53, allows queries from anyone, and forwards all requests to google's public name servers. You can customize this behavior by mounting /etc/unbound with a custom configuration, or building a derived image with your custom configuration.
