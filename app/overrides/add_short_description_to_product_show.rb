Deface::Override.new(
  :virtual_path => 'spree/products/show',
  :name => 'add_short_description_to_product_show',
  :insert_before => "#product-description",
  :text => "<div id='product-short-description'>
              <% if @product.short_description && ( spree_current_user.blank? ||  !spree_current_user.has_spree_role?('admin')) %>
                <p class='bold'><%= @product.short_description %></p>
              <% end -%>
            </div>"
)