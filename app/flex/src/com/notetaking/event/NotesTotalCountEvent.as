package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class NotesTotalCountEvent extends CairngormEvent
	{
		public static const NOTES_TOTAL_COUNT:String = "notesTotalCountEvent";
		private var _callback:Function;
		private var _contentQuery:String;
		private var _titleQuery:String;
		private var _tagQuery:String;

		public function NotesTotalCountEvent(contentQuery:String, titleQuery:String, tagQuery:String, callback:Function = null)
		{
			super(NOTES_TOTAL_COUNT);
			this._callback = callback;
			this._contentQuery = contentQuery;
			this._titleQuery = titleQuery;
			this._tagQuery = tagQuery;
		}
		
		public function get callback():Function {
			return _callback;
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

	}
}