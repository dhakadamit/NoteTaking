package com.notetaking.controller
{
	import com.adobe.cairngorm.control.FrontController;
	import com.notetaking.command.GetAllNotesCommand;
	import com.notetaking.event.GetAllNotesEvent;

	public class NoteTakingApplicationController extends FrontController
	{
		public function NoteTakingApplicationController()
		{
			initialiseCommands();
		}
		
		public function initialiseCommands():void {
			addCommand(GetAllNotesEvent.GET_ALL_NOTES, GetAllNotesCommand);
		}
		
	}
}