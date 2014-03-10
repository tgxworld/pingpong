module ApplicationHelper

  def gravatar_image_tag email = 'nobody@example.com', size = 150
    email ||= 'nobody@example.com'
    hash = Digest::MD5.hexdigest(email)
    image_tag "//www.gravatar.com/avatar/#{hash}?s=#{size}", height: size, width: size
  end

  def like_button url
    content_tag(:div, class: 'fb-box pull-left') do
      content_tag(:div, '', class: 'fb-like', data: { href: url, layout: 'button_count', show_faces: 'false', width: 250, send: 'false' })
    end
  end

  def follow_on_fb_button url
    content_tag(:div, class: 'fb-follow-box pull-left') do
      content_tag(:div, '', class: 'fb-follow', data: { href: url, colorscheme: 'light', layout: 'button',show_faces: 'false' })
    end
  end

  def follow_on_twitter_button url
    content_tag(:div, class: 'twt-follow-box pull-left') do
      link_to 'Follow @netguru', url, class: 'twitter-follow-button', data: { show_count: 'false', lans: 'en' }
    end
  end

  def tweet_button
    content_tag(:div, class: 'twt-box pull-left') do
      link_to 'Tweet', 'ttps://twitter.com/share', class: 'twitter-share-button hidden-xs', data: { lang: 'en' }
    end
  end

end
