# docker-homeautomation

It is part of a [set of repositories](https://github.com/search?q=user%3Admartingarcia+docker) that contain dockerised environments for small applications.

In this case, it contains a self-efficient *home automation* / *smart home* / *IoT* setup.

## How to use it

```
make configure
docker compose up -d
```

And browse into `http://localhost:8123 in order to see `homeassistant` setup.

After that, you can also set your first sensor using any ESP-8266 / ESP32 compatible device and ESPHome, and connect it to your homeassistant setup.

## Traefik integration`

It also contains a Traefik integration, that interact with this reverse proxy, routing request to each container in case it matches the specified domain

There's multiple subdomains exposed:
  - homeassistant.your.domain.com
  - esphome.your.domain.com
  - nodered.your.domain.com

## .env setup

It contains a basic set of variables like:

- Database credentials
- Your local user id, use `echo $UID` in order to obtain that.
- http host that uses Traefik to match requests

Please take a look on that and :warning: create your own credentials :warning: in case you want to expose it to the public.

## Docker Traefik

If you want to use this Traefik integration, [take a look at this repository](https://github.com/dmartingarcia/docker-traefik)
