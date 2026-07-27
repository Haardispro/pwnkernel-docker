# pwn.college helper environment for kernel development and exploitation


### Note: If your OS is anything newer than Ubuntu 22.04, normally building may not work due to older dependencies. Use the docker environment instead

#### Instructions: 

```
git clone https://github.com/Haardispro/pwnkernel-docker.git
cd pwnkernel-docker/
```

Run `build` only once, after that its not needed. 
```
docker compose build 
```

Use this command to interact with the environment. 

```
docker compose run --rm ctf
```


**NOTE: you don't need to interact with this repo in the course of interacting with pwn.college. The kernel challenges can be solved in the infrastructure; this is just here as a way to reproduce the infrastructure locally.**

Pre-requistite:

Building the kernel, busybox, and demo modules:

```
$ ./build.sh
```

Running the kernel:

```
$ ./launch.sh
```

All modules will be in `/`, ready to be `insmod`ed, and the host's home directory will be mounted as `/home/ctf` in the guest.
