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

album2 = Album.new({
  'name' => 'madvilliany',
  'genre' => 'Hip-Hop',
  'artist_id' => artist1.id
  })

album2.save()

artist_for_album = album1.artist()
artist1_albums = artist1.list_albums()
artists = Artist.all()
albums = Album.all()
binding.pry
nil
