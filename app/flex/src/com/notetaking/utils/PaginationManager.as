package com.notetaking.utils
{
	
	public class PaginationManager
	{
		private var _totalResultsPerPage:Number = 15;
		private var _totalCount:Number = 0;
		private var _currentPage:Number = 0;
		private var _displayingItemsFrom:Number = 0;
		private var _displayingItemsTo:Number = 0;
		private var fetchNewResultSet:Function;
		private var fetchTotalCount:Function;
		
		[Bindable]
		public var displayString:String;
	
		public function PaginationManager(fetchNewResultSet:Function, fetchTotalCount:Function)
		{
			this.fetchNewResultSet = fetchNewResultSet;
			this.fetchTotalCount = fetchTotalCount;
		}
		
		public function initialize():void {
			this._currentPage = 0;
			this._displayingItemsFrom = 0;
			this._displayingItemsTo = 0;
		}
		
		public function nextSetOfResults(event:Event = null):void {
			if(_currentPage == 0 || _currentPage < calculateTotalNumberOfPages()) {
				++_currentPage;
				fetchNewResultSet(_currentPage, processResultSet);
			}			
		}
		
		public function previousSetOfResults(event:Event = null):void {
			if(_currentPage > 1) {
				--_currentPage;
				fetchNewResultSet(_currentPage, processResultSet);
			}
		}
		
		private function processResultSet():void {
			_totalCount = fetchTotalCount();
			if(_totalCount == 0) {
				initialize();
			}
			
			updateDisplayString();
		}
		
		private function updateDisplayString():void {
			if(_currentPage == calculateTotalNumberOfPages()) {
				_displayingItemsFrom = _displayingItemsTo == 0 ? 0 : _displayingItemsTo + 1;
				_displayingItemsTo = _totalCount;				
			} 
			else {
				_displayingItemsTo = _currentPage * _totalResultsPerPage;
				_displayingItemsFrom = _displayingItemsTo - _totalResultsPerPage;
			}	
			displayString = _displayingItemsFrom + '-' + _displayingItemsTo + ' of ' + _totalCount;
		}
		
		private function calculateTotalNumberOfPages():Number {
			var count:int = _totalCount / _totalResultsPerPage;
			if(_totalCount % _totalResultsPerPage != 0) {
				count++;
			}
			return count;
		}
		
		public function set totalResultsPerPage(value:Number):void {
			this._totalResultsPerPage = value;
		}
		
	}
}