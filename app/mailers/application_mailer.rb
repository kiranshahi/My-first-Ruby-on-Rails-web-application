class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'
end

class MyMailer < ActionMailer::Base
	helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views
	
	def confirmation_instructions(record, token, opts={})
		headers["Custom-header"] = "Bar"
		opts[:from] = 'mail@kirans.com.np'
		opts[:reply_to] = 'mail@kirans.com.np'
		super
	end
end
