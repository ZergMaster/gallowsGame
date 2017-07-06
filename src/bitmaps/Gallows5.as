package bitmaps
{

import game.gallows.GallowsElement;

public class Gallows5 extends GallowsElement
{
	[Embed(source="../../../materials/images/V5.png")]
	private static var GallowsBitmap:Class;

	public function Gallows5()
	{
		super(new GallowsBitmap());

		x = 80;
		y = 108;
	}
}
}
