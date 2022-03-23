class UpcomingController < ApplicationController
	def upcomingtask
		todo_lists = Current.user.todo_lists
		@upcomings=todo_lists.where('todo_lists.date > ?', 1.days.from_now)
	end

end