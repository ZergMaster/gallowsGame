package game.word
{

import flash.display.Sprite;
import flash.events.Event;

public class WordFinder extends Sprite
{
	private var _word:String;
	private var _literaSlots:Vector.<LiteraSlot>;

	public function WordFinder()
	{
		addEventListener(Event.ADDED_TO_STAGE, addThis);
	}

	private function addThis(event:Event):void
	{
		newWord();
	}

	public function newWord():void
	{
		_word = Words.randomWord;
		trace('_word = '+_word);
		makeSlots();
	}

	private function makeSlots():void
	{
		var i:int;
		var gap:int;
		var wordLength:uint = _word.length;

		if(_literaSlots)
		{
			for(i = _literaSlots.length-1; i >= 0; i--)
			{
				removeChild(_literaSlots[i]);
				_literaSlots.removeAt(i);
			}
		}

		_literaSlots = new Vector.<LiteraSlot>();

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

	public function isLiteraInTheWord(litera:String):Boolean
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

	public function wordIsFound():Boolean
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
