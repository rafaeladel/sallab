class Frontend::FrontendContactController < Frontend::FrontendApplicationController

  before_action :set_banner

	def index
	end

	def branches
		@regions = Region.all
	end

	def contact_us
		@general_info = GeneralInfo.first
		if request.post?
			ContactMailer.contact_mail(@general_info, contact_params).deliver_now
		end
	end

  private
  def set_banner
		@banner = Banner.find_by(banner_type: Banner.banner_types[:contact])
	end

  def contact_params
		params.permit(:fullname, :email, :subject, :content)
	end
end