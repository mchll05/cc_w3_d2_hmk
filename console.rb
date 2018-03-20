require('pry')
require_relative('models/bounties')

options_hash = { 'name' => 'Figwit', 'species' => 'Caprican', 'homeworld' => 'Caprica', 'favourite_weapon' => 'electric spear' }

bounty1 = Bounty.new( options_hash )

options_hash2 = { 'name' => 'Rachael', 'species' => 'Human', 'homeworld' => 'Earth', 'favourite_weapon' => 'bazooka' }

bounty2 = Bounty.new( options_hash2 )

bounty1.save()
bounty2.save()

p bounty2
