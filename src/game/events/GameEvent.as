package game.events
{

import flash.events.Event;

public class GameEvent extends Event
{
	public static const END_ROUND:String = 'endRound';
	
	private var _isWin:Boolean;
	
	public function GameEvent(type:String, isWin:Boolean)
	{
		super(type, false, false);

		_isWin = isWin;
	}

	public function get isWin():Boolean
	{
		return _isWin;
	}
}
}
