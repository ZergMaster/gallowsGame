package
{

import flash.display.Sprite;
import flash.text.TextField;

import ui.TextFieldFactory;

public class GameStats extends Sprite
{
	private static var _wins:int;
	private static var _loses:int;

	private static var _statText:TextField;

	public function GameStats()
	{
		_statText = TextFieldFactory.getTextFieldSmall('ничего', 160, 30, 78, 424, 0xffffff, true);
		addChild(_statText);

		wins = 0;
		loses = 0;
	}

	public static function refreshStatsString():void
	{
		_statText.text = 'Выиграно: '+_wins+' Проиграно: '+_loses;
	}

	public static function set wins(value:int):void
	{
		_wins = value;
		refreshStatsString();
	}

	public static function get wins():int
	{
		return _wins;
	}

	public static function set loses(value:int):void
	{
		_loses = value;
		refreshStatsString();
	}

	public static function get loses():int
	{
		return _loses;
	}
}
}
