# WIP (Whats my IP)

This is a command line tool to find out what your IP address is.
Before executing it, certain parameters must be configured

## How to configure it
Firt of all, copy the distribution env file and rename it to .env.
```
$ cp .env.dist .env
```
Replace the default values of the two environment variables.
To get the both api tokens you have to signup on the providers and ask for them.

## How to run it
After creating the symbolink link in /usr/bin you can run it by typing the following from any path:
```
$ wip
```