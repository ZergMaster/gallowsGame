package game.events
{

import flash.events.Event;

public class GameEvent extends Event
{
	public static const CLICK_KEYBOARD:String = 'clickVirtKeyBoard1';

	private var _value:String;

	public function GameEvent(type:String, value:String)
	{
		super(type, false, false);

		_value = value;
	}

	public function get value():String
	{
		return _value;
	}
}
}
