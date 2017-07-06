package ui
{

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.MouseEvent;

public class StartGameButton extends Sprite
{
	[Embed(source="../../../materials/images/button.png")]
	private static var Butt:Class;
	private static var butt:Bitmap = new Butt() as Bitmap;

	private var _callback:Function;

	public function StartGameButton(callback:Function)
	{
		_callback = callback;
		
		addChild(butt);
		useHandCursor = true;
		buttonMode = true;

		x = 100;
		y = 317;

		addEventListener(MouseEvent.CLICK, clickHandler);
	}

	private function clickHandler(event:MouseEvent):void
	{
		removeEventListener(MouseEvent.CLICK, clickHandler);

		_callback()
	}
}
}
