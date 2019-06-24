LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE     := luajava
LOCAL_SRC_FILES  := luajava.c

ifeq ($(LUAJIT), 1)
LOCAL_CFLAGS += -DLUAJIT=1 -DLUA_COMPAT_5_1 -DLUA_COMPAT_5_2 -DLUA_USE_LINUX
LOCAL_STATIC_LIBRARIES := libluajit
else
LOCAL_CFLAGS += -DLUA_DL_DLOPEN -DLUA_USE_C89 -DLUA_COMPAT_5_1 -DLUA_COMPAT_5_2 -DLUA_USE_LINUX
LOCAL_STATIC_LIBRARIES := liblua
endif

LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)
