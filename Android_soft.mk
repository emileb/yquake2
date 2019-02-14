LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := yquake2_soft

LOCAL_CFLAGS :=  -DUSE_GLES1 -DIOAPI_NO_64  -DYQ2OSTYPE=\"Linux\" -DYQ2ARCH=\"Arm\"


BASE_DIR := engine

LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/MobileTouchControls \
                        $(TOP_DIR)/AudioLibs_OpenTouch/liboggvorbis/include \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/jpeg8d \
                        $(TOP_DIR)/Clibs_OpenTouch/freetype2-android/include \
                        $(TOP_DIR)/Clibs_OpenTouch/quake \


# ----------

REFSOFT_OBJS_ := \
	src/client/refresh/soft/sw_aclip.c \
	src/client/refresh/soft/sw_alias.c \
	src/client/refresh/soft/sw_bsp.c \
	src/client/refresh/soft/sw_draw.c \
	src/client/refresh/soft/sw_edge.c \
	src/client/refresh/soft/sw_image.c \
	src/client/refresh/soft/sw_light.c \
	src/client/refresh/soft/sw_main.c \
	src/client/refresh/soft/sw_misc.c \
	src/client/refresh/soft/sw_model.c \
	src/client/refresh/soft/sw_part.c \
	src/client/refresh/soft/sw_poly.c \
	src/client/refresh/soft/sw_polyset.c \
	src/client/refresh/soft/sw_rast.c \
	src/client/refresh/soft/sw_scan.c \
	src/client/refresh/soft/sw_sprite.c \
	src/client/refresh/soft/sw_surf.c \
	src/client/refresh/files/pcx.c \
	src/client/refresh/files/stb.c \
	src/client/refresh/files/wal.c \
	src/client/refresh/files/pvs.c \
	src/common/shared/shared.c \
	src/common/md4.c

REFSOFT_OBJS_ += \
	src/backends/unix/shared/hunk.c



# ----------


LOCAL_SRC_FILES :=  $(REFSOFT_OBJS_:.c=.c) \


LOCAL_LDLIBS := -lEGL -ldl -llog -lGLESv1_CM -lz
LOCAL_STATIC_LIBRARIES := sigc libzip libpng logwritter
LOCAL_SHARED_LIBRARIES := touchcontrols SDL2 SDL2_mixer

include $(BUILD_SHARED_LIBRARY)



include 
