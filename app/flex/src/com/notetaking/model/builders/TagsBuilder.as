package com.notetaking.model.builders
{
	import mx.collections.ArrayCollection;
	
	public class TagsBuilder
	{
		public function buildFromXml(xmlList:XMLList):ArrayCollection
		{
			var tags:ArrayCollection = new ArrayCollection();
			
			for each (var tag:XML in xmlList) {
				tags.addItem(new TagBuilder().buildFromXml(tag));
			}
			return tags;
		}

	}
}