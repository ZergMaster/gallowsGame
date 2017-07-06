package
{

import bitmaps.DescriptionFon;

import flash.display.Sprite;
import flash.text.TextFormatAlign;

import ui.StartGameButton;
import ui.TextFieldFactory;

public class GameDescription extends Sprite
{
	private static const GAP:int = 15;

	private var _startGameHandler:Function;

	public function GameDescription(startGameHandler:Function)
	{
		_startGameHandler = startGameHandler;

		var bg:DescriptionFon = new DescriptionFon();
		addChild(bg);

		addChild(TextFieldFactory.getArialTextField(Content.description, bg.width-GAP*2, bg.height-GAP*2, bg.x+GAP,
													bg.y+GAP, 12, 0, false, TextFormatAlign.JUSTIFY));

		addChild(new StartGameButton(startGame));
	}

	private function startGame():void
	{
		_startGameHandler();

		this.parent.removeChild(this);
	}
}
}
