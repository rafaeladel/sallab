module CommonHelper
  def banner_markup(**args)
    banner = args.fetch(:banner, nil)
    unless banner.nil?
      classes = args.fetch(:class, nil)
      render "frontend/common/banner", banner: banner, classes: classes
    end
  end
end
