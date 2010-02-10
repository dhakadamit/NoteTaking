package com.notetaking.model.builders
{
	import com.notetaking.model.Tag;
	
	public class TagBuilder
	{
		private var _name:String;
		
		public function buildFromXml(xml:XML):Tag
		{
			var tag:Tag = new Tag();
			tag.name = xml.name;
			tag.count = xml.count;
			return tag;
		}
		
		public function convertToXml(tag:Tag):XMLList {
			var xml:XMLList = new XMLList(
			 	<tag>
			 		<name>{tag.name}</name>
			 	</tag>); 	
			return xml;
		}
		
		public function withName(value:String):TagBuilder {
			this._name = value;
			return this;
		}
		
		public function build():Tag {
			var tag:Tag = new Tag();
			tag.name = _name;
			return tag;
		}

	}
}