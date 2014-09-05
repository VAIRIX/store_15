Deface::Override.new(
  :virtual_path => 'spree/admin/products/_form',
  :name => 'add_provider_field_to_product_form',
  :insert_before => "erb[loud]:contains('field_container :tax_category')",
  :text => "<div data-hook='admin_product_form_provider'>
              <%= f.field_container :provider do %>
                <%= f.label :provider_id, Spree.t(:provider) %>
                <%= f.collection_select(:provider_id, @providers, :id, :name, { :include_blank => Spree.t('match_choices.none') }, { :class => 'select2' }) %>
                <%= f.error_message_on :provider %>
              <% end %>
            </div>"
)



