// alright START EXPLAINING SHIT - Anny 3:32 PM 4/8/24
// i stole this code from gamebanana - Anny (Professional Code Stealer)
// https://gamebanana.com/questions/29334
// modified to fit my needs lol
package states;


import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxSprite;
import flixel.FlxG;
import backend.Achievements;

import sys.FileSystem;
import sys.io.File;
//import backend.CatData;

class FreeplaySelectState extends MusicBeatState {

    // dedicated code for catagories
    // when i implement the final code using CatData, this better fucking have 'Mods' in it at the end or i swear to GOD
    public static var freeplayCats:Array<String> = [
    'Main',
    'Covers',
    'Others and Bonus',
    #if MODS_ALLOWED 'Mods', #end
    'Secret'
    ];
    // actually with how im implementing CatData, i shouldnt need this
    // this is used to set the BG Color!!
    public static var freeplayCatColor:Array<FlxColor> = [
        0xffff7b00,
        0xff4f6285,
        0xffd35881,
        #if MODS_ALLOWED 0xffffffff, #end
        0xff313131,
        ];

    public static var curCategory:Int = 0;
    public var NameAlpha:Alphabet;
    var grpCats:FlxTypedGroup<Alphabet>;
    var curSelected:Int = 0;
    var BG:FlxSprite;
    var categoryIcon:FlxSprite;
    var colorTween:FlxTween;
    var intendedColor:Int;
    var path:String;

    override function create()
        {
        // So that it too has a randomized bg
        BG = new FlxSprite().loadGraphic(MainMenuState.randomizeBG());
        BG.updateHitbox();
        BG.screenCenter();
        add(BG);
        // Thanks Freeplay, i stole your code
        BG.color = freeplayCatColor[curSelected];
        intendedColor = BG.color;
        
        // if an image for a catagory exists, load it, else load the "missing" image
        path = ('./assets/images/catagory/catagory-' + freeplayCats[curSelected].toLowerCase() + '.png');
        if (!FileSystem.exists(path) != true) {
            // trace('Found it, lets go!');
            categoryIcon = new FlxSprite().loadGraphic(Paths.image('catagory/catagory-' + freeplayCats[curSelected].toLowerCase()));
        }
        else if (!FileSystem.exists(path) == true) {
            // trace('MISSING FILE OH NO!!');
            categoryIcon = new FlxSprite().loadGraphic(Paths.image('catagory/catagory-missing'));
        }

        
        categoryIcon.updateHitbox();
        categoryIcon.screenCenter();
        add(categoryIcon);
        // pretty much just makes text that warns about the mods menu | why is this here ITS OBVIOUS WHAT IT DOES
		var warnTXT:FlxText = new FlxText(0, FlxG.height - 60, 0, "The 'Mods' catagory also contains every other week due to how its setup, \nTHERE WILL BE DUPLICATES. (For compatibility's sake)", 26);
		warnTXT.scrollFactor.set();
		warnTXT.setFormat("VCR OSD Mono", 26, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(warnTXT);

        NameAlpha = new Alphabet(40,(FlxG.height / 2) - 282,freeplayCats[curSelected],true);
        NameAlpha.screenCenter(X);
        backend.Highscore.load();
        add(NameAlpha);
        changeSelection();
        super.create();

    }


    override public function update(elapsed:Float){

        if (controls.UI_LEFT_P)
            changeSelection(-1);
        if (controls.UI_RIGHT_P)
            changeSelection(1);
        if (controls.BACK) {
            FlxG.sound.play(Paths.sound('cancelMenu'));
            MusicBeatState.switchState(new MainMenuState());
        }

        if (controls.ACCEPT){
            MusicBeatState.switchState(new FreeplayState());
        }

        curCategory = curSelected;
        super.update(elapsed);

    }


    function changeSelection(change:Int = 0) {
        curSelected += change;
        if (curSelected < 0)
            curSelected = freeplayCats.length - 1;
        if (curSelected >= freeplayCats.length)
            curSelected = 0;

        NameAlpha.destroy();
        NameAlpha = new Alphabet(40,(FlxG.height / 2) - 282,freeplayCats[curSelected],true);
        NameAlpha.screenCenter(X);
        add(NameAlpha);
        // and this shit grabs the color and tweens the BG! just like Freeplay! because its the same code, the only thing changed is some variables due to how this state is setup.
		var newColor:Int = freeplayCatColor[curSelected];
		if(newColor != intendedColor) {
			if(colorTween != null) {
				colorTween.cancel();
			}
			intendedColor = newColor;
			colorTween = FlxTween.color(BG, 1, BG.color, intendedColor, {
				onComplete: function(twn:FlxTween) {
					colorTween = null;
				}
			});
        }
        // if an image for a catagory exists, load it, else load the "missing" image
        path = ('./assets/images/catagory/catagory-' + freeplayCats[curSelected].toLowerCase() + '.png');
        if (!FileSystem.exists(path) != true) {
            // trace('Found it, lets go!');
            categoryIcon.loadGraphic(Paths.image('catagory/catagory-' + (freeplayCats[curSelected].toLowerCase())));
        }
        else if (!FileSystem.exists(path) == true) {
            // trace('MISSING FILE OH NO!!');
            categoryIcon.loadGraphic(Paths.image('catagory/catagory-missing'));
        }
       



        FlxG.sound.play(Paths.sound('scrollMenu'));

    }

}