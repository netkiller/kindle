
if [ ! -e /Volumes/Kindle ]; then 

echo "You can't mount kindle!";
exit
 
fi

mkdir -p /Volumes/Kindle/documents/Book

find Book/ -name '*.azw3' -exec cp -n {} /Volumes/Kindle/documents/Book/ \;
#rsync -avP tmp/azw3/* /Volumes/Kindle/documents/Book/
