class Poster < ApplicationRecord
  nilify_blanks

  def artists=(val)
    write_attribute(:artists, val.split(','))
  end
end
