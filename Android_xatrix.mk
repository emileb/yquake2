LOCAL_PATH:= $(call my-dir)/xatrix

include $(CLEAR_VARS)

LOCAL_MODULE := yquake2_xatrix

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

XATRIX_OBJS_ = \
  	src/g_ai.o \
  	src/g_chase.o \
  	src/g_cmds.o \
  	src/g_combat.o \
  	src/g_func.o \
  	src/g_items.o \
  	src/g_main.o \
  	src/g_misc.o \
  	src/g_monster.o \
  	src/g_phys.o \
  	src/g_spawn.o \
  	src/g_svcmds.o \
  	src/g_target.o \
  	src/g_trigger.o \
  	src/g_turret.o \
  	src/g_utils.o \
  	src/g_weapon.o \
  	src/monster/berserker/berserker.o \
  	src/monster/boss2/boss2.o \
  	src/monster/boss3/boss3.o \
  	src/monster/boss3/boss31.o \
  	src/monster/boss3/boss32.o \
  	src/monster/boss5/boss5.o \
  	src/monster/brain/brain.o \
  	src/monster/chick/chick.o \
  	src/monster/fixbot/fixbot.o \
  	src/monster/flipper/flipper.o \
  	src/monster/float/float.o \
  	src/monster/flyer/flyer.o \
  	src/monster/gekk/gekk.o \
  	src/monster/gladiator/gladb.o \
  	src/monster/gladiator/gladiator.o \
  	src/monster/gunner/gunner.o \
  	src/monster/hover/hover.o \
  	src/monster/infantry/infantry.o \
  	src/monster/insane/insane.o \
  	src/monster/medic/medic.o \
  	src/monster/misc/move.o \
  	src/monster/mutant/mutant.o \
  	src/monster/parasite/parasite.o \
  	src/monster/soldier/soldier.o \
  	src/monster/supertank/supertank.o \
  	src/monster/tank/tank.o \
  	src/player/client.o \
  	src/player/hud.o \
  	src/player/trail.o \
  	src/player/view.o \
  	src/player/weapon.o \
  	src/savegame/savegame.o \
  	src/shared/flash.o \
  	src/shared/rand.o \
  	src/shared/shared.o


LOCAL_SRC_FILES :=  $(XATRIX_OBJS_:.o=.c) \


LOCAL_LDLIBS :=
LOCAL_SHARED_LIBRARIES :=

include $(BUILD_SHARED_LIBRARY)



include 
