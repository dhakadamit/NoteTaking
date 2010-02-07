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
		
		public function convertToObject(tags:ArrayCollection):Array {
			var tagsObject:Array = new Array();
			var tagBuilder:TagBuilder = new TagBuilder();
			for each (var tag:Tag in tags) {
				tagsObject.push(tagBuilder.convertToObject(tag));
			}
			return tagsObject;
		}

	}
}