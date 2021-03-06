MODPATH=${0%/*}
APP="`ls $MODPATH/system/priv-app` `ls $MODPATH/system/app`"
for APPS in $APP; do
  rm -f `find /data/system/package_cache -type f -name *$APPS*`
  rm -f `find /data/dalvik-cache /data/resource-cache -type f -name *$APPS*.apk`
done
PKG="com.motorola.launcher3
     com.motorola.timeweatherwidget
     com.motorola.motosignature.app
     com.motorola.android.providers.settings"
for PKGS in $PKG; do
  rm -rf /data/user/*/$PKGS/cache/*
done


