package game
{

import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.text.TextField;
import flash.text.TextFormatAlign;

import game.word.Words;

import ui.StartGameButton;
import ui.TextFieldFactory;

public class Winer extends Sprite
{
	private var _callback:Function;

	public function Winer(callback:Function)
	{
		_callback = callback;

		GameStats.wins++;
		GameSound.playWinSound();
		Words.removeWord();

		addChild(new StartGameButton(buttonHandler));

		var tf:TextField = TextFieldFactory.getArialTextField(Content.congrat, 310, 80, 0, 180, 24, 0xffffff, true,
															  TextFormatAlign.CENTER);
		tf.filters = [new DropShadowFilter(0, 30, 0, 1)];
		addChild(tf);
	}

	private function buttonHandler():void
	{
		this.parent.removeChild(this);

		_callback();
	}

}
}
