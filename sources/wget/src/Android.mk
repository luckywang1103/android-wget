# Makefile to build wget for Android using the Android NDK:
# http://developer.android.com/sdk/ndk/1.5_r1/index.html
# 
# You need to run configure first with these options:
# ./configure --without-ssl --disable-nls --build=arm-eabi
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := wget
LOCAL_MODULE_TAGS := debug
LOCAL_SHARED_LIBRARIES += libssl libcrypto libdl

LOCAL_SRC_FILES := alloca.c cmpt.c connect.c convert.c cookies.c ftp-basic.c ftp-ls.c ftp-opie.c ftp.c gnu-md5.c gen-md5.c getopt.c  hash.c host.c html-parse.c html-url.c http.c init.c log.c main.c netrc.c progress.c ptimer.c recur.c res.c retr.c safe-ctype.c snprintf.c spider.c url.c utils.c version.c xmalloc.c

LOCAL_CFLAGS += -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"$(sysconfdir)/wgetrc\" -DLOCALEDIR=\"$(localedir)\"
#LOCAL_CFLAGS += -D_BSD_SOURCE
LOCAL_CFLAGS += -D__ANDROID_P
LOCAL_CFLAGS += -D_U_="__attribute__((unused))"
LOCAL_CFLAGS += -Wno-format-security
LOCAL_CFLAGS += -Wno-unused-parameter
LOCAL_CFLAGS += -Wno-format
LOCAL_CFLAGS += -Wno-int-to-void-pointer-cast
LOCAL_CFLAGS += -Wno-implicit-function-declaration
LOCAL_CFLAGS += -Wno-address-of-packed-member
LOCAL_CFLAGS += -Wno-sign-compare
LOCAL_CFLAGS += -Wno-int-to-void-pointer-cast
LOCAL_CFLAGS += -Wno-incompatible-pointer-types-discards-qualifiers
LOCAL_CFLAGS += -Wno-error
LOCAL_CFLAGS += -Wno-int-conversion


include $(BUILD_EXECUTABLE)
