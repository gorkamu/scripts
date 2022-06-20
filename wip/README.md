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
### How to get the API Keys
Just register on the different providers and follow the steps.
- [https://ipgeolocation.io/](https://ipgeolocation.io/)
- [https://ipinfo.io/](https://ipinfo.io/)

## How to run it
After creating the symbolink link in /usr/bin you can run it by typing the following from any path:
```
$ wip
```
## What i'm going to get
The following are the responses you'll get running this command
```
{
    "ip": "128.96.111.215",
    "continent_code": "EU",
    "continent_name": "Europe",
    "country_code2": "ES",
    "country_code3": "ESP",
    "country_name": "Spain",
    "country_capital": "Madrid",
    "state_prov": "Community of Madrid",
    "district": "\u00c1rea Metropolitalitana y Corredor del Henares",
    "city": "Alcobendas",
    "zipcode": "28108",
    "latitude": "49.6561",
    "longitude": "-2.8773",
    "is_eu": true,
    "calling_code": "+34",
    "country_tld": ".es",
    "languages": "es-ES,ca,gl,eu,oc",
    "country_flag": "https://ipgeolocation.io/static/flags/es_64.png",
    "geoname_id": "6510467",
    "isp": "VODAGONE SPAIN TELECOM S.L.U.",
    "connection_type": "",
    "organization": "VODAFONE SPAIN TELECOM S.L.U.",
    "currency": {
        "code": "EUR",
        "name": "Euro",
        "symbol": "\u20ac"
    },
    "time_zone": {
        "name": "Europe/Madrid",
        "offset": 1,
        "current_time": "2022-06-20 08:17:04.405+0200",
        "current_time_unix": 1655705824.405,
        "is_dst": true,
        "dst_savings": 1
    }
}

{
    "ip": "128.96.111.215",
    "hostname": "static-128.96.111.215.vodafone.es",
    "city": "Madrid",
    "region": "Madrid",
    "country": "ES",
    "loc": "49.6561,-2.8773",
    "org": "AS9136 VODAFONE SPAIN TELECOM S.L.U.",
    "postal": "28045",
    "timezone": "Europe/Madrid"
}

```