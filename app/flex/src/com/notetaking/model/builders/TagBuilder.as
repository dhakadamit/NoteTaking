package com.notetaking.model.builders
{
	import com.notetaking.model.Tag;
	
	public class TagBuilder
	{
		public function buildFromXml(xml:XML):Tag
		{
			var tag:Tag = new Tag();
			tag.name = xml.name;
//			tag.tags = new TagsBuilder().buildFromXml(xml.tags);
			return tag;
		}
		
		public function convertToObject(tag:Tag):Object {
			var object:Object = new Object();
			object.name = tag.name;
			return object;
		}

	}
}