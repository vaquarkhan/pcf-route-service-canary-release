# Cloud Foundry Route Service for A/B Testing

This route service allows to divert a configurable percentage of traffic to the bound route. 
This traffic will be redirected for the purpose of A/B testing, or canary releasing. This image shows its usage.

<img src="docs/images/A_B_RouteService.png"/>

This project was forked and adapted from here: https://github.com/nebhale/route-service-example

## Requirements
### Java, Maven, CF CLI, access to some cloudfoundry installation
The application is written in Java 8 and packaged as a self executable JAR file. This enables it to run anywhere that Java is available.

## Deployment

See the file install.sh for deployment. You will have to adapt the routes in
the installation script to match your CloudFoundry installation. Manual installation would require the following steps:

1. Push a sample application (app_A)
2. Push another sample application (app_B) -- possibly a new version of app_A
3. Push the route service
4. Configure the route service with an alternate route (route of app_b) and the amount of traffic to redirect to this alternate route (e.g. 0.2)
5. Create a user defined service pointing to the route service
6. Bind the user defined service to app_A
7. Try out by issuing requests to app_A. Watch the logs of app_A and app_B. app_B should answer some of the requests going to app_A.

## License
The project is released under version 2.0 of the [Apache License][a].

[a]: http://www.apache.org/licenses/LICENSE-2.0
[b]: http://projects.spring.io/spring-boot/
[c]: https://console.run.pivotal.io/register
[i]: http://docs.run.pivotal.io/devguide/installcf/install-go-cli.html
[j]: http://www.jetbrains.com/idea/
[r]: http://docs.cloudfoundry.org/services/route-services.html
[y]: manifest.yml

- https://martinfowler.com/bliki/CanaryRelease.html
- http://static.einnovator.org/pivotal/pcf-1.6.b/pcf-dev-1.6.b.RELEASE-student-handout.pdf

