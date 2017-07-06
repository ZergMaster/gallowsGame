package game.word
{

public class Words
{
	private static var _word:Array = ['один', 'два', 'три', 'двадцать', 'лопата'];

	public static function get randomWord():String
	{
		var randIndex:uint = Math.random()*_word.length;
		return _word[randIndex];
	}
}
}
