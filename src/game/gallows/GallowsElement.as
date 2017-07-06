package game.gallows
{

import flash.display.Bitmap;

public class GallowsElement extends Bitmap
{
	public function GallowsElement(bitmap:Bitmap)
	{
		super(bitmap.bitmapData, 'auto', false);
	}

	public function remove():void
	{
		if(this.parent)
			this.parent.removeChild(this);
	}
}
}