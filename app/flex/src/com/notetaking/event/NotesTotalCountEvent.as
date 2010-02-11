package com.notetaking.event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class NotesTotalCountEvent extends CairngormEvent
	{
		public static const NOTES_TOTAL_COUNT:String = "notesTotalCountEvent";
		private var _callback:Function;

		public function NotesTotalCountEvent(callback:Function = null)
		{
			super(NOTES_TOTAL_COUNT);
			this._callback = callback;
		}
		
		public function get callback():Function {
			return _callback;
		}
	}
}