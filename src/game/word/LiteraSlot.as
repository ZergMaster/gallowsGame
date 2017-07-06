package game.word
{

import flash.display.Sprite;
import flash.text.TextField;

import ui.TextFieldFactory;

public class LiteraSlot extends Sprite
{
	private var _value:String;
	private var _opened:Boolean = false;

	public function LiteraSlot(value:String)
	{
		_value = value;

		drawSlot();
	}

	private function drawSlot():void
	{
		graphics.beginFill(0xffffff, 0.4);
		graphics.drawRect(0, 0, 24, 33);
		graphics.endFill();

		graphics.lineStyle(1, 0xffffff);
		graphics.lineTo(24, 0);
		graphics.lineTo(24, 33);
		graphics.lineTo(0, 33);
		graphics.lineTo(0, 0);
	}

	public function openSlot():void
	{
		var tf:TextField = TextFieldFactory.getTextFieldBigBold(_value, 24, 30, 0, 0);
		addChild(tf);

		_opened = true;
	}

	public function get value():String
	{
		return _value;
	}

	public function get opened():Boolean
	{
		return _opened;
	}
}
}
