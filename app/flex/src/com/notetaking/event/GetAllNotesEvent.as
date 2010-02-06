package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class GetAllNotesEvent extends CairngormEvent
	{
		public static const GET_ALL_NOTES:String = "getAllNotesEvent";
		
		public function GetAllNotesEvent()
		{
			super(GET_ALL_NOTES);
		}
		
	}
}