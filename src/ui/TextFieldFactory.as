package ui
{

import flash.text.AntiAliasType;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;

public class TextFieldFactory
{

	[Embed(source="c:/windows/fonts/arial.ttf", fontFamily="Arial", mimeType="application/x-font", advancedAntiAliasing="true", embedAsCFF="false")]
	private var Arial:Class;
	[Embed(source="c:/windows/fonts/arialbd.ttf", fontFamily="ArialBold", mimeType="application/x-font", advancedAntiAliasing="true", embedAsCFF="false")]
	private var ArialBold:Class;
	[Embed(source="c:/windows/fonts/MyriadPro-Bold.otf", fontFamily="Myriad", mimeType="application/x-font", advancedAntiAliasing="true", embedAsCFF="false")]
	private var Myriad:Class;


	public static function getArialTextField(text:String, width:Number, height:Number, x:Number, y:Number,
											 size:int = 12, color:uint = 0, bold:Boolean = false,
											 align:String = TextFormatAlign.LEFT):TextField
	{
		var tf:TextField = getTextField(width, height, x, y);
		tf.defaultTextFormat = new TextFormat(!bold ? 'Arial' : 'ArialBold', size, color, bold, null, null, null, null, align);
		tf.text = text;

		return tf;
	}

	public static function getArialMyriadTextField(text:String, width:Number, height:Number, x:Number, y:Number,
												   color:uint = 0, bold:Boolean = true):TextField
	{
		var tf:TextField = getTextField(width, height, x, y);
		tf.defaultTextFormat = new TextFormat('Myriad', 20, color, bold, null, null, null, null, TextFormatAlign.CENTER);
		tf.text = text;

		return tf;
	}

	private static function getTextField(width:Number, height:Number, x:Number, y:Number):TextField
	{
		var tf:TextField = new TextField();
		tf.embedFonts = true;
		tf.antiAliasType = AntiAliasType.ADVANCED;
		tf.sharpness = -50;
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
