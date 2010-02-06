package com.notetaking.model.builders
{
	import com.notetaking.model.Note;
	
	public class NoteBuilder
	{
		public function buildFromXml(xml:XML):Note {
			var note:Note = new Note();
			note.content = xml.content;
			note.createdAt = xml.created_at;
			note.tags = new TagsBuilder().buildFromXml(xml.tags);
			return note;
		}

	}
}