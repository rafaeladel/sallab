class Frontend::FrontendCareersController < Frontend::FrontendApplicationController

  before_action :set_job, only: [:new_candidate, :create_candidate]

	def index
		@page_info = get_page_info(:job)

		@banner = Banner.find_by(banner_type: Banner.banner_types[:careers])
		@jobs = SevenCareers::Job.all
	end

  def new_candidate
		@candidate = SevenCareers::Candidate.new
		render partial: "frontend/frontend_careers/candidate_form"
	end

	# POST /careers/1/candidates
	def create_candidate
		@candidate = SevenCareers::Candidate.new(candidate_params)
		@job.candidates << @candidate
		if @job.save
			redirect_to frontend_careers_url, notice: "Thanks, #{@candidate.firstname.capitalize}. You've applied to the job successfully."
		end
	end

	private
	def set_job
		@job = SevenCareers::Job.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def candidate_params
		params.require(:candidate).permit(:firstname, :lastname, :current_salary, :email, :phone, :resume)
	end
end