package game.keyboard
{

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.GlowFilter;
import flash.text.TextField;

import ui.TextFieldFactory;

public class LiteraKey extends Sprite
{
	[Embed(source="../../../../materials/images/for_litera_key.png")]
	private static var BG:Class;
	private var _bg:Bitmap = new BG() as Bitmap;

	private var _value:String;

	public function LiteraKey(value:String)
	{
		_value = value;

		addBackground();

		var tf:TextField = TextFieldFactory.getArialMyriadTextField(_value, _bg.width, _bg.height, _bg.x, _bg.y-2);
		addChild(tf);

		useHandCursor = true;
		buttonMode = true;
		mouseChildren = false;

		addListeners();
	}

	private function addListeners():void
	{
		addEventListener(MouseEvent.MOUSE_OVER, overOutHandler);
		addEventListener(MouseEvent.MOUSE_OUT, overOutHandler);
		addEventListener(MouseEvent.MOUSE_DOWN, overOutHandler);
		addEventListener(MouseEvent.MOUSE_UP, overOutHandler);
	}

	private function addBackground():void
	{
		addChild(_bg);
		_bg.x = -_bg.width/2;
		_bg.y = -_bg.height/2;
		_bg.filters = [new GlowFilter(0, 0.5, 3, 3)];
	}

	private static function overOutHandler(event:MouseEvent):void
	{
		var target:Sprite = event.currentTarget as Sprite;

		switch(event.type)
		{
			case MouseEvent.MOUSE_OVER:
			case MouseEvent.MOUSE_UP:
				target.scaleX = target.scaleY = 1.1;
				break;
			case MouseEvent.MOUSE_OUT:
			case MouseEvent.MOUSE_DOWN:
				target.scaleX = target.scaleY = 1;
				break;
		}
	}

	public function get value():String
	{
		return _value;
	}
}
}