class StudentsController < ApplicationController










private

	def student_parameters
		params.require(:student).permit(:first_name, :last_name)
	end

end