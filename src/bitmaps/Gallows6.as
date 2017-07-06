package bitmaps
{

import game.gallows.GallowsElement;

public class Gallows6 extends GallowsElement
{
	[Embed(source="../../../materials/images/V6.png")]
	private static var GallowsBitmap:Class;

	public function Gallows6()
	{
		super(new GallowsBitmap());

		x = 155;
		y = 115;
	}
}
}
