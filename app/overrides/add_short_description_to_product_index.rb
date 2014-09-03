Deface::Override.new(
  :virtual_path => 'spree/shared/_products',
  :name => 'add_short_description_to_product_index',
  :replace => "erb:contains('link_to truncate')" ,
  :text => "<%= link_to '/', :class => 'info', :itemprop => 'name', :title => product.name do %>
              <%= truncate(product.name, :length => 50) %><br>
              <% if product.short_description && ( spree_current_user.blank? ||  !spree_current_user.has_spree_role?('admin')) %>
                <span class='sht-des-index'><%= truncate(product.short_description, :length => 50) %></span>
              <% end -%>
            <% end %>"
)