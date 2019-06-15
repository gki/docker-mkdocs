# Extended MkDocs Docker Image

# How to use for your markdown docs.
TBD


## How to try the sample `mkdocs serve`
Install docker for your machine, then follow the steps below.

```shell
$ docker run -d -p 8000:8000 --name sample gentkd/extended-mkdocs:local mkdocs-sample-serve
6de822124d991439c9dd6a08f6b25bded0cb7025ee206f03dcbfe30097742eb3

$ docker ps
CONTAINER ID        IMAGE                          COMMAND                 CREATED             STATUS              PORTS                    NAMES
6de822124d99        gentkd/extended-mkdocs:local   "mkdocs-sample-serve"   4 seconds ago       Up 3 seconds        0.0.0.0:8000->8000/tcp   sample

$ docker logs sample -f
INFO    -  Building documentation...
INFO    -  Cleaning site directory
[I 190613 11:16:16 server:296] Serving on http://0.0.0.0:8000
[I 190613 11:16:16 handlers:62] Start watching changes
[I 190613 11:16:16 handlers:64] Start detecting changes
[I 190613 11:16:24 handlers:135] Browser Connected: http://0.0.0.0:8000/

$
```

Now, you can see the sample mkdocs HTML by accessing `http://0.0.0.0:8000`.
