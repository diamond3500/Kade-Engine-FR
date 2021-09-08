package;

import flixel.addons.effects.chainable.FlxEffectSprite;
import flixel.addons.effects.chainable.FlxTrailEffect;
import flixel.effects.particles.FlxEmitter;
import flixel.effects.particles.FlxParticle;
import webm.WebmEvent;
import webm.WebmPlayer;
import Controls.KeyboardScheme;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import io.newgrounds.NG;
import lime.app.Application;
import PlayState;

class NewStuffState extends MusicBeatState { 
    public var newText = new FlxText(0, 345, 0, 'NOUVEAU !', 20);
    public var AdditionsText1 = new FlxText(1500, 200, 0, '- Traduction complete du mod Garcello (mais pas encore totalement vérifiée)', 20);
    public var AdditionsText2 = new FlxText(1500, 250, 0, '- Taduction de certains éléments du jeu', 20);
    public var AdditionsText3 = new FlxText(1500, 300, 0, '- Changements de certains éléments visuels', 20);
    public var AdditionsSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
   public override function create() { 
        

        var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('Hallway', 'shared'));
        bg.scale.x *= 1.55;
        bg.scale.y *= 1.55;
        bg.screenCenter();
        add(bg);

        newText.screenCenter(XY);
        newText.font = 'Pixel Arial 11 Bold';
        add(newText);
        FlxTween.angle(newText, -20, 20, 2.2, {ease: FlxEase.quadInOut, type: PINGPONG});
        FlxTween.color(newText, 1, FlxColor.WHITE, 0xFF00C31E, {ease: FlxEase.expoInOut, type: PINGPONG});
        FlxTween.tween(newText, {x: newText.x, y: newText.y - 240}, 1.4, {ease: FlxEase.quadOut, type: PERSIST, startDelay: 1.5});
        ShowAdditions();
    }
    override function update(elapsed:Float) {

        if (controls.ACCEPT)
        {
            FlxG.switchState(new MainMenuState());
        }
    }
    public function ShowAdditions() {

        trace(AdditionsText1.y);
        AdditionsText1.font = 'Pixel Arial 11 Bold';
        AdditionsText1.setBorderStyle(FlxTextBorderStyle.OUTLINE, FlxColor.BLACK, 2, 1);
        AdditionsText1.alpha = 1;
        add(AdditionsText1);
        FlxTween.tween(AdditionsText1, {x: AdditionsText1.x - 1300, y: AdditionsText1.y}, 1.4, {ease: FlxEase.quadOut, type: PERSIST, startDelay: 3});

        trace(AdditionsText2.y);
        AdditionsText2.font = 'Pixel Arial 11 Bold';
        AdditionsText2.setBorderStyle(FlxTextBorderStyle.OUTLINE, FlxColor.BLACK, 2, 1);
        AdditionsText2.alpha = 1;
        add(AdditionsText2);
        FlxTween.tween(AdditionsText2, {x: AdditionsText2.x - 1300, y: AdditionsText2.y}, 1.4, {ease: FlxEase.quadOut, type: PERSIST, startDelay: 3.5});
        
        trace(AdditionsText3.y);
        AdditionsText3.font = 'Pixel Arial 11 Bold';
        AdditionsText3.setBorderStyle(FlxTextBorderStyle.OUTLINE, FlxColor.BLACK, 2, 1);
        AdditionsText3.alpha = 1;
        add(AdditionsText3);
        FlxTween.tween(AdditionsText3, {x: AdditionsText3.x - 1300, y: AdditionsText3.y}, 1.4, {ease: FlxEase.quadOut, type: PERSIST, startDelay: 4});
    }
}