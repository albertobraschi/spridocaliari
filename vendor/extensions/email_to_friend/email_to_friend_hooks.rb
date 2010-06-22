class EmailToFriendHooks < Spree::ThemeSupport::HookListener
  insert_before :cart_form do
    %(<p class="email_to_friend">
        <%= link_to(t('email_to_friend.send_to_friend'), email_to_friend_url('product', @product)) %>
    </p>)
  end
end

