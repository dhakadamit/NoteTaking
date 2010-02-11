package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class GetAllNotesEvent extends CairngormEvent
	{
		public static const GET_ALL_NOTES:String = "getAllNotesEvent";
		private var _pageNumber:Number;
		private var _contentQuery:String;
		private var _titleQuery:String;
		private var _tagQuery:String;

		public function GetAllNotesEvent(pageNumber:Number, contentQuery:String, titleQuery:String, tagQuery:String)
		{
			super(GET_ALL_NOTES);
			this._pageNumber = pageNumber;
			this._contentQuery = contentQuery;
			this._titleQuery = titleQuery;
			this._tagQuery = tagQuery;
		}

		public function get titleQuery():String {
			return _titleQuery;
		}
		
		public function get contentQuery():String {
			return _contentQuery;
		}
		
		public function get tagQuery():String {
			return _tagQuery;
		}

		public function get pageNumber():Number {
			return _pageNumber;
		}	
	}
}