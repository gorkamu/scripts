# TOCAMEL
This is a command line tool that transforms any string input to a camelcase one.
It accepts strings as first argument and stdin with pipelines as well.

## How to use it
```bash
$ echo "hello world" | tocamel
// Output: helloWorld

$ tocamel "hello world"
// Output: helloWorld
```