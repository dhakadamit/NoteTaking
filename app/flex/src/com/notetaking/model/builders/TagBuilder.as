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
		
		public function convertToXml(tag:Tag):XMLList {
			var xml:XMLList = new XMLList(
			 	<tag>
			 		<name>{tag.name}</name>
			 	</tag>); 	
			return xml;
		}

	}
}