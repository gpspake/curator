class Poster < ApplicationRecord
  nilify_blanks

  def store_array(attr, val)
    write_attribute(attr, val.split(','))
  end

  def artists=(val)
    store_array(:artists, val)
  end

  def series=(val)
    store_array(:series, val)
  end

  def signed_by=(val)
    store_array(:signed_by, val)
  end

  def picture=(val)
    write_attribute(:picture, val.original_filename)
  end
end
