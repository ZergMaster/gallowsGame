package bitmaps
{

import game.gallows.GallowsElement;

public class Gallows2 extends GallowsElement
{
	[Embed(source="../../../materials/images/V2.png")]
	private static var GallowsBitmap:Class;

	public function Gallows2()
	{
		super(new GallowsBitmap());

		x = 48;
		y = 320;
	}
}
}
