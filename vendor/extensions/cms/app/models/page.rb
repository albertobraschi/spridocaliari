class Page < ActiveRecord::Base

  before_validation :format_markup
  before_validation :published

  validates_presence_of :title, :message => 'required'
  validates_presence_of :body, :message => 'required'
  validates_uniqueness_of :permalink 
  
  make_permalink :with => :title
  
  named_scope :publish, {:conditions => [ 'published_at < ? and is_active = ?', Time.zone.now, 1]}

  def to_param
    return permalink unless permalink.blank?
    title.to_url
  end
  
  def format_markup
    if not self.body_raw.nil?
      self.body = RedCloth.new(self.body_raw,[:sanitize_html, :filter_html]).to_html
    end
  end
  
  def published
    #self.published_at ||= Time.now unless self.is_active == 0
    if self.is_active == 0
      if !self.published_at.blank?
          self.published_at = nil
      end
    else
      if self.published_at.blank?
          self.published_at = Time.now
      end
    end
  end

end