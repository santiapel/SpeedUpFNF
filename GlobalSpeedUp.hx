
import funkin.modding.module.ScriptedModule;
import funkin.modding.events.ScriptEvent;
import funkin.modding.events.UpdateScriptEvent;
import funkin.play.PlayState;
import funkin.save.Save;
import flixel.FlxG;

class GlobalSpeedUp extends ScriptedModule
{
    var speedMultiplier:Float = 2.0;
    var activationKey:String = "SHIFT";
    var lastPlayState:Dynamic = null;

    public function new()
    {
        super();
        loadSettings();
    }

    function loadSettings():Void
    {
        var options = Save.instance.modOptions;

        var savedSpeed:Dynamic = options.get("speedMultiplier");

        if (savedSpeed != null)
        {
            var parsed = Std.parseFloat(Std.string(savedSpeed));

            if (!Math.isNaN(parsed) && parsed >= 1.25 && parsed <= 5.0)
            {
                speedMultiplier = parsed;
            }
        }

        // SHIFT is the default activation key.
        activationKey = "SHIFT";
    }

    override function onUpdate(event:UpdateScriptEvent):Void
    {
        super.onUpdate(event);

        var state = PlayState.instance;

        if (state == null)
        {
            resetPreviousState();
            return;
        }

        lastPlayState = state;

        var speed:Float = FlxG.keys.pressed.SHIFT
            ? speedMultiplier
            : 1.0;

        state.playbackRate = speed;

        if (FlxG.sound.music != null)
        {
            FlxG.sound.music.pitch = speed;
        }

        if (state.vocals != null)
        {
            state.vocals.pitch = speed;
        }
    }

    function resetPreviousState():Void
    {
        if (lastPlayState != null)
        {
            lastPlayState.playbackRate = 1.0;

            if (lastPlayState.vocals != null)
            {
                lastPlayState.vocals.pitch = 1.0;
            }

            lastPlayState = null;
        }

        if (FlxG.sound.music != null)
        {
            FlxG.sound.music.pitch = 1.0;
        }
    }

    override function onDestroy(event:ScriptEvent):Void
    {
        resetPreviousState();
        super.onDestroy(event);
    }
}
