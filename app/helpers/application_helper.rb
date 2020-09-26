module ApplicationHelper
  def display_gravatar_image(post)
    return unless post.user && user_signed_in?

    gravatar_image_tag(post.user.email, size: 32, alt: "#{post.user.fname} #{post.user.lname}")
  end

  def display_taunter_name(post)
    post.user && user_signed_in? ? "#{post.user.fname} #{post.user.lname} wrote:" : 'Someone wrote:'
  end
end
