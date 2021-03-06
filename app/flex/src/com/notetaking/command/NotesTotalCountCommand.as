package com.notetaking.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.business.NotesDelegate;
	import com.notetaking.event.NotesTotalCountEvent;
	import com.notetaking.model.NoteTakingApplicationModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class NotesTotalCountCommand implements ICommand, IResponder
	{
		[Bindable]
		private var model:NoteTakingApplicationModelLocator = NoteTakingApplicationModelLocator.getInstance();
		private var _callback:Function;
		
		public function execute(event:CairngormEvent):void
		{
			var notesTotalCountEvent:NotesTotalCountEvent = NotesTotalCountEvent (event);
			this._callback = notesTotalCountEvent.callback;
			var notesDelegate:NotesDelegate = new NotesDelegate(this);
			notesDelegate.totalCount(notesTotalCountEvent.contentQuery, notesTotalCountEvent.titleQuery, notesTotalCountEvent.tagQuery);
		}
		
		public function result(data:Object):void
		{
			model.notesTotalCount = data.result.total_count;
			
			if(_callback != null) {
				_callback();
			}
			model.hideProgressBar();
		}
		
		public function fault(info:Object):void
		{
			model.hideProgressBar();
			Alert.show("Server error");
		}
		
	}
}