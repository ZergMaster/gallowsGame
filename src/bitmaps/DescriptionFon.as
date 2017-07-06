package bitmaps
{

import flash.display.Bitmap;
import flash.display.BitmapData;

public class DescriptionFon extends Bitmap
{
	[Embed(source="../../../materials/images/description_back.png")]
	private static var Bg:Class;

	public function DescriptionFon()
	{
		super((new Bg() as Bitmap).bitmapData, "auto", false);

		x = 15;
		y = 58;
	}
}
}
