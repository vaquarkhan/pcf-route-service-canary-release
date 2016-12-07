# Cloud Foundry Route Service for A/B Testing

This route service allows to divert a configurable percentage of traffic to the bound route. 
This traffic will be redirected for the purpose of A/B testing, or canary releasing. This image shows its usage.

<img src="docs/images/A_B_RouteService.png"/>

This project was forked and adapted from here: https://github.com/nebhale/route-service-example

## Requirements
### Java, Maven
The application is written in Java 8 and packaged as a self executable JAR file. This enables it to run anywhere that Java is available.

## Deployment

See the file install.sh for deployment. You will have to adapt the routes in
the installation script to match your CloudFoundry installation. 

## License
The project is released under version 2.0 of the [Apache License][a].

[a]: http://www.apache.org/licenses/LICENSE-2.0
[b]: http://projects.spring.io/spring-boot/
[c]: https://console.run.pivotal.io/register
[i]: http://docs.run.pivotal.io/devguide/installcf/install-go-cli.html
[j]: http://www.jetbrains.com/idea/
[r]: http://docs.cloudfoundry.org/services/route-services.html
[y]: manifest.yml
