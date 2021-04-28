mkdir -p tmp/large

find library/ -name '*.mobi' -type f -size +50M -exec cp {} tmp/large \;

rsync -aP --delete tmp/large/* www@dl.netkiller.cn:/opt/bitvaluebk.com/dl.bitvaluebk.com/test/mobi/
