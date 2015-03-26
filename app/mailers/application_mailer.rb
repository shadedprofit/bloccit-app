class ApplicationMailer < ActionMailer::Base
  default from: "edgar.pabon@gmail.com"
  layout 'mailer'

  def new_comment(user, post, comment)
    # New Headers
    headers["Message-ID"] = "<comments/#{comment.id}@edgarpabon-bloccit.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@edgarpabon-bloccit.example>"
    headers["References"] = "<post/#{post.id}@edgarpabon-bloccit.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
