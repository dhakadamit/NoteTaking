package com.notetaking.model.builders
{
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

	}
}