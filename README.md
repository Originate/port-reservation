# Port Reservation System

> allows to reserve network ports for later use

This library is a thin wrapper around
[PortFinder](https://github.com/indexzero/node-portfinder).
It guarantees that
ports that have been provided to a client
are considered "reserved",
and are not provided again
in future requests for more free ports.
Even if a reserved port is currently not used.

This is useful
for example
when it takes a while
to start up the processes
that use these ports.
