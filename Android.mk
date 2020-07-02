LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := yquake2

LOCAL_CFLAGS :=  -DIOAPI_NO_64 -DUSE_GLES1  -DYQUAKE2 -DENGINE_NAME=\"yquake2\" -DYQ2OSTYPE=\"Linux\" -DYQ2ARCH=\"Arm\"


BASE_DIR := engine

LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/MobileTouchControls \
                        $(TOP_DIR)/AudioLibs_OpenTouch/liboggvorbis/include \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/jpeg8d \
                        $(TOP_DIR)/Clibs_OpenTouch/freetype2-android/include \
                        $(TOP_DIR)/Clibs_OpenTouch/quake \

GAME_OBJS_ = \
	src/common/shared/flash.o \
	src/common/shared/rand.o \
	src/common/shared/shared.o \
	src/game/g_ai.o \
	src/game/g_chase.o \
	src/game/g_cmds.o \
	src/game/g_combat.o \
	src/game/g_func.o \
	src/game/g_items.o \
	src/game/g_main.o \
	src/game/g_misc.o \
	src/game/g_monster.o \
	src/game/g_phys.o \
	src/game/g_spawn.o \
	src/game/g_svcmds.o \
	src/game/g_target.o \
	src/game/g_trigger.o \
	src/game/g_turret.o \
	src/game/g_utils.o \
	src/game/g_weapon.o \
	src/game/monster/berserker/berserker.o \
	src/game/monster/boss2/boss2.o \
	src/game/monster/boss3/boss3.o \
	src/game/monster/boss3/boss31.o \
	src/game/monster/boss3/boss32.o \
	src/game/monster/brain/brain.o \
	src/game/monster/chick/chick.o \
	src/game/monster/flipper/flipper.o \
	src/game/monster/float/float.o \
	src/game/monster/flyer/flyer.o \
	src/game/monster/gladiator/gladiator.o \
	src/game/monster/gunner/gunner.o \
	src/game/monster/hover/hover.o \
	src/game/monster/infantry/infantry.o \
	src/game/monster/insane/insane.o \
	src/game/monster/medic/medic.o \
	src/game/monster/misc/move.o \
	src/game/monster/mutant/mutant.o \
	src/game/monster/parasite/parasite.o \
	src/game/monster/soldier/soldier.o \
	src/game/monster/supertank/supertank.o \
	src/game/monster/tank/tank.o \
	src/game/player/client.o \
	src/game/player/hud.o \
	src/game/player/trail.o \
	src/game/player/view.o \
	src/game/player/weapon.o \
	src/game/savegame/savegame.o

# ----------

# Used by the client
CLIENT_OBJS_ := \
	src/backends/generic/misc.o \
	src/client/cl_cin.o \
	src/client/cl_console.o \
	src/client/cl_download.o \
	src/client/cl_effects.o \
	src/client/cl_entities.o \
	src/client/cl_input.o \
	src/client/cl_inventory.o \
	src/client/cl_keyboard.o \
	src/client/cl_lights.o \
	src/client/cl_main.o \
	src/client/cl_network.o \
	src/client/cl_parse.o \
	src/client/cl_particles.o \
	src/client/cl_prediction.o \
	src/client/cl_screen.o \
	src/client/cl_tempentities.o \
	src/client/cl_view.o \
	src/client/input/sdl.o \
	src/client/menu/menu.o \
	src/client/menu/qmenu.o \
	src/client/menu/videomenu.o \
	src/client/sound/sdl.o \
	src/client/sound/ogg.o \
	src/client/sound/openal.o \
	src/client/sound/qal.o \
	src/client/sound/sound.o \
	src/client/sound/wave.o \
	src/client/vid/glimp_sdl.o \
	src/client/vid/vid.o \
	src/client/curl/download.o \
	src/client/curl/qcurl.o \
	src/common/argproc.o \
	src/common/clientserver.o \
	src/common/collision.o \
	src/common/crc.o \
	src/common/cmdparser.o \
	src/common/cvar.o \
	src/common/filesystem.o \
	src/common/glob.o \
	src/common/md4.o \
	src/common/movemsg.o \
	src/common/frame.o \
	src/common/netchan.o \
	src/common/pmove.o \
	src/common/szone.o \
	src/common/zone.o \
	src/common/shared/flash.o \
	src/common/shared/rand.o \
	src/common/shared/shared.o \
	src/common/unzip/ioapi.o \
	src/common/unzip/miniz.o \
	src/common/unzip/unzip.o \
	src/server/sv_cmd.o \
	src/server/sv_conless.o \
	src/server/sv_entities.o \
	src/server/sv_game.o \
	src/server/sv_init.o \
	src/server/sv_main.o \
	src/server/sv_save.o \
	src/server/sv_send.o \
	src/server/sv_user.o \
	src/server/sv_world.o

ifeq ($(YQ2_OSTYPE), Windows)
CLIENT_OBJS_ += \
	src/backends/windows/main.o \
	src/backends/windows/network.o \
	src/backends/windows/system.o \
	src/backends/windows/shared/hunk.o
else
CLIENT_OBJS_ += \
	src/backends/unix/main.o \
	src/backends/unix/network.o \
	src/backends/unix/signalhandler.o \
	src/backends/unix/system.o \
	src/backends/unix/shared/hunk.o
endif

# ----------

REFGL1_OBJS_ := \
	src/client/refresh/gl1/qgl.o \
	src/client/refresh/gl1/gl1_draw.o \
	src/client/refresh/gl1/gl1_image.o \
	src/client/refresh/gl1/gl1_light.o \
	src/client/refresh/gl1/gl1_lightmap.o \
	src/client/refresh/gl1/gl1_main.o \
	src/client/refresh/gl1/gl1_mesh.o \
	src/client/refresh/gl1/gl1_misc.o \
	src/client/refresh/gl1/gl1_model.o \
	src/client/refresh/gl1/gl1_scrap.o \
	src/client/refresh/gl1/gl1_surf.o \
	src/client/refresh/gl1/gl1_warp.o \
	src/client/refresh/gl1/gl1_sdl.o \
	src/client/refresh/gl1/gl1_md2.o \
	src/client/refresh/gl1/gl1_sp2.o \
	src/client/refresh/files/pcx.o \
	src/client/refresh/files/stb.o \
	src/client/refresh/files/wal.o \
	src/client/refresh/files/pvs.o \
	src/common/shared/shared.o \
	src/common/md4.o

ifeq ($(YQ2_OSTYPE), Windows)
REFGL1_OBJS_ += \
	src/backends/windows/shared/hunk.o
else # not Windows
REFGL1_OBJS_ += \
	src/backends/unix/shared/hunk.o
endif

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

ifeq ($(YQ2_OSTYPE), Windows)
REFGL3_OBJS_ += \
	src/backends/windows/shared/hunk.o
else # not Windows
REFGL3_OBJS_ += \
	src/backends/unix/shared/hunk.o
endif

# ----------

REFSOFT_OBJS_ := \
	src/client/refresh/soft/sw_aclip.o \
	src/client/refresh/soft/sw_alias.o \
	src/client/refresh/soft/sw_bsp.o \
	src/client/refresh/soft/sw_draw.o \
	src/client/refresh/soft/sw_edge.o \
	src/client/refresh/soft/sw_image.o \
	src/client/refresh/soft/sw_light.o \
	src/client/refresh/soft/sw_main.o \
	src/client/refresh/soft/sw_misc.o \
	src/client/refresh/soft/sw_model.o \
	src/client/refresh/soft/sw_part.o \
	src/client/refresh/soft/sw_poly.o \
	src/client/refresh/soft/sw_polyse.o \
	src/client/refresh/soft/sw_rast.o \
	src/client/refresh/soft/sw_scan.o \
	src/client/refresh/soft/sw_sprite.o \
	src/client/refresh/soft/sw_surf.o \
	src/client/refresh/files/pcx.o \
	src/client/refresh/files/stb.o \
	src/client/refresh/files/wal.o \
	src/client/refresh/files/pvs.o \
	src/common/shared/shared.o \
	src/common/md4.o

ifeq ($(YQ2_OSTYPE), Windows)
REFSOFT_OBJS_ += \
	src/backends/windows/shared/hunk.o
else # not Windows
REFSOFT_OBJS_ += \
	src/backends/unix/shared/hunk.o
endif

LOCAL_SRC_FILES :=  $(CLIENT_OBJS_:.o=.c) \
     src/backends/mobile/game_interface.c   \
    ../../Clibs_OpenTouch/quake/android_jni.cpp \
    ../../Clibs_OpenTouch/quake/touch_interface.cpp \


LOCAL_LDLIBS :=  -lEGL -ldl -llog -lOpenSLES -lz
LOCAL_STATIC_LIBRARIES := sigc libzip libpng logwritter  libjpeg
LOCAL_SHARED_LIBRARIES := touchcontrols SDL2 SDL2_mixer core_shared saffal
LOCAL_LDLIBS += -lGLESv1_CM
#LOCAL_LDLIBS += -lGLESv2

include $(BUILD_SHARED_LIBRARY)



include 
