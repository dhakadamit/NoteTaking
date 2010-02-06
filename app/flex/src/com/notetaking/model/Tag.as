package com.notetaking.model
{
	import mx.collections.ArrayCollection;
	
	public class Tag
	{
		
		private var _name:String;
		private var _notes:ArrayCollection;
		private var _count:Number;

		public function get count():Number {
			return _count == null ? notes.length : _count;
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

		public function get notes():ArrayCollection {
			return _notes;
		}

		public function set notes(value:ArrayCollection):void {
			_notes = value;
		}

	}
}