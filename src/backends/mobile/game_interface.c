#include "game_interface.h"

#include "SDL.h"
#include "SDL_keycode.h"


// =================== FORWARD and SIDE MOVMENT ==============

float forwardmove, sidemove; //Joystick mode

void PortableMoveFwd(float fwd)
{
	if (fwd > 1)
		fwd = 1;
	else if (fwd < -1)
		fwd = -1;

	forwardmove = fwd;
}

void PortableMoveSide(float strafe)
{
	if (strafe > 1)
		strafe = 1;
	else if (strafe < -1)
		strafe = -1;

	sidemove = strafe;
}

void PortableMove(float fwd, float strafe)
{
	PortableMoveFwd(fwd);
	PortableMoveSide(strafe);
}

//======================================================================

//Look up and down
int look_pitch_mode;
float look_pitch_mouse,look_pitch_abs,look_pitch_joy;
void PortableLookPitch(int mode, float pitch)
{
	look_pitch_mode = mode;
	switch(mode)
	{
	case LOOK_MODE_MOUSE:
		look_pitch_mouse += pitch;
		break;
	case LOOK_MODE_ABSOLUTE:
		look_pitch_abs = pitch;
		break;
	case LOOK_MODE_JOYSTICK:
		look_pitch_joy = pitch;
		break;
	}
}

//left right
int look_yaw_mode;
float look_yaw_mouse,look_yaw_joy;
void PortableLookYaw(int mode, float yaw)
{
	look_yaw_mode = mode;
	switch(mode)
	{
	case LOOK_MODE_MOUSE:
		look_yaw_mouse += yaw;
		break;
	case LOOK_MODE_JOYSTICK:
		look_yaw_joy = yaw;
		break;
	}
}

extern int SDL_SendKeyboardKey(Uint8 state, SDL_Scancode scancode);

int PortableKeyEvent(int state, int code ,int unitcode)
{
	LOGI("PortableKeyEvent %d %d",state,code);

    if (state)
        SDL_SendKeyboardKey(SDL_PRESSED, (SDL_Scancode)code);
    else
        SDL_SendKeyboardKey(SDL_RELEASED, (SDL_Scancode) code);

	return 0;
}


void PortableAction(int state, int action)
{
	LOGI("PortableAction %d %d",state, action);

	if (( PortableGetScreenMode() == TS_MENU ) || ( PortableGetScreenMode() == TS_BLANK )  || ( PortableGetScreenMode() == TS_Y_N ))
    {
        if (action >= PORT_ACT_MENU_UP && action <= PORT_ACT_MENU_ABORT)
        {
            int sdl_code [] = { SDL_SCANCODE_UP, SDL_SCANCODE_DOWN, SDL_SCANCODE_LEFT,
                    SDL_SCANCODE_RIGHT, SDL_SCANCODE_RETURN, SDL_SCANCODE_ESCAPE, SDL_SCANCODE_Y, SDL_SCANCODE_N };

            PortableKeyEvent(state, sdl_code[action-PORT_ACT_MENU_UP], 0);

            return;
        }
    }

}

char * quickCommand = 0;
void PortableCommand(const char * cmd)
{
	quickCommand = cmd;
}

/////////////////////
// Movement handling
////

void IN_Move_Android( void )
{

}

extern int key_dest;
touchscreemode_t PortableGetScreenMode()
{
return TS_MENU;

}


void PortableAutomapControl(float zoom, float x, float y)
{

}

void PortableBackButton()
{
    LOGI("Back button");
    PortableKeyEvent(1, SDL_SCANCODE_ESCAPE,0 );
    PortableKeyEvent(0, SDL_SCANCODE_ESCAPE, 0);
}

int main_android (int c, const char **v);
void PortableInit(int argc,const char ** argv)
{
	LOGI("PortableInit");
    main_android( argc, argv );
}

void PortableFrame()
{

}





