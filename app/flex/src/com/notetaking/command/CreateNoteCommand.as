package com.notetaking.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.business.NotesDelegate;
	import com.notetaking.event.CreateNoteEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class CreateNoteCommand implements ICommand, IResponder
	{
		public function execute(event:CairngormEvent):void
		{
			var createNoteEvent:CreateNoteEvent = CreateNoteEvent (event);
			var notesDelegate:NotesDelegate = new NotesDelegate(this);
			notesDelegate.createNote(createNoteEvent.note);
		}
		
		public function result(data:Object):void
		{
			Alert.show("success");
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}