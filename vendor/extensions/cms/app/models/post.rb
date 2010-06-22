class Post < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = Spree::Config[:cms_posts_per_page]
  #attr_accessible :user_id, :title, :body_raw, :published_at, :is_active, :permalink, :tag_list, :excerpt, :commentable, :meta_keywords, :meta_description

  is_taggable :tags
  
  belongs_to :user
  
  before_validation :format_markup
  #before_validation :generate_permalink
  before_validation :published
  
  make_permalink :with => :title
   
  validates_presence_of :title, :message => 'required'
  validates_presence_of :body, :message => 'required'
  validates_uniqueness_of :permalink 
  
  default_scope :order => 'published_at DESC'
  named_scope :publish, {:conditions => [ 'published_at < ? and is_active = ?', Time.zone.now, 1]}
  

  #should be part of is_taggable
  #pulled from http://github.com/gnugeek/is_taggable/commit/10b590865f0effeed20f00e3581a7aed8a6bd3b4
  def self.find_all_tagged_with(tag_or_tags, conditions=[])
    return [] if tag_or_tags.nil? || tag_or_tags.empty?
    case tag_or_tags
    when Array, IsTaggable::TagList
      all(:include => ['tags', 'taggings'], :conditions => conditions ).select { |record| tag_or_tags.all? { |tag| record.tags.map(&:name).include?(tag) } } || []
    else
      all(:include => ['tags', 'taggings'], :conditions => conditions).select { |record| record.tags.map(&:name).include?(tag_or_tags)  } || []
    end
  end
    
  def to_param
    return permalink unless permalink.blank?
    title.to_url
  end
  
  def format_markup
    if not self.body_raw.nil?
      self.body = RedCloth.new(self.body_raw,[:sanitize_html, :filter_html]).to_html
    end
  end

  #def link
  #  ensure_slash_prefix permalink
  #end
  
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
  
  def month
    published_at.strftime('%B %Y')
  end
  
#private

#  def ensure_slash_prefix(str)
#    str.index('/') == 0 ? str : '/' + str
#  end   
end
