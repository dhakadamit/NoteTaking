package com.notetaking.model.builders
{
	import mx.collections.ArrayCollection;
	
	public class NotesBuilder
	{
		public function buildFromXml(xml:XML):ArrayCollection {
			var notes:ArrayCollection = new ArrayCollection();
			
			for each (var note:XML in xml.note) {
				notes.addItem(new NoteBuilder().buildFromXml(note));
			}
			return notes;
		}
	}
}