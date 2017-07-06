package bitmaps
{

import flash.display.Bitmap;
import flash.display.BitmapData;

public class DescriptionFon extends Bitmap
{
	[Embed(source="../../../materials/images/description_back.png")]
	private static var Bg:Class;
	private static var bg:Bitmap = new Bg() as Bitmap;

	public function DescriptionFon()
	{
		super(bg.bitmapData, "auto", false);

		x = 15;
		y = 58;
	}
}
}
