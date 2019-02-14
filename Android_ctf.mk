LOCAL_PATH:= $(call my-dir)/ctf

include $(CLEAR_VARS)

LOCAL_MODULE := yquake2_ctf

LOCAL_CFLAGS := -DOSTYPE=\"Linux\" -DARCH=\"Arm\"


BASE_DIR := engine

LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/MobileTouchControls \
                        $(TOP_DIR)/AudioLibs_OpenTouch/liboggvorbis/include \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/jpeg8d \
                        $(TOP_DIR)/Clibs_OpenTouch/freetype2-android/include \
                        $(TOP_DIR)/Clibs_OpenTouch/quake \

CTF_OBJS_ = \
	src/g_ai.o \
	src/g_chase.o \
	src/g_cmds.o \
	src/g_combat.o \
	src/g_ctf.o \
	src/g_func.o \
	src/g_items.o \
	src/g_main.o \
	src/g_misc.o \
	src/g_monster.o \
	src/g_phys.o \
	src/g_save.o \
	src/g_spawn.o \
	src/g_svcmds.o \
	src/g_target.o \
	src/g_trigger.o \
	src/g_utils.o \
	src/g_weapon.o \
	src/menu/menu.o \
	src/monster/move.o \
	src/player/client.o \
	src/player/hud.o \
	src/player/trail.o \
	src/player/view.o \
	src/player/weapon.o \
	src/shared/shared.o


LOCAL_SRC_FILES :=  $(CTF_OBJS_:.o=.c) \


LOCAL_LDLIBS :=
LOCAL_SHARED_LIBRARIES :=

include $(BUILD_SHARED_LIBRARY)



include 
