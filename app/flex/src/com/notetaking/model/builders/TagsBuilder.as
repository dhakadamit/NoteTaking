package com.notetaking.model.builders
{
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
		
		public function buildFromXml(xmlList:XMLList):ArrayCollection {
			var tags:ArrayCollection = new ArrayCollection();
			
			for each (var tag:XML in xmlList) {
				tags.addItem(new TagBuilder().buildFromXml(tag));
			}
			
			return tags;
		}

	}
}