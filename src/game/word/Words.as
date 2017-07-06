package game.word
{

public class Words
{
	private static const WORD:Array = ['ОДИН', 'ДВА', 'ТРИ', 'ДВАДЦАТЬ', 'ЛОПАТА'];
	private static var _wordTemp:Array = [];

	private static var _randIndex:uint;

	public static function get randomWord():String
	{
		if(!_wordTemp.length)
			wordTemp = WORD;

		_randIndex = Math.random()*_wordTemp.length;
		return _wordTemp[_randIndex];
	}

	public static function removeWord():void
	{
		_wordTemp.removeAt(_randIndex);
	}

	public static function set wordTemp(value:Array):void
	{
		_wordTemp = [];
		for(var i:int = 0; i < value.length; i++)
		{
			_wordTemp.push(value[i]);
		}
	}
}
}
