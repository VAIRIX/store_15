Deface::Override.new(
  :virtual_path => 'spree/admin/shared/_product_sub_menu',
  :name => 'add_provider_link_to_product_index',
  :insert_after => "erb:contains('tab :taxons')",
  :text => "<%= tab :providers %>"
)