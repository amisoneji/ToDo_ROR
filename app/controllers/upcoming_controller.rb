class UpcomingController < ApplicationController
	def upcomingtask
		@todo_lists = Current.user.todo_lists
		@upcomings=@todo_lists.where('todo_lists.Date > ?', 1.days.from_now)
	end

end