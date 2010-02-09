package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.model.Note;

	public class UpdateNoteEvent extends CairngormEvent
	{
		public static const UPDATE_NOTE:String = "updateNoteEvent";
		private var _note:Note;

		public function UpdateNoteEvent(note:Note) {
			super(UPDATE_NOTE);
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