package bitmaps
{

import game.gallows.GallowsElement;

public class Gallows3 extends GallowsElement
{
	[Embed(source="../../../materials/images/V3.png")]
	private static var GallowsBitmap:Class;

	public function Gallows3()
	{
		super(new GallowsBitmap());

		x = 76;
		y = 123;
	}
}
}
