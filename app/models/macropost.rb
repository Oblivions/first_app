class Macropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :length => { :manimum => 140 }
end
