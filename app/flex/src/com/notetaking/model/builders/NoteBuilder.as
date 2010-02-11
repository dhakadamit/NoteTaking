package com.notetaking.model.builders
{
	import com.notetaking.model.Note;
	
	public class NoteBuilder
	{
		public function buildFromXml(xml:XML):Note {
			var note:Note = new Note();
			note.id = xml.id;
			note.title = xml.title;
			note.content = xml.content;
			note.plainContent = xml.plain_content;			
			note.createdAt = xml.created_at;
			note.tags = new TagsBuilder().buildFromList(xml.tag_list);
			return note;
		}
		
		public function convertToXml(note:Note):XML {
			var xml:XML = 
				<note>
					<title>{note.title}</title>
					<content>{note.content}</content>
					<plain_content>{note.plainContent}</plain_content>
					<tag_list>{note.namesOfAllTags}</tag_list>
				</note>;
			 	
			return xml;
		}

	}
}