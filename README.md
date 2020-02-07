# json-log-viewer
[gistia / json-log-viewer](https://github.com/gistia/json-log-viewer#readme) image

## usage

1. [configuration](https://github.com/gistia/json-log-viewer#configuration)
1. log.20200206
```
{"level":"info","msg":"Dev Mode:2020-02-06T17:41:14Z","time":"2020-02-06T09:41:14Z"}
{"level":"info","msg":"connect postgresql success.","time":"2020-02-06T09:41:14Z"}
{"level":"info","msg":"Dev Mode:2020-02-06T17:46:41Z","time":"2020-02-06T09:46:41Z"}
{"level":"info","msg":"connect postgresql success.","time":"2020-02-06T09:46:41Z"}
{"level":"info","msg":"Dev Mode:2020-02-06T17:47:40Z","time":"2020-02-06T09:47:40Z"}
{"level":"info","msg":"connect postgresql success.","time":"2020-02-06T09:47:40Z"}
{"level":"info","msg":"Dev Mode:2020-02-06T17:48:49Z","time":"2020-02-06T09:48:49Z"}
{"level":"info","msg":"connect postgresql success.","time":"2020-02-06T09:48:49Z"}
{"level":"info","msg":"Dev Mode:2020-02-06T17:50:50Z","time":"2020-02-06T09:50:50Z"}
{"level":"info","msg":"connect postgresql success.","time":"2020-02-06T09:50:50Z"}
{"level":"info","msg":"Dev Mode:2020-02-06T17:51:16Z","time":"2020-02-06T09:51:16Z"}
{"level":"info","msg":"connect postgresql success.","time":"2020-02-06T09:51:16Z"}
{"level":"info","msg":"Dev Mode:2020-02-06T17:52:29Z","time":"2020-02-06T09:52:29Z"}
{"level":"info","msg":"connect postgresql success.","time":"2020-02-06T09:52:29Z"}
{"level":"info","msg":"Dev Mode:2020-02-06T17:52:56Z","time":"2020-02-06T09:52:56Z"}
{"level":"info","msg":"connect postgresql success.","time":"2020-02-06T09:52:56Z"}
{"level":"info","msg":"Dev Mode:2020-02-06T17:53:35Z","time":"2020-02-06T09:53:35Z"}
{"level":"info","msg":"connect postgresql success.","time":"2020-02-06T09:53:35Z"}
```
1. .json-log-viewer
```
[transform]
level=level
timestamp=time
message=msg
extra=$

```
1. docker run --rm -it -v $PWD:/logs -v $PWD/.json-log-viewer:/root/.json-log-viewer flashaimkevin/json-log-viewer jv {pathto/logfile}

## self build usage

1. docker build -t hello/jv .
1. docker run --rm -it -v $PWD:/logs -v $PWD/.json-log-viewer:/root/.json-log-viewer hello/jv