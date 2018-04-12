# Turbine Hystrix Dashboard

####Running the Dashboard
Run Turbine Hystrix Dashboard as a docker container by executing the supplied script: `./turbine-histrix.sh`

In this example the url for the dashboard is: `http://localhost:9999/hystrix`

####Monitoring your application:

Enter the url of your hystrix.stream into the dashboard.

If you are running e.g. Spring boot applications your hystrix.stream endpoint depends on the following: 
- Are you using a management endpoint? If so use the port of management endpoints.
- Are you running under a context?

The url for monitoring would look like something like this:
http(s)://host:management-port/hystrix.stream
http(s)://host:management-port/{context}/hystrix.stream

You can verify the url when running your app.
If you are seeing data being returned (even if it's only a ping message) it's fine.

After you have entered the endpoint in the dashboard you should either see a `loading` message or some graphs.
Graphs are only visible if your hystrix enabled code has been executed.

#####Note
When entering the url of the hystrix.stream you can't use localhost but need to use the ip of your machine.
E.g.:
http://172.26.190.154:9190/hystrix.stream

