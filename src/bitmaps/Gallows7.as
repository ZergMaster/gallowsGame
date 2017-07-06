package bitmaps
{

import game.gallows.GallowsElement;

public class Gallows7 extends GallowsElement
{
	[Embed(source="../../../materials/images/man.png")]
	private static var GallowsBitmap:Class;

	public function Gallows7()
	{
		super(new GallowsBitmap());

		x = 146;
		y = 115;
	}
}
}
