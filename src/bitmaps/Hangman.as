package bitmaps
{

import flash.display.Bitmap;

public class Hangman extends Bitmap
{
	[Embed(source="../../../materials/images/hangman.png")]
	private static var HangmanImg:Class;
	private static var hangmanImg:Bitmap = new HangmanImg() as Bitmap;

	public function Hangman()
	{
		super(hangmanImg.bitmapData, "auto", false);

		x = 4;
		y = 260;
	}
}
}
