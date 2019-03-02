class Poster < ApplicationRecord
  nilify_blanks

  def artists=(val)
    write_attribute(:artists, val.split(','))
  end

  def picture=(val)
    write_attribute(:picture, val.original_filename)
  end
end
