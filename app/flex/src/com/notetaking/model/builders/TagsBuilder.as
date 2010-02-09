package com.notetaking.model.builders
{
	import com.notetaking.model.Tag;
	
	import mx.collections.ArrayCollection;
	
	public class TagsBuilder
	{
		public function buildFromXml(xml:XML):ArrayCollection
		{
			var tags:ArrayCollection = new ArrayCollection();
			
			for each (var tag:XML in xml.tag) {
				tags.addItem(new TagBuilder().buildFromXml(tag));
			}
			return tags;
		}
		
		public function convertToXml(tags:ArrayCollection):XMLList {
			var xml:XMLList = new XMLList(<tags_attributes type="array"></tags_attributes>);
			
			var tagBuilder:TagBuilder = new TagBuilder();
			for each (var tag:Tag in tags) {
				xml.appendChild(tagBuilder.convertToXml(tag));
			}
			return xml;
		}

	}
}