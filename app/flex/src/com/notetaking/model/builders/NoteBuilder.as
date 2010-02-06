package com.notetaking.model.builders
{
	import com.notetaking.model.Note;
	
	import mx.collections.ArrayCollection;
	
	public class NoteBuilder
	{
		public function buildFromXml(xml:XML):Note {
			var note:Note = new Note();
			note.content = xml.content;
			note.createdAt = xml.created_at;
			return note;
		}

	}
}