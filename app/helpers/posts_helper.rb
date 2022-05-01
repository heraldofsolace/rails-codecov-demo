module PostsHelper
  def post_title(title)
    title.upcase
  end

  def post_body(body)
    body.upcase
  end

  def post_title_and_body(title, body)
    "#{title} #{body}"
  end

  def title_lenght(title)
    title.length
  end

  def body_length(body)
    body.length
  end
end
