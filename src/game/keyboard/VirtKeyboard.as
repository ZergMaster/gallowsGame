package game.keyboard
{

import flash.display.Sprite;
import flash.events.MouseEvent;

import game.Game;
import game.events.GameEvent;
import game.gallows.Gallows;
import game.word.WordFinder;

public class VirtKeyboard extends Sprite
{
	private static const _KEYS:String = 'АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ';

	public function VirtKeyboard()
	{
		x = 104;
		y = 318;

		setKeyBoard();

	}

	private function clickKeyboardHandler(event:MouseEvent):void
	{
		var target:LiteraKey = event.target as LiteraKey;

		GameSound.playClickSound();

		dispatchEvent(new GameEvent(GameEvent.CLICK_KEYBOARD, target.value));
/*
		if(!WordFinder.isLiteraInTheWord(target.value))
		{
			if((Gallows.isGallowsComplete()))
				dispatchEvent(new GameEvent(GameEvent.CLICK_KEYBOARD, false));
			else
				Game.gallows.addElement();
		}

		if(WordFinder.wordIsFound())
			dispatchEvent(new GameEvent(GameEvent.CLICK_KEYBOARD, true));
			*/
	}

	private function setKeyBoard():void
	{
		var keyboard:Sprite = new Sprite();
		addChild(keyboard);

		const lineLength:int = 8;
		const GAP:int = 26;

		var i:int;
		for(i = 0; i < _KEYS.length; i++)
		{
			var literaKey:LiteraKey = new LiteraKey(_KEYS.charAt(i));
			var line:int = Math.floor(i/lineLength);
			literaKey.x = GAP*i-GAP*line*lineLength;
			literaKey.y = GAP*line;
			keyboard.addChild(literaKey);
		}

		keyboard.addEventListener(MouseEvent.CLICK, clickKeyboardHandler);
	}
}
}