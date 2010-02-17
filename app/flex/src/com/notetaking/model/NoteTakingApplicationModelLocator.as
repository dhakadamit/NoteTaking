package com.notetaking.model
{
	import com.adobe.cairngorm.model.ModelLocator;
	import com.notetaking.view.components.Spinner;
	
	import mx.collections.ArrayCollection;
	import mx.core.IFlexDisplayObject;
	import mx.managers.PopUpManager;

	[Bindable]
	public class NoteTakingApplicationModelLocator implements ModelLocator
	{
		private static var modelLocator:NoteTakingApplicationModelLocator;
		
		public var notes:ArrayCollection = new ArrayCollection();
		public var tags:ArrayCollection = new ArrayCollection();
		public var notesTotalCount:Number;
		public var selectedNote:Note;
		public var progressBar:IFlexDisplayObject;
		
		public static function getInstance():NoteTakingApplicationModelLocator{
            if (modelLocator == null) {
                modelLocator = new NoteTakingApplicationModelLocator();
            }
            return modelLocator;
        }

		public function NoteTakingApplicationModelLocator()
		{
			var spinner:Spinner = new Spinner();
			spinner.setStyle("tickColor", "#FFCF4D");
			this.progressBar = PopUpManager.createPopUp(spinner, Spinner, true);
				
			if (modelLocator != null) {
                throw new Error("Only one NoteTakingApplicationModelLocator instance may be instantiated.");
            }
		}
		
		public function hideProgressBar():void {
			PopUpManager.removePopUp(progressBar);
		}

	}
}