package bitmaps
{

import game.gallows.GallowsElement;

public class Gallows1 extends GallowsElement
{
	[Embed(source="../../../materials/images/V1.png")]
	private static var GallowsBitmap:Class;

	public function Gallows1()
	{
		super(new GallowsBitmap());

		x = 39;
		y = 289;
	}
}
}
