package com.notetaking.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.business.NotesDelegate;
	import com.notetaking.event.GetAllNotesEvent;
	import com.notetaking.model.NoteTakingApplicationModelLocator;
	import com.notetaking.model.builders.NotesBuilder;
	
	import mx.rpc.IResponder;

	public class GetAllNotesCommand implements ICommand, IResponder
	{
		[Bindable]
		private var model:NoteTakingApplicationModelLocator = NoteTakingApplicationModelLocator.getInstance();
		private var _callback:Function;
		
		public function GetAllNotesCommand()
		{
		}

		public function execute(event:CairngormEvent):void
		{
			var getAllNotesEvent:GetAllNotesEvent = GetAllNotesEvent (event);
			this._callback = getAllNotesEvent.callback;
			
			var notesDelegate:NotesDelegate = new NotesDelegate(this);
			notesDelegate.getAll(getAllNotesEvent.pageNumber);
		}
		
		public function result(data:Object):void
		{
			model.notes = new NotesBuilder().buildFromXml(data.result);
//			model.totalCount = data.result.total_count;

			if(_callback != null) {
				this._callback();
			} 
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}