Spree on CMS
=========

A blog / static page extension for Spree version 10.x. Spree admin users can create blog posts and static pages.  The extension extends the admin interface to allow the adding of display names to users that will be displayed on blog posts.

Comments on blog posts are currently powered by [Disqus](http://disqus.com/comments/).  The comment system and/or comments on individual blog posts can be disabled, if preferred.

The extension provides basic views and a stylesheet that can easily be overridden through your site extension.  Also, several helpers exist to allow tags, posts and pages to be accesible in your site views.

Installation
------------

    script/extension install git://github.com/jacobwg/spree-cms.git
    rake gems:install
    rake db:migrate

All authors for the blog should be given a display name in the admin/users edit form. 

Edit preferences in cms_extension.rb (Disqus site name if you are using Disqus)

All done!

Setup
------

in cms_extension.rb add your disqus account identifier if you plan to use comments.

You can edit the preferences in the extension.rb file or in the http://localhost:3000/admin/cms_settings ui.

The blog home slug requires a server restart so it can only be edited in the extension file.

Posts
-------

New Posts can be created in the admin section http://localhost:3000/admin/posts

Posts have unique permalinks created for all new post entries. The permalink can be modified after initial save.

RedCloth is used for post formatting.

is_taggable gem is used for adding tags to each post. A helper linked_tag_list is provided to display a list of the link tags to filter by.


Comments
--------

Comments can be opened or closed for a post.  The comment form displays on the post page when enabled for the specific post.

Comments are now managed by Disqus via the disqus gem, http://github.com/norman/disqus/. Management of spam and comment moderation is done through the Disqus UI.

Create disqus account at [http://disqus.com/comments/](http://disqus.com/comments/).  


Blog
-----

View the blog at http://localhost:3000/blog or the defined slug from the preferences.

Use helper post_link_list(limit) to get a list of recent post links.

Views are in folder extension/app/views/posts


RSS
-----

http://localhost:3000/blog.rss - All Posts

Customize RSS feed in extension/app/views/posts/index.rss.builder


Pages
-----

Under Admin section add pages for static-content (http://localhost:3000/admin/pages).

Use helper page_link() to print a link to page, based on ID or Permalink.

Pages are displayed by the content route provided by Spree core. Customize the extension/app/views/content/show.html.erb file.



Tips
--------

You can add a blog link anywhere on your site or include the recent_articles partial.

One option is to add the Blog link to the store_menu partial

    <li><%= link_to t('blog'), posts_path %></li>

Use the cms_content_for partial to include the cms css and recent articles partial in the sidebar.

    <%= render :partial => 'shared/cms_content_for'%>



TODO
-----

- improve permalinks for posts
- wysiwyg editor for blog posts and pages.


Credits
-------

Based on spree-wordsmith created by [Matt Anderson](http://tonkapark.com/)