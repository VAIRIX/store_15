Deface::Override.new(
  :virtual_path => 'spree/admin/products/_form',
  :name => 'add_short_description_to_product_edit',
  :insert_before => "erb[loud]:contains('field_container :description')",
  :text => "<%= f.field_container :short_description do %>
              <%= f.label :short_description, Spree.t(:short_description) %>
              <%= f.text_area :short_description, :class => 'fullwidth' %>
              <%= f.error_message_on :short_description %>
            <% end %>"
)


