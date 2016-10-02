class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_drop(drop)
    @drop = drop

    mail to: "dragonko15296@gmail.com",
        subject: '【Dropgram】新しいドロップが入りました'
  end
end
