package com.notetaking.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.business.NotesDelegate;
	import com.notetaking.event.UpdateNoteEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class UpdateNoteCommand implements ICommand, IResponder
	{
		public function execute(event:CairngormEvent):void
		{
			var updateNoteEvent:UpdateNoteEvent = UpdateNoteEvent (event);
			var notesDelegate:NotesDelegate = new NotesDelegate(this);
			notesDelegate.updateNote(updateNoteEvent.note);
		}
		
		public function result(data:Object):void
		{
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}