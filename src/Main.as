package
{

import bitmaps.Background;
import bitmaps.Hangman;

import flash.display.Sprite;

import game.Game;

import ui.TextFieldFactory;

public class Main extends Sprite
{
	private var _gameContainer:Sprite = new Sprite();

	public function Main()
	{
		addChild(new Background());

		addChild(TextFieldFactory.getArialTextField(Content.gameName, 250, 30, 12, 10, 24, 0xffffff));

		addChild(new GameDescription(startGameHandler));

		addChild(_gameContainer);

		addChild(new Hangman());
	}

	private function startGameHandler():void
	{
		addChild(new GameScores());
		
		_gameContainer.addChild(new Game());
	}
}
}