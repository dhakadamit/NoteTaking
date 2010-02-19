package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.model.Note;

	public class DeleteNoteEvent extends CairngormEvent
	{
		public static const DELETE_NOTE:String = "deleteNoteEvent";
		private var _noteId:String;

		public function DeleteNoteEvent(noteId:String) {
			super(DELETE_NOTE);
			this._noteId = noteId;	
		}
		
		public function get noteId():String {
			return _noteId;
		}
	}
}