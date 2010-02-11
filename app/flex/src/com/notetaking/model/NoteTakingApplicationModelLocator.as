package com.notetaking.model
{
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	[Bindable]
	public class NoteTakingApplicationModelLocator implements ModelLocator
	{
		private static var modelLocator:NoteTakingApplicationModelLocator;
		
		public var notes:ArrayCollection = new ArrayCollection();
		public var notesTotalCount:Number;
		public var selectedNote:Note;
		
		public static function getInstance():NoteTakingApplicationModelLocator{
            if (modelLocator == null) {
                modelLocator = new NoteTakingApplicationModelLocator();
            }
            return modelLocator;
        }

		public function NoteTakingApplicationModelLocator()
		{
			if (modelLocator != null) {
                throw new Error("Only one NoteTakingApplicationModelLocator instance may be instantiated.");
            }
		}

	}
}