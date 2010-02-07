package com.notetaking.model.builders
{
	import com.notetaking.model.Note;
	
	public class NoteBuilder
	{
		public function buildFromXml(xml:XML):Note {
			var note:Note = new Note();
			note.content = xml.content;
			note.createdAt = xml.created_at;
			note.tags = new TagsBuilder().buildFromXml(xml.tags[0]);
			return note;
		}
		
		public function convertToObject(note:Note):Object {
			var object:Object = new Object();
			object.content = note.content;
			
			object.tag_attributes = new TagsBuilder().convertToObject(note.tags);
			 	
			return object;
		}

	}
}