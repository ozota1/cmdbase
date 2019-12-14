# commandbase
useful command collection. copy&amp;paste or run curl-bash

# index

## create dummy many files

```bash
NUM=1000 SIZE=10 RAND=true bash <(curl https://raw.githubusercontent.com/ozota1/cmdbase/master/create-dummy-files.sh)
```

## Get the procs sorted by the number of inotify watchers
```bash
bash <(curl https://raw.githubusercontent.com/ozota1/cmdbase/master/count-inotify-watcher.sh)
```

## check free size of current directory
```bash
df -kh .
```
