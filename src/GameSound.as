package
{

import flash.media.Sound;

public class GameSound
{
	[Embed(source="../../materials/sounds/click.mp3")]
	private static var ClickSound:Class;
	private static var clickSound:Sound = new ClickSound() as Sound;

	[Embed(source="../../materials/sounds/win.mp3")]
	private static var WinSound:Class;
	private static var winSound:Sound = new WinSound() as Sound;

	[Embed(source="../../materials/sounds/lose.mp3")]
	private static var LoseSound:Class;
	private static var loseSound:Sound = new LoseSound() as Sound;

	public static function playClickSound():void
	{
		clickSound.play();
	}

	public static function playWinSound():void
	{
		winSound.play();
	}

	public static function playLoseSound():void
	{
		loseSound.play();
	}
}
}
