package com.notetaking.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.notetaking.business.NotesDelegate;
	import com.notetaking.event.GetAllTagsEvent;
	import com.notetaking.model.NoteTakingApplicationModelLocator;
	import com.notetaking.model.builders.TagsBuilder;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class GetAllTagsCommand implements ICommand, IResponder
	{
		[Bindable]
		private var model:NoteTakingApplicationModelLocator = NoteTakingApplicationModelLocator.getInstance();
		
		public function GetAllTagsCommand()
		{
		}

		public function execute(event:CairngormEvent):void
		{
			var getAllTagsEvent:GetAllTagsEvent = GetAllTagsEvent (event);
			var notesDelegate:NotesDelegate = new NotesDelegate(this);
			notesDelegate.getAllTags();
		}
		
		public function result(data:Object):void
		{
			model.tags = new TagsBuilder().buildFromXml(data.result.tag);
		}
		
		public function fault(info:Object):void
		{
			Alert.show("Server error");
		}
		
	}
}