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
		
		public function convertToXml(note:Note):XML {
			var tagsAttributes:XMLList = new TagsBuilder().convertToXml(note.tags);
			var xml:XMLList = new XMLList(<note><content>{note.content}</content></note>);
			 	
			return xml.appendChild(tagsAttributes);
		}

	}
}