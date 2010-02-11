package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class GetAllNotesEvent extends CairngormEvent
	{
		public static const GET_ALL_NOTES:String = "getAllNotesEvent";
		private var _pageNumber:Number;

		public function GetAllNotesEvent(pageNumber:Number)
		{
			super(GET_ALL_NOTES);
			this._pageNumber = pageNumber;
		}
		
		public function get pageNumber():Number {
			return _pageNumber;
		}	
	}
}