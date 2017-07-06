package
{

public class Content
{
	[Embed(source="../content.xml", mimeType="application/octet-stream")]
	private static var ContentXML:Class;
	private static var contentXML:XML = new XML(new ContentXML());

	public static function get description():String
	{
		return contentXML.description;
	}

	public static function get gameName():String
	{
		return contentXML.gamename;
	}

	public static function get congrat():String
	{
		return contentXML.congratulations;
	}
}
}
