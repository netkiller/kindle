#find Book/ -name '*.mobi' -exec basename {} \; | tr -d '.mobi'

# diskutil erasevolume APFS 'ramdisk' `hdiutil attach -nomount ram://$((2 * 1024 * 100))`
# diskutil partitionDisk /dev/disk6 1 GPT APFS ramdisk R
# diskutil partitionDisk `hdiutil attach -nomount ram://$((2 * 1024 * 100))` 1 GPT APFS ramdisk R

devname=`hdiutil attach -nomount ram://$((2 * 1024 * 100))`
diskutil partitionDisk $devname 1 GPT APFS ramdisk R

find Book/ -name '*.mobi' -exec basename {} \; | tr -d 'mobi' | tr -d '.$' > /Volumes/ramdisk/book.lst
find Book/ -name '*.azw3' -exec basename {} \; | tr -d 'azw3' | tr -d '.$' >> /Volumes/ramdisk/book.lst

cat /Volumes/ramdisk/book.lst | sort | uniq

hdiutil eject $devname