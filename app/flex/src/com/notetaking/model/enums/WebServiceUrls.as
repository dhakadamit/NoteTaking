package com.notetaking.model.enums
{
	public class WebServiceUrls
	{
		public static const GET_ALL_NOTES:String = "http://localhost:3000/notes.xml";
		public static const CREATE_NOTE:String = "http://localhost:3000/notes.xml";
		public static const UPDATE_NOTE:String = "http://localhost:3000/notes/id.xml?_method=PUT";

		public function WebServiceUrls()
		{
		}

	}
}