package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class DeleteNoteEvent extends CairngormEvent
	{
		public static const DELETE_NOTE:String = "deleteNoteEvent";
		private var _noteId:String;
		private var _callback:Function;

		public function DeleteNoteEvent(noteId:String, callback:Function = null) {
			super(DELETE_NOTE);
			this._noteId = noteId;	
			this._callback = callback;
		}
		
		public function get noteId():String {
			return _noteId;
		}
		
		public function get callback():Function {
			return _callback;
		}
	}
}