package game
{

import flash.display.Sprite;

import game.events.GameEvent;
import game.keyboard.VirtKeyboard;
import game.word.WordFinder;

public class Game extends Sprite
{
	private var _wordFinder:WordFinder = new WordFinder();

	private var _virtKeyboard:VirtKeyboard = new VirtKeyboard();

	public function Game()
	{
		_virtKeyboard.addEventListener(GameEvent.END_ROUND, endRoundHandler);

		startNewRound();
	}

	private function startNewRound():void
	{
		addChild(_wordFinder);
		addChild(_virtKeyboard);
	}

	private function endRoundHandler(event:GameEvent):void
	{
		removeChild(_wordFinder);
		removeChild(_virtKeyboard);

		if(event.isWin)
			addChild(new Winer(startNewRound));
		else
			trace('you looose!');
	}
}
}
