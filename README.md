# Extended MkDocs Docker Image

![Travis (.com) branch](https://img.shields.io/travis/com/gki/extended-mkdocs-docker/master.svg?label=Travis%20CI)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/gentkd/extended-mkdocs.svg)

DockerHub: https://hub.docker.com/r/gentkd/extended-mkdocs

## How to try the sample `mkdocs serve`
Install docker for your machine, then follow the steps below.

```shell
$ docker run -d -w /root/sample \
-p 8000:8000 \
--name sample \
gentkd/extended-mkdocs \
mkdocs serve -a 0.0.0.0:8000

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

$
```

Now, you can see the sample mkdocs HTML by accessing `http://0.0.0.0:8000`.

## How to use for your markdown docs.
```shell
$ mkdir -p myworkdir/docs
$ cd myworkdir
$ curl -O https://raw.githubusercontent.com/gki/docker-mkdocs/master/ext-mkdocs-sample/mkdocs.yml
$ docker pull gentkd/extended-mkdocs
$ docker run -d -w /root/workspace \
-v $(pwd):/root/workspace \
-p 8000:8000 \
--name ext-mkdocs \
gentkd/extended-mkdocs \
mkdocs serve -a 0.0.0.0:8000

$ echo "Hello MkDocs!" > docs/index.md
```

Check mkdocs serve log if you stuck something.
```
$ docker logs ext-mkdocs -f
```

## Build HTML

### If a `extended-mkdocs` image named `ext-mkdocs` already exists and it mounted with a local dir.
```shell
$ (move to local dir)

$ docker exec -w /root/workspace ext-mkdocs mkdocs build

INFO    -  Cleaning site directory
INFO    -  Building documentation to directory: /root/workspace/site

$ ls site

404.html       assets         index.html     search         sitemap.xml    sitemap.xml.gz
```

### If there is no running `extended-mkdocs` image.

```shell
$ (move to local dir)

$ docker run -w /root/workspace \
-v $(pwd):/root/workspace \
gentkd/extended-mkdocs \
mkdocs build

INFO    -  Cleaning site directory
INFO    -  Building documentation to directory: /root/workspace/site

$ ls site

404.html       assets         index.html     search         sitemap.xml    sitemap.xml.gz

```

## Build HTML and PDF
add `-e ENABLE_PDF_EXPORT=1` option to `docker exec` or `docker run` above.  
Default export pass is `{your local dir}/pdf/combined.pdf`
