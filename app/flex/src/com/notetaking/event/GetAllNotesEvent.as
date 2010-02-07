package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class GetAllNotesEvent extends CairngormEvent
	{
		public static const GET_ALL_NOTES:String = "getAllNotesEvent";
		private var _pageNumber:Number;
		private var _callback:Function;

		public function GetAllNotesEvent(pageNumber:Number, callback:Function)
		{
			super(GET_ALL_NOTES);
			this._pageNumber = pageNumber;
			this._callback = callback;
		}
		
		public function get pageNumber():Number {
			return _pageNumber;
		}

		public function set pageNumber(value:Number):void {
			_pageNumber = value;
		}

		public function get callback():Function {
			return _callback;
		}

		public function set callback(value:Function):void {
			_callback = value;
		}

		
	}
}