# wsl-php-dev-env
This is the scripts I run to build up a new WSL environment for personal development use.

Using a fresh new WSL environment.

First I run this:  
```
sudo umount /mnt/c \
  && sudo mount -t drvfs C: /mnt/c -o metadata,uid=1000,gid=1000 \
  && sudo umount /mnt/d \
  && sudo mount -t drvfs D: /mnt/d -o metadata,uid=1000,gid=1000
```

Then I just run `ubuntu/server_setup.sh`

TODO: There's a lot of improvements to be made. Especially security ones. This is just a rushed beginning.
