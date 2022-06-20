# PrivateBin
This is a command line tool to upload text to a private, anon and temporary pastebin-like service

## How to run it
The script has different arguments

### Push text with any other option
```python
$ privatebin --text "Hello world"
```

### Set an expiration due date
The following options are valid:
- 5min
- 10min
- 1hour
- 1week
- 1month
- 1year
- never

The expiration by default time is 10 minutes

```python
$ privatebin \
    --text "Hello world" \
    --expiration "5min"
```

### Set a read-only password
You can set a password that allows you to read the bin
```python
$ privatebin \
    --text "Hello world" \
    --password "MargaretThatcheris110%SEXY."
```

### Burn after reading
```python
$ privatebin \
    --text "Hello world" \
    --burn
```

## Response
If everything is ok, the script will give you the following response where the final url for your bin is the "full_url" node
```json
{
    "status": 0,
    "id": "803ac6027ebe6eda",
    "url": "/?803ac6027ebe6eda",
    "deletetoken": "9f4d9858ea6ed2d84692f7dead03b913ae2830ce0e1402a980ff6eb25fa85435",
    "full_url": "https://privatebin.net/?803ac6027ebe6eda#5GBWhVVMtuaeFVGZhMKXBtGMdrpBLgCa6vDa9WdNAxJn",
    "passcode": "5GBWhVVMtuaeFVGZhMKXBtGMdrpBLgCa6vDa9WdNAxJn"
}
```