class InquiryMailer < ApplicationMailer

  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: @inquiry.email,
      to:   ENV['GMAIL_USERNAME'],
      subject: 'お問い合わせ通知'
    )
  end

end
