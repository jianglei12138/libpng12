LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	png.c      pngread.c  pngtrans.c \
	pngerror.c pngrio.c   pngwio.c \
	pngget.c   pngrtran.c pngwrite.c \
	pngmem.c   pngrutil.c pngwtran.c \
	pngpread.c pngset.c   pngwutil.c 

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/

LOCAL_CFLAGS += \
		-DHAVE_CONFIG_H 

LOCAL_LDLIBS := -lz
LOCAL_MODULE:= png12
#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)