package com.notetaking.business
{
	
	import com.notetaking.model.enums.WebServiceUrls;
	import com.notetaking.utils.ServiceUtils;
	
	import mx.rpc.IResponder;
	
	public class NotesDelegate
	{
		private var _responder:IResponder;
		
		public function NotesDelegate(responder:IResponder)
		{
			this._responder = responder;
		}
		
		public function getAll():void {
			ServiceUtils.httpGet(WebServiceUrls.GET_ALL_NOTES, this._responder);
		}

	}
}