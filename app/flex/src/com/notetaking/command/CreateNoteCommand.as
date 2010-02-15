package com.notetaking.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.business.NotesDelegate;
	import com.notetaking.event.CreateNoteEvent;
	import com.notetaking.model.NoteTakingApplicationModelLocator;
	import com.notetaking.model.builders.NoteBuilder;
	import com.notetaking.model.enums.Tabs;
	
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.rpc.IResponder;

	public class CreateNoteCommand implements ICommand, IResponder
	{
		[Bindable]
		private var model:NoteTakingApplicationModelLocator = NoteTakingApplicationModelLocator.getInstance();
		
		public function execute(event:CairngormEvent):void
		{
			var createNoteEvent:CreateNoteEvent = CreateNoteEvent (event);
			var notesDelegate:NotesDelegate = new NotesDelegate(this);
			notesDelegate.createNote(createNoteEvent.note);
		}
		
		public function result(data:Object):void
		{
			model.selectedNote = new NoteBuilder().buildFromXml(data.result);	
			Application.application.mainControlBar.selectedIndex = Tabs.EDIT;
		}
		
		public function fault(info:Object):void
		{
			Alert.show("Server error");
		}
		
	}
}