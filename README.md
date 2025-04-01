# DigitalJS Online Container

This repo contains a simple Containerfile allowing easy deplyoment of the [DigitalJS Online](https://github.com/tilk/digitaljs_online) web app.

Using the [version hosted by the author](https://digitaljs.tilk.eu/) is probably the easiest (and recommended) way of getting started,
we are keeping this around *just in case*.

No guarantees are made to the correctness and quality of this, the goal was to just have it work for our simple use-case.

The rest of this readme assumes `podman` is available on the system.


## Build

```sh
git submodule update --init
podman build .
```

## Run
```sh
podman run --detach -t -i -p 3000:3000 <IMAGE>
```


