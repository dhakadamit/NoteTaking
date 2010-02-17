package com.notetaking.model.enums
{
	public class WebServiceUrls
	{
		public static const GET_ALL_NOTES:String = "notes.xml";
		public static const GET_ALL_TAGS:String = "notes/tags.xml";
		public static const CREATE_NOTE:String = "notes.xml";
		public static const UPDATE_NOTE:String = "notes/id.xml?_method=PUT";
		public static const TOTAL_COUNT:String = "notes/total_count.xml";

		public function WebServiceUrls()
		{
		}

	}
}