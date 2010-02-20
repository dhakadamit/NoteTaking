package com.notetaking.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.business.NotesDelegate;
	import com.notetaking.event.DeleteNoteEvent;
	import com.notetaking.model.NoteTakingApplicationModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class DeleteNoteCommand implements ICommand, IResponder
	{
		[Bindable]
		private var model:NoteTakingApplicationModelLocator = NoteTakingApplicationModelLocator.getInstance();
		private var _callback:Function;
		
		public function execute(event:CairngormEvent):void
		{
			var deleteNoteEvent:DeleteNoteEvent = DeleteNoteEvent (event);
			this._callback = deleteNoteEvent.callback;
			var notesDelegate:NotesDelegate = new NotesDelegate(this);
			notesDelegate.deleteNote(deleteNoteEvent.noteId);
		}
		
		public function result(data:Object):void
		{
			if(_callback != null) {
				this._callback("Successfully Deleted");
			}
		}
		
		public function fault(info:Object):void
		{
			Alert.show("Server Error. Please try later");
			if(_callback != null) {
				this._callback("Server Error. Please try later.");
			}
		}
		
	}
}