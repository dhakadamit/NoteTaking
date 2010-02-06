package com.notetaking.model
{
	import mx.collections.ArrayCollection;
	
	public class Note
	{
		
		private var _content:String;
		private var _createdAt:String;
		private var _tags:ArrayCollection;

		public function get createdAt():String {
			return _createdAt;
		}

		public function set createdAt(value:String):void {
			_createdAt = value;
		}

		public function get tags():ArrayCollection {
			return _tags;
		}

		public function set tags(value:ArrayCollection):void {
			_tags = value;
		}

		public function get content():String {
			return _content;
		}

		public function set content(value:String):void {
			_content = value;
		}


		public function Note()
		{
		}

	}
}