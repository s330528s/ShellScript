#!/system/bin/sh


if [ $1 = "sample" ] && [ $2 = "get" ] && [ ! -z $3 ]
then
        echo "Copy file from /system/ to $3"
        cp /system/app/sample.apk $3/sample.apk
        cp /system/lib/libmain.so $3/libmain.so
        cp /system/lib/libmonobdwgc-2.0.so $3/libmonobdwgc-2.0.so
        cp /system/lib/libMonoPosixHelper.so $3/libMonoPosixHelper.so
        cp /system/lib/libunity.so $3/libunity.so

        echo "Complete"

elif [ $1 = "sample" ] && [ $2 = "send" ] && [ ! -z $3 ]
then
        echo "Copy file from $3 to /system/"
        cp $3/sample.apk /system/app/sample.apk
        cp $3/libmain.so /system/lib/libmain.so
        cp $3/libmonobdwgc-2.0.so /system/lib/libmonobdwgc-2.0.so
        cp $3/libMonoPosixHelper.so /system/lib/libMonoPosixHelper.so
        cp $3/libunity.so /system/lib/libunity.so

        echo "Set chmod 644"
        chmod 644 /system/app/sample.apk
        chmod 644 /system/lib/libmain.so
        chmod 644 /system/lib/libmonobdwgc-2.0.so
        chmod 644 /system/lib/libMonoPosixHelper.so
        chmod 644 /system/lib/libunity.so

        echo "Complete"

elif [ ! -z $1 ] && [ ! -z $2 ]
then
        echo "Copy file include .apk and .so"
        cp $2/$1.apk /system/app/sample.apk
        cp $2/libmain.so /system/lib/libmain.so
        cp $2/libmonobdwgc-2.0.so /system/lib/libmonobdwgc-2.0.so
        cp $2/libMonoPosixHelper.so /system/lib/libMonoPosixHelper.so
        cp $2/libunity.so /system/lib/libunity.so

        echo "Set chmod 644"
        chmod 644 /system/app/sample.apk
        chmod 644 /system/lib/libmain.so
        chmod 644 /system/lib/libmonobdwgc-2.0.so
        chmod 644 /system/lib/libMonoPosixHelper.so
        chmod 644 /system/lib/libunity.so

        echo "Complete"
        
# elif [ $1 = "Aladdin" ]
# then
#         echo "Copy file include .apk and .so"
#         cp /data/user/sample/sample.apk /system/app/sample.apk
#         cp /data/user/sample/libmain.so /system/lib/libmain.so
#         cp /data/user/sample/libmonobdwgc-2.0.so /system/lib/libmonobdwgc-2.0.so
#         cp /data/user/sample/libMonoPosixHelper.so /system/lib/libMonoPosixHelper.so
#         cp /data/user/sample/libunity.so /system/lib/libunity.so

#         echo "Set chmod 644"
#         chmod 644 /system/app/sample.apk
#         chmod 644 /system/lib/libmain.so
#         chmod 644 /system/lib/libmonobdwgc-2.0.so
#         chmod 644 /system/lib/libMonoPosixHelper.so
#         chmod 644 /system/lib/libunity.so

#         echo "Complete"
        
else
        echo "Please refer to the following..."
        echo "./ConfigureAPK.sh sample get /target"
        echo "./ConfigureAPK.sh sample get /target"
        echo "./ConfigureAPK.sh sample send /source"
        echo "./ConfigureAPK.sh sourceName /source"
fi
