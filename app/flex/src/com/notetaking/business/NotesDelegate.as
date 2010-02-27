package com.notetaking.business
{
	
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
		
		public function getAllNotes(pageNumber:Number, contentQuery:String = "", titleQuery:String = "", tagQuery:String = ""):void {
			var url:String = new UrlBuilder().withBaseUrl(WebServiceUrls.GET_ALL_NOTES)
							.withParameter("page_number", pageNumber)
							.withParameter("query", contentQuery)
//							.withParameter("title_query", titleQuery)
							.withParameter("tag", tagQuery)
							.build();
			ServiceUtils.httpGet(url, this._responder);
		}
		
		public function getAllTags():void {
			ServiceUtils.httpGet(WebServiceUrls.GET_ALL_TAGS, this._responder);
		}
		
		public function createNote(note:Note):void {
			var xml:XML = new NoteBuilder().convertToXml(note);
			ServiceUtils.httpPost(WebServiceUrls.CREATE_NOTE, xml , this._responder, true); 
		}
		
		public function updateNote(note:Note):void {
			var xml:XML = new NoteBuilder().convertToXml(note);
			var url:String = WebServiceUrls.UPDATE_NOTE.replace("id", note.id);
			ServiceUtils.httpPut(url, xml , this._responder, true); 
		}
		
		public function deleteNote(noteId:String):void {
			var url:String = WebServiceUrls.DELETE_NOTE.replace("id", noteId);
			ServiceUtils.httpDestroy(url, this._responder); 
		}
		
		public function totalCount(contentQuery:String = "", titleQuery:String = "", tagQuery:String = ""):void {
			var url:String = new UrlBuilder().withBaseUrl(WebServiceUrls.TOTAL_COUNT)
							.withParameter("query", contentQuery)
//							.withParameter("title_query", titleQuery)
							.withParameter("tag", tagQuery)
							.build();
			ServiceUtils.httpGet(url, this._responder);
		}

	}
}