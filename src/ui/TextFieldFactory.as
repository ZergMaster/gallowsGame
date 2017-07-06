package ui
{

import flash.text.AntiAliasType;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;

public class TextFieldFactory
{
	public static function getTextFieldBigBold(text:String, width:Number, height:Number, x:Number, y:Number,
											   color:uint = 0xffffff):TextField
	{
		var tf:TextField = getTextField(width, height, x, y);
		tf.defaultTextFormat = new TextFormat('Arial', 24, color, true, null, null, null, null, TextFormatAlign.LEFT);
		tf.text = text;

		return tf;
	}

	public static function getTextFieldSmall(text:String, width:Number, height:Number, x:Number, y:Number,
											 color:uint = 0, bold:Boolean = false):TextField
	{
		var tf:TextField = getTextField(width, height, x, y);
		tf.defaultTextFormat = new TextFormat('Arial', 12, color, bold, null, null, null, null, TextFormatAlign.JUSTIFY);
		tf.text = text;

		return tf;
	}

	private static function getTextField(width:Number, height:Number, x:Number, y:Number):TextField
	{
		var tf:TextField = new TextField();
		tf.antiAliasType = AntiAliasType.ADVANCED;
		tf.selectable = false;
		tf.multiline = true;
		tf.wordWrap = true;
		tf.width = width;
		tf.height = height;
		tf.x = x;
		tf.y = y;
		return tf;
	}
}
}
