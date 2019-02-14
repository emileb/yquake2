LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := yquake2_gl3

LOCAL_CFLAGS :=  -DUSE_GLES3  -DIOAPI_NO_64  -DYQ2OSTYPE=\"Linux\" -DYQ2ARCH=\"Arm\"


BASE_DIR := engine

LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/MobileTouchControls \
                        $(TOP_DIR)/AudioLibs_OpenTouch/liboggvorbis/include \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/jpeg8d \
                        $(TOP_DIR)/Clibs_OpenTouch/freetype2-android/include \
                        $(TOP_DIR)/Clibs_OpenTouch/quake \


                        #$(LOCAL_PATH)/src/client/refresh/gl3/glad/include \


# ----------

REFGL3_OBJS_ := \
	src/client/refresh/gl3/gl3_draw.o \
	src/client/refresh/gl3/gl3_image.o \
	src/client/refresh/gl3/gl3_light.o \
	src/client/refresh/gl3/gl3_lightmap.o \
	src/client/refresh/gl3/gl3_main.o \
	src/client/refresh/gl3/gl3_mesh.o \
	src/client/refresh/gl3/gl3_misc.o \
	src/client/refresh/gl3/gl3_model.o \
	src/client/refresh/gl3/gl3_sdl.o \
	src/client/refresh/gl3/gl3_surf.o \
	src/client/refresh/gl3/gl3_warp.o \
	src/client/refresh/gl3/gl3_shaders.o \
	src/client/refresh/gl3/gl3_md2.o \
	src/client/refresh/gl3/gl3_sp2.o \
	src/client/refresh/gl3/glad/src/glad.o \
	src/client/refresh/files/pcx.o \
	src/client/refresh/files/stb.o \
	src/client/refresh/files/wal.o \
	src/client/refresh/files/pvs.o \
	src/common/shared/shared.o \
	src/common/md4.o


REFGL3_OBJS_ += \
	src/backends/unix/shared/hunk.o

# ----------


LOCAL_SRC_FILES :=  $(REFGL3_OBJS_:.o=.c) \


LOCAL_LDLIBS := -lEGL -ldl -llog -lGLESv1_CM -lz
LOCAL_STATIC_LIBRARIES := sigc libzip libpng logwritter
LOCAL_SHARED_LIBRARIES := touchcontrols SDL2 SDL2_mixer

include $(BUILD_SHARED_LIBRARY)



include 
