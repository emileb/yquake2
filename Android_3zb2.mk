LOCAL_PATH:= $(call my-dir)/3zb2

include $(CLEAR_VARS)

LOCAL_MODULE := yquake2_3zb2
LOCAL_CFLAGS :=  -DOSTYPE=\"Linux\" -DARCH=\"Arm\"


BASE_DIR := engine

LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/MobileTouchControls \
                        $(TOP_DIR)/AudioLibs_OpenTouch/liboggvorbis/include \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/jpeg8d \
                        $(TOP_DIR)/Clibs_OpenTouch/freetype2-android/include \
                        $(TOP_DIR)/Clibs_OpenTouch/quake \

LOCAL_SRC_FILES = \
	src/bot_fire.c \
	src/bot_func.c \
	src/bot_za.c \
	src/bot.c \
	src/g_chase.c \
	src/g_cmds.c \
	src/g_combat.c \
	src/g_ctf.c \
	src/g_func.c \
	src/g_items.c \
	src/g_main.c \
	src/g_misc.c \
	src/g_monster.c \
	src/g_phys.c \
	src/g_save.c \
	src/g_spawn.c \
	src/g_svcmds.c \
	src/g_target.c \
	src/g_trigger.c \
	src/g_utils.c \
	src/g_weapon.c \
	src/m_move.c \
	src/p_client.c \
	src/p_hud.c \
	src/p_menu.c \
	src/p_trail.c \
	src/p_view.c \
	src/p_weapon.c \
	src/q_shared.c \



LOCAL_LDLIBS :=
LOCAL_SHARED_LIBRARIES :=

include $(BUILD_SHARED_LIBRARY)
