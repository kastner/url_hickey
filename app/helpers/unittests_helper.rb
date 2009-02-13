module UnittestsHelper
  def full_url(url)
    url_for(url.url_attributes)
  end
end
