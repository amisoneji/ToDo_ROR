class TodayController < ApplicationController
	def todaystask
		@todo_lists = Current.user.todo_lists
		@currentdate=DateTime.now.in_time_zone.to_date.strftime("%Y/%m/%d")
		@todays= @todo_lists.where(Date: @currentdate)
		
		
		#@todays=Current.user.todo_lists.where('todo_lists.Date > ?', 1.days.from_now)
		
		
		
	end
end