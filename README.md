# json-log-viewer
gistia / json-log-viewer image

## usage

1. docker build -t hello/jv .
1. docker run --rm -v $PWD:/logs -v $PWD/.json-log-viewer:/root/.json-log-viewer hello/jv