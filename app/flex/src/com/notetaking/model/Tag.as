package com.notetaking.model
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class Tag
	{		
		private var _name:String;
		private var _count:Number;

		public function get count():Number {
			return _count;
		}

		public function set count(value:Number):void {
			_count = value;
		}


		public function get name():String {
			return _name;
		}

		public function set name(value:String):void {
			_name = value;
		}
	}
}