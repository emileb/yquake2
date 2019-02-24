LOCAL_PATH:= $(call my-dir)/slightmechanicaldestruction

include $(CLEAR_VARS)

LOCAL_MODULE := yquake2_smd
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

SMD_OBJS_ = \
	src/g_ai.o \
	src/g_camera.o \
	src/g_chase.o \
	src/g_cmds.o \
	src/g_combat.o \
	src/g_crane.o \
	src/g_fog.o \
	src/g_func.o \
	src/g_items.o \
	src/g_jetpack.o \
	src/g_lights.o \
	src/g_lock.o \
	src/g_main.o \
	src/g_misc.o \
	src/g_model.o \
	src/g_monster.o \
	src/g_mtrain.o \
	src/g_newai.o \
	src/g_patchplayermodels.o \
	src/g_pendulum.o \
	src/g_phys.o \
	src/g_reflect.o \
	src/g_save.o \
	src/g_sound.o \
	src/g_spawn.o \
	src/g_svcmds.o \
	src/g_target.o \
	src/g_thing.o \
	src/g_tracktrain.o \
	src/g_trigger.o \
	src/g_turret.o \
	src/g_utils.o \
	src/g_vehicle.o \
	src/g_weapon.o \
	src/m_actor_weap.o \
	src/m_actor.o \
	src/m_berserk.o \
	src/m_boss2.o \
	src/m_boss3.o \
	src/m_boss31.o \
	src/m_boss32.o \
	src/m_brain.o \
	src/m_chick.o \
	src/m_flash.o \
	src/m_flipper.o \
	src/m_float.o \
	src/m_flyer.o \
	src/m_gladiator.o \
	src/m_gunner.o \
	src/m_hover.o \
	src/m_infantry.o \
	src/m_insane.o \
	src/m_medic.o \
	src/m_move.o \
	src/m_mutant.o \
	src/m_parasite.o \
	src/m_sentrybot.o \
	src/m_soldier.o \
	src/m_supertank.o \
	src/m_tank.o \
	src/p_client.o \
	src/p_chase.o \
	src/p_hud.o \
	src/p_menu.o \
	src/p_text.o \
	src/p_trail.o \
	src/p_view.o \
	src/p_weapon.o \
	src/q_shared.o


LOCAL_SRC_FILES :=  $(SMD_OBJS_:.o=.c) \



LOCAL_LDLIBS :=
LOCAL_SHARED_LIBRARIES :=

include $(BUILD_SHARED_LIBRARY)
