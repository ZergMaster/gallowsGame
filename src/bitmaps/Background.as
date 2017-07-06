package bitmaps {

import flash.display.Bitmap;

public class Background extends Bitmap
{
	[Embed(source="../../../materials/images/bg.jpg")]
	private static var BG:Class;
	private static var bg:Bitmap = new BG() as Bitmap;

	public function Background()
	{
		super(bg.bitmapData, "auto", false);
	}
}
}
