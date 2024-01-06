class ContactController < ApplicationController
  def index
  end

  def create_inquiry
    # フォームからのパラメータを取得
    name = params[:name]
    message = params[:comment]
  
    # Inquiryオブジェクトを作成
    inquiry = Inquiry.new(name: name, message: message)
     
    # InquiryMailerを使用してメールを送信
    InquiryMailer.send_mail(inquiry).deliver_now
  end

end
