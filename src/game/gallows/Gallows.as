package game.gallows
{

import bitmaps.Gallows1;
import bitmaps.Gallows2;
import bitmaps.Gallows3;
import bitmaps.Gallows4;
import bitmaps.Gallows5;
import bitmaps.Gallows6;
import bitmaps.Gallows7;

import flash.display.Sprite;

public class Gallows extends Sprite
{
	private static var _elements:Vector.<GallowsElement> = new <GallowsElement> [new Gallows1(), new Gallows2(),
																				 new Gallows3(), new Gallows4(),
																				 new Gallows5(), new Gallows6(),
																				 new Gallows7()];

	private var _step:uint;

	public function Gallows()
	{
		clearAll();
	}

	public function addElement():void
	{
		addChild(_elements[_step]);
		_step++;
	}

	public function clearAll():void
	{
		_step = 0;

		for(var i:int = 0; i < _elements.length; i++)
		{
			_elements[i].remove();
		}
	}

	public function isGallowsComplete():Boolean
	{
		return (_step == 6);
	}

}
}
