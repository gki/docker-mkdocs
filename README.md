# Extended MkDocs Docker Image

# How to use for your markdown docs.
TBD


## How to try the sample `mkdocs serve`
Install docker for your machine, then follow the steps below.

```shell
$ docker run -d -p 8000:8000 --name mkdocs-sample gentkd/extended-mkdocs /root/mkdocs-sample-serve.sh
9b959b4a6df90a0c378598d5b930e19712b4166bfc176600333264947046aba4

$ docker ps
CONTAINER ID        IMAGE                    COMMAND                  CREATED             STATUS              PORTS                    NAMES
9b959b4a6df9        gentkd/extended-mkdocs   "/root/mkdocs-sample…"   4 seconds ago       Up 3 seconds        0.0.0.0:8000->8000/tcp   mkdocs-sample

$ docker logs mkdocs-sample
INFO    -  Creating project directory: mkdocs-sample
INFO    -  Writing config file: mkdocs-sample/mkdocs.yml
INFO    -  Writing initial docs: mkdocs-sample/docs/index.md
INFO    -  Building documentation...
INFO    -  Cleaning site directory
[I 190610 01:01:08 server:296] Serving on http://0.0.0.0:8000
[I 190610 01:01:08 handlers:62] Start watching changes
[I 190610 01:01:08 handlers:64] Start detecting changes
$
```

Now, you can see the initialized mkdocs HTML by accessing `http://0.0.0.0:8000`.
