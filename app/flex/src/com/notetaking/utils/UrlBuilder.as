package com.dhakads.utils
{
	import mx.collections.ArrayCollection;
	
	public class UrlBuilder
	{
		private var _baseUrl:String;
		private var _parameters:ArrayCollection = new ArrayCollection();
		
		public function UrlBuilder()
		{
		}
		
		public function withBaseUrl(baseUrl:String):UrlBuilder {
			this._baseUrl = baseUrl;
			return this;
		}
		
		public function withParameter(key:String, value:*):UrlBuilder {
			this._parameters.addItem(key + "=" + value);
			return this;
		}
		
		public function build():String {
			var url:String = this._baseUrl;
			
			if(this._parameters.length > 1) {
				url = url + "?" + this._parameters.getItemAt(0).toString();
			}
			
			for(var i:int = 1; i < this._parameters.length ; i++) {
				url = url + "&" + this._parameters.getItemAt(i).toString();
			}
			
			return url;
			 
		}

	}
}