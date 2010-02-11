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

	}
}