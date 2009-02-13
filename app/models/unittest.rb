class Unittest < ActiveRecord::Base
  def full_url
    # "#{testurl}?propurl=#{propurl}&basehref=#{basehref}&framework=#{framework}&hinav&#{hinav}&treecrumb=#{treecrumb}&titles=#{titles}&sectiontitle=#{sectiontitle}&backpack=#{backpack}&popup=#{popup}&Rrptlcount=#{rrptlcount}"
    url_attrs = attributes.dup
    url_attrs.delete("testurl")
    url_attrs.delete("updated_at")
    url_attrs.delete("created_at")
    url_attrs.delete("id")
    testurl + "?" + url_attrs.map{|k,v| "#{k}=#{v}"}.join("&")
  end
end
