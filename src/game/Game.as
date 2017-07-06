package game
{

import flash.display.Sprite;

import game.events.GameEvent;
import game.gallows.Gallows;
import game.keyboard.VirtKeyboard;
import game.word.WordFinder;
import game.word.Words;

import ui.StartGameButton;

public class Game extends Sprite
{
	private var _wordFinder:WordFinder = new WordFinder();

	private static var _gallows:Gallows = new Gallows();

	private var _virtKeyboard:VirtKeyboard = new VirtKeyboard();

	public function Game()
	{
		_virtKeyboard.addEventListener(GameEvent.CLICK_KEYBOARD, clickKeyboard);

		addChild(_gallows);

		startNewRound();
	}

	private function startNewRound():void
	{
		_gallows.clearAll();
		
		addChild(_wordFinder);
		addChild(_virtKeyboard);
	}

	private function clickKeyboard(event:GameEvent):void
	{
		if(!_wordFinder.isLiteraInTheWord(event.value))
		{
			if((_gallows.isGallowsComplete()))
				endRound(false);
			else
				_gallows.addElement();
		}

		if(_wordFinder.wordIsFound())
			endRound(true);
	}
	
	private function endRound(isWin:Boolean):void 
	{
		removeChild(_wordFinder);
		removeChild(_virtKeyboard);
		
		if(isWin)
			winRound();
		else
			loseRound();
	}

	private function winRound():void
	{
		_gallows.clearAll();
		addChild(new Winer(startNewRound));
	}

	private function loseRound():void
	{
		_gallows.addElement();

		GameScores.loses++;
		GameSound.playLoseSound();

		addChild(new StartGameButton(startNewRound));
	}
}
}
