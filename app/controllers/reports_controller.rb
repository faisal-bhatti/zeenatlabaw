class ReportsController < ApplicationController
	def index
	end

	def new
		@report = Report.new
	end

	def create
		@report = Report.new(params[:report])
		@report.save!
		flash[:success] = "Report successfully saved."
		redirect_to reports_path
	end

	def report
		@report = Report.new
	end

	def download
    	@report = Report.find_by_rep_id(params[:report][:rep_id])
    	if @report
    		send_file @report.file.path, :filename => @report.rep_id
		else
			flash[:error] = "Please enter correct report id."
			redirect_to :back
		end
	end
end
