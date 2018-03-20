require('pg')
require('pry')

class Bounty
  attr_accessor :name, :species, :homeworld, :favourite_weapon
  attr_reader :id

  def initialize( options )
    @name = options['name']
    @species = options['species']
    @homeworld = options['homeworld']
    @favourite_weapon = options['favourite_weapon']
  end

def save
  db = PG.connect( { dbname: 'bounty_hunter', host: 'localhost'} )

  sql = "
    INSERT INTO bounties
      (name, species, homeworld, favourite_weapon)
      VALUES
        ($1,$2,$3,$4)
      ;
    "
    values = [@name, @species, @homeworld, @favourite_weapon]

    db.prepare("save_it", sql)
    db.exec_prepared("save_it", values)

    db.close()
  end

  def update()
          db = PG.connect( { dbname: 'bounty_hunter', host: 'localhost' })

          sql = "
            UPDATE bounties
            SET ((name, species, homeworld, favourite_weapon)
            = ($1, $2, $3, $4)
            WHERE id =
            ;
            "
            values = [@name, @species, @homeworld, @favourite_weapon]

            db.prepare("update", sql)
            db.exec_prepared("update", values)

            db.close()
          end

end
