package game.word
{

import flash.display.Sprite;

public class WordFinder extends Sprite
{
	private static var _word:String;
	private static var _literaSlots:Vector.<LiteraSlot>;

	public function WordFinder()
	{
		_word = Words.randomWord;

		makeSlots();
	}

	private function makeSlots():void
	{
		_literaSlots = new Vector.<LiteraSlot>();
		var gap:int;
		var i:int;
		var wordLength:uint = _word.length;
		for(i = 0; i < wordLength; i++)
		{
			var literaSlot:LiteraSlot = new LiteraSlot(_word.charAt(i));
			addChild(literaSlot);
			gap = literaSlot.width+4;
			literaSlot.x = 155-gap*wordLength/2+gap*i;
			literaSlot.y = 45;

			_literaSlots[i] = literaSlot;
		}
	}

	public static function isLiteraInTheWord(litera:String):Boolean
	{
		var result:Boolean = false;

		var i:int;
		var wordLength:uint = _word.length;
		for(i = 0; i < wordLength; i++)
		{
			if(_literaSlots[i].value == litera)
			{
				_literaSlots[i].openSlot();
				result = true;
			}
		}

		return result;
	}

	public static function wordIsFound():Boolean
	{
		var i:int;
		var wordLength:uint = _word.length;
		for(i = 0; i < wordLength; i++)
		{
			if(!_literaSlots[i].opened)
				return false;
		}

		return true;
	}
}
}
