# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

['Montevideo','Canelones  ', 'Maldonado ','Salto  ','Colonia  ',
  'Paysandú ','San José ','Rivera ','Tacuarembó ','Cerro Largo  ',
  'Soriano  ','Artigas  ','Rocha  ','Florida  ','Lavalleja  ',
  'Durazno  ','Río Negro  ','Treinta y Tres ','Flores'].each.with_index do |state, i|
  state = Spree::State.create(name: state.strip, country_id: 54)
end