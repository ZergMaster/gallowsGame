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

		addChild(TextFieldFactory.getTextFieldBigBold(Content.gameName, 250, 30, 12, 14));

		addChild(new GameDescription(startGameHandler));

		addChild(_gameContainer);

		addChild(new Hangman());
	}

	private function startGameHandler():void
	{
		addChild(new GameStats());
		addChild(new Game());
	}

}
}