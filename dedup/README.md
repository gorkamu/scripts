# DEDUP (deduplicate)

This is a command line tool that helps you to remove those duplicate items on a list.

# How to run it
The scripts accepts different modes of execution:

## Getting a list of string as arguments
```
$ dedup hi there hi there
// Output: hi there
```

## Getting a file as arguments
```
$ dedup ./test.txt
// Output: hi there
```

## As stdin after a pipeline
```
$ echo "hi there hi there" | dedup
// Output: hi there
```