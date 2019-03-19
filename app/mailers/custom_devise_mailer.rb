class CustomDeviseMailer < Devise::Mailer
  protected

  def subject_for(key)
    if key.to_s == 'confirmation_instructions'
      "Donosake本登録のご案内"
    else
      return super
    end
  end
end