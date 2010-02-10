package com.notetaking.model.builders
{
	import com.notetaking.model.Tag;
	
	import mx.collections.ArrayCollection;
	
	public class TagsBuilder
	{
		public function buildFromList(listOfNames:String):ArrayCollection
		{
			var names:Array = listOfNames.split(", ");
			var tags:ArrayCollection = new ArrayCollection();
			
			for each (var name:String in names) {
				tags.addItem(new TagBuilder().withName(name).build());
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