Branchenator
==

Quickly change the branch on a directory for deployment testing

Running
--

We assume that you have a webserver up and pointing to your local code. This project then does some gittery and points to the webserver.

I run as per:

```bash
$ LS_SERVE_FROM='/tmp/seal-club' LS_INT_SITE='http://10.50.0.10' ruby app.rb 
```

This means:

```
LS_SERVE_FROM='/tmp/seal-club'    # Where the version of the code the server is pointing to
LS_INT_SITE='http://10.50.0.10'   # This is where we redirect to in order to see the working codez
```
