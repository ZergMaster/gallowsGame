package game.word
{

public class Words
{
	private static const WORDS:Array = ['ОДИН', 'ДВА', 'ТРИ', 'ДВАДЦАТЬ', 'ЛОПАТА'];
	private static var _wordsTemp:Array = [];

	private static var _randIndex:uint;

	public static function get randomWord():String
	{
		if(!_wordsTemp.length)
			wordsTemp = WORDS;

		trace(_wordsTemp);
		_randIndex = Math.random()*_wordsTemp.length;
		return _wordsTemp[_randIndex];
	}

	public static function removeWord():void
	{
		_wordsTemp.removeAt(_randIndex);
	}

	public static function set wordsTemp(value:Array):void
	{
		_wordsTemp = [];
		for(var i:int = 0; i < value.length; i++)
		{
			_wordsTemp.push(value[i]);
		}
	}
}
}
