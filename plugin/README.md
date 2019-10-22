# Bonita Jenkins Theme Plugin

This plugin customizes Jenkins with a Bonita Continuous Delivery look and feel.

UI customization applies to Jenkins user interface, including the login page as described in [Jenkins new design blog post](https://jenkins.io/blog/2018/06/27/new-login-page/).

## Building

To build this plugin, run `mvn clean install`.  
This will create the file `./target/bonita-jenkins-theme.hpi` that you can deploy to Jenkins.

To deploy the generated `.hpi` file to a remote Maven repository, run `mvn deploy -Drevision=\<revision_number\> -Drepository.url=\<some_maven_repository_url\>`

## Debugging

To debug this plugin, run `mvn hpi:run -Djetty.port=8090 -Dhpi.prefix=/jenkins`.  
This will run a local instance of Jenkins with the current plugin project installed.

