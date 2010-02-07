package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.model.Note;

	public class CreateNoteEvent extends CairngormEvent
	{
		public static const CREATE_NOTE:String = "createNoteEvent";
		private var _note:Note;

		public function CreateNoteEvent(note:Note) {
			super(CREATE_NOTE);
			this._note = note;	
		}
		
		public function get note():Note {
			return _note;
		}

		public function set note(value:Note):void {
			_note = value;
		}


	}
}