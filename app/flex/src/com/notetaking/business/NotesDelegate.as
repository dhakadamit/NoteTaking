package com.notetaking.business
{
	
	import com.adobe.serialization.json.JSON;
	import com.notetaking.model.Note;
	import com.notetaking.model.builders.NoteBuilder;
	import com.notetaking.model.enums.WebServiceUrls;
	import com.notetaking.utils.ServiceUtils;
	import com.notetaking.utils.UrlBuilder;
	
	import mx.rpc.IResponder;
	
	public class NotesDelegate
	{
		private var _responder:IResponder;
		
		public function NotesDelegate(responder:IResponder)
		{
			this._responder = responder;
		}
		
		public function getAll(pageNumber:Number):void {
			var url:String = new UrlBuilder().withBaseUrl(WebServiceUrls.GET_ALL_NOTES).withParameter("pageNumber", pageNumber).build();
			ServiceUtils.httpGet(url, this._responder);
		}
		
		public function createNote(note:Note):void {
			var object:Object = new NoteBuilder().convertToObject(note);
			var json:String = JSON.encode(object); 
			ServiceUtils.httpPost(WebServiceUrls.CREATE_NOTE, object , this._responder); 
		}

	}
}