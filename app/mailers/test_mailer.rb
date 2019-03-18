class TestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test_mailer.notify.subject
  #
  def notify
    @greeting = "Hi"

    mail to: "wiwi5223@gmail.com"
  end
end
