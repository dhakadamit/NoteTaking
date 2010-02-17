package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class GetAllTagsEvent extends CairngormEvent
	{
		public static const GET_ALL_TAGS_EVENT:String = "getAllTagsEvent";
		
		public function GetAllTagsEvent():void {
			super(GET_ALL_TAGS_EVENT);
		}
		
	}
}