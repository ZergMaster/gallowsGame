package bitmaps
{

import game.gallows.GallowsElement;

public class Gallows4 extends GallowsElement
{
	[Embed(source="../../../materials/images/V4.png")]
	private static var GallowsBitmap:Class;

	public function Gallows4()
	{
		super(new GallowsBitmap());

		x = 93;
		y = 120;
	}
}
}
