mkdir -p tmp/{epub,pdf,azw3,mobi}

find Book/ -name '*.mobi' -exec cp -n {} tmp/mobi \;
find Book/ -name '*.azw3' -exec cp -n {} tmp/azw3/ \;
find Book/ -name '*.epub' -exec cp -n {} tmp/epub/ \;
find Book/ -name '*.pdf' -exec cp -n {} tmp/pdf/ \;
