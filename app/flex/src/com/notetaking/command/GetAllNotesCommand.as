package com.notetaking.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.business.NotesDelegate;
	import com.notetaking.event.GetAllNotesEvent;
	import com.notetaking.model.NoteTakingApplicationModelLocator;
	import com.notetaking.model.builders.NotesBuilder;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class GetAllNotesCommand implements ICommand, IResponder
	{
		[Bindable]
		private var model:NoteTakingApplicationModelLocator = NoteTakingApplicationModelLocator.getInstance();
		
		public function GetAllNotesCommand()
		{
		}

		public function execute(event:CairngormEvent):void
		{
			var getAllNotesEvent:GetAllNotesEvent = GetAllNotesEvent (event);
			var notesDelegate:NotesDelegate = new NotesDelegate(this);
			notesDelegate.getAll(getAllNotesEvent.pageNumber, getAllNotesEvent.contentQuery, getAllNotesEvent.titleQuery, getAllNotesEvent.tagQuery);
		}
		
		public function result(data:Object):void
		{
			model.notes = new NotesBuilder().buildFromXml(data.result);
		}
		
		public function fault(info:Object):void
		{
			Alert.show("Server error");
		}
		
	}
}