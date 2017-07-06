package bitmaps {

import flash.display.Bitmap;

public class Background extends Bitmap
{
	[Embed(source="../../../materials/images/bg.jpg")]
	private static var BG:Class;

	public function Background()
	{
		super((new BG() as Bitmap).bitmapData, "auto", false);
	}
}
}
