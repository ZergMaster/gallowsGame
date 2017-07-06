package game
{

import flash.display.Sprite;

import game.word.WordFinder;

public class Game extends Sprite
{
	private var _wordFinder:WordFinder = new WordFinder();

	public function Game()
	{
		addChild(_wordFinder);
	}
}
}
