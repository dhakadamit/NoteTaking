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
		
		public function execute(event:CairngormEvent):void
		{
			var deleteNoteEvent:DeleteNoteEvent = DeleteNoteEvent (event);
			var notesDelegate:NotesDelegate = new NotesDelegate(this);
			notesDelegate.deleteNote(deleteNoteEvent.noteId);
		}
		
		public function result(data:Object):void
		{
			model.hideProgressBar();
			Alert.show("Successfully Deleted!");
		}
		
		public function fault(info:Object):void
		{
			model.hideProgressBar();
			Alert.show("Server error");
		}
		
	}
}