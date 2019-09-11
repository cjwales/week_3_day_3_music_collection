require('pry')
require_relative('./models/album.rb')
require_relative('./models/artist.rb')

artist1 = Artist.new({
  'name' => 'MF Doom'
  })

artist1.save()

artist2 = Artist.new({
  'name' => 'Radiohead'
  })

artist2.save()

album1 = Album.new({
  'name' => 'MM Food',
  'genre' => 'Hip-Hop',
  'artist_id' => artist1.id
  })

album1.save()


artists = Artist.all()
albums = Album.all()
binding.pry
nil
