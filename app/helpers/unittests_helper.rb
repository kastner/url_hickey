module UnittestsHelper
  def full_url(url)
    host = url.testurl.gsub(/https?:\/\//, '')
    attrs = url.attributes.merge(:host => host)
    attrs.delete("testurl")
    attrs.delete("created_at")
    attrs.delete("updated_at")
    attrs.delete("id")

    the_url = url_for(attrs)
  end
end
