class ApplicationMailer < ActionMailer::Base
  default from: '"Donosake"<info@em4693.donosake.com>', charset: 'iso-2022-jp'
  layout 'mailer'
end
