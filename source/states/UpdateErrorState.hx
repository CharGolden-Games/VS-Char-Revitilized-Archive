package states;

class UpdateErrorState extends MusicBeatState
{
	public static var leftState:Bool = false;

	var warnText:FlxText;
	override function create()
	{
		var CachedVersion = sys.io.File.getContent("./assets/VersionCache/gitVersionCache.txt");
		trace("Showed the Update Error woo!");
		// FlxG.sound.music.volume = 0; 
		FlxG.sound.music.stop(); // better solution???
		FlxG.sound.play(Paths.sound('menuError'));
		super.create();

		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuError'));
		add(bg);

		warnText = new FlxText(0, 0, FlxG.width,
			"Error accessing the update link, report to 
			\n @annyconducter on Discord! 
			\n (press enter to go to the discord, esc to cancel)
			\n
			\n (BTW BASED ON THE CACHED VERSION, YOU DONT HAVE THE LATEST VERSION
			\n Last Successfully cached version was: v" + CachedVersion + ")",32);
		warnText.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		warnText.screenCenter(Y);
		add(warnText);
	}

	override function update(elapsed:Float)
	{
		if(!leftState) {
			if (controls.ACCEPT) {
				leftState = true;
				CoolUtil.browserLoad("https://discord.gg/BuGUaYMtxR");
				trace("Opening Discord!");

			}
			else if(controls.BACK) {
				leftState = true;
				trace("Skipped.");
				
			}

			if(leftState)
			{
				FlxG.sound.play(Paths.sound('cancelMenu'));
				FlxG.sound.playMusic(Paths.music('freakyMenu'), 0);
				FlxTween.tween(warnText, {alpha: 0}, 1, {
					onComplete: function (twn:FlxTween) {
						MusicBeatState.switchState(new MainMenuState());
				FlxG.sound.music.volume = 1;
				trace("Back to the menus!");
					}
				});
			}
		}
		super.update(elapsed);
	}
}
