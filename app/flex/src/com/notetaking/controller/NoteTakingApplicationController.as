package com.notetaking.controller
{
	import com.adobe.cairngorm.control.FrontController;
	import com.notetaking.command.CreateNoteCommand;
	import com.notetaking.command.DeleteNoteCommand;
	import com.notetaking.command.GetAllNotesCommand;
	import com.notetaking.command.GetAllTagsCommand;
	import com.notetaking.command.NotesTotalCountCommand;
	import com.notetaking.command.UpdateNoteCommand;
	import com.notetaking.event.CreateNoteEvent;
	import com.notetaking.event.DeleteNoteEvent;
	import com.notetaking.event.GetAllNotesEvent;
	import com.notetaking.event.GetAllTagsEvent;
	import com.notetaking.event.NotesTotalCountEvent;
	import com.notetaking.event.UpdateNoteEvent;

	public class NoteTakingApplicationController extends FrontController
	{
		public function NoteTakingApplicationController()
		{
			initialiseCommands();
		}
		
		public function initialiseCommands():void {
			addCommand(GetAllNotesEvent.GET_ALL_NOTES, GetAllNotesCommand);
			addCommand(CreateNoteEvent.CREATE_NOTE, CreateNoteCommand);
			addCommand(UpdateNoteEvent.UPDATE_NOTE, UpdateNoteCommand);
			addCommand(DeleteNoteEvent.DELETE_NOTE, DeleteNoteCommand);
			addCommand(NotesTotalCountEvent.NOTES_TOTAL_COUNT, NotesTotalCountCommand);
			addCommand(GetAllTagsEvent.GET_ALL_TAGS_EVENT, GetAllTagsCommand);
		}
		
	}
}