# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
guest = User.create!(username: "guest", password: "password")
me = User.create!(username: "avital", password: "magichat12")
user2 = User.create!(username: "drucker", password: "magichat21")

Book.destroy_all
harrypotter1 = Book.create!(
  title: "HP1",
  author: "JKR",
  cover_image_url: "https://upload.wikimedia.org/wikipedia/en/b/bf/Harry_Potter_and_the_Sorcerer's_Stone.jpg",
  average_rating: 4.43,
  page_length: 320,
  published_date: DateTime.new(1997, 6, 26),
  publisher:  "Arthur A. Levine Books",
  isbn: "0439554934",
  url_to_buy: "https://www.amazon.com/gp/product/0439554934/ref=x_gr_w_glide_bb?ie=UTF8&tag=x_gr_w_glide_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0439554934&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    Harry Potter and the Philosopher's Stone is the first novel in the Harry Potter series and J. K. Rowling's debut novel, first published in 1997 by Bloomsbury.
    It was published in the United States as Harry Potter and the Sorcerer's Stone by Scholastic Corporation in 1998.
    The plot follows Harry Potter, a young wizard who discovers his magical heritage as he makes close friends and a few enemies in his first year at the Hogwarts School of Witchcraft and Wizardry.
    With the help of his friends, Harry faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry's parents, but failed to kill Harry when he was just a year old.
    HEREDOC
)

song_of_ice_and_fire = Book.create!(
  title: "Game of Thrones",
  author: "George R.R. Martin",
  cover_image_url: "http://vignette1.wikia.nocookie.net/iceandfire/images/b/b6/Game_of_thrones.jpeg/revision/latest?cb=20130302001049",
  average_rating: 4.44,
  page_length: 835,
  published_date: DateTime.new(2005, 8),
  publisher: "Bantam",
  isbn: "0553588486",
  url_to_buy: "https://www.amazon.com/gp/product/0553588486/ref=x_gr_w_glide_bb?ie=UTF8&tag=x_gr_w_glide_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0553588486&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    A Game of Thrones is the first novel in A Song of Ice and Fire, a series of fantasy novels by American author George R. R. Martin.
    It was first published on August 1, 1996.
    In the novel, recounting events from various points of view, Martin introduces the plot-lines of the noble houses of Westeros, the Wall, and the Targaryens.
  HEREDOC
)

great_gatsby = Book.create!(
  title: "The Great Gatsby",
  author: "F. Scott Fitzgerald",
  cover_image_url: "https://upload.wikimedia.org/wikipedia/en/f/f7/TheGreatGatsby_1925jacket.jpeg",
  average_rating: 3.88,
  page_length: 180,
  published_date: DateTime.new(1925, 4),
  publisher: "Scribner",
  isbn: "0743273567",
  url_to_buy: "https://www.amazon.com/gp/product/0743273567/ref=x_gr_w_bb?ie=UTF8&tag=x_gr_w_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0743273567&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    The Great Gatsby is a 1925 novel written by American author F. Scott Fitzgerald that follows a cast of characters living in the fictional town of West Egg on prosperous Long Island in the summer of 1922.
    The story primarily concerns the young and mysterious millionaire Jay Gatsby and his quixotic passion and obsession for the beautiful former debutante Daisy Buchanan.
    Considered to be Fitzgerald's magnum opus, The Great Gatsby explores themes of decadence, idealism, resistance to change, social upheaval, and excess, creating a portrait of the Jazz Age or the
    Roaring Twenties that has been described as a cautionary tale regarding the American Dream.
  HEREDOC
)

i_robot = Book.create!(
  title: "I, Robot",
  author: "Isaac Asimov",
  cover_image_url: "https://upload.wikimedia.org/wikipedia/en/8/8e/I_Robot_-_Runaround.jpg",
  average_rating: 4.17,
  page_length: 225,
  published_date: DateTime.new(1950, 12, 2),
  publisher: "Spectra",
  isbn: "0553803700",
  url_to_buy: "https://www.amazon.com/gp/product/0553803700/ref=x_gr_w_glide_bb?ie=UTF8&tag=x_gr_w_glide_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0553803700&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    I, Robot is a collection of 9 science fiction short stories by Isaac Asimov.
    The stories originally appeared in the American magazines Super Science Stories and Astounding Science Fiction between 1940 and 1950 and were then compiled into a book for stand-alone publication by Gnome Press in 1950, in an initial edition of 5,000 copies.
    The stories are woven together by a framing narrative in which the fictional Dr. Susan Calvin tells each story to a reporter (who serves as the narrator) in the 21st century.
    Although the stories can be read separately, they share a theme of the interaction of humans, robots, and morality,
    and when combined they tell a larger story of Asimov's fictional history of robotics.
  HEREDOC
)

macbeth = Book.create!(
  title: "Macbeth",
  author: "William Shakespeare",
  cover_image_url: "https://upload.wikimedia.org/wikipedia/commons/a/ad/Voodoo-Macbeth-Poster.jpg",
  average_rating: 3.88,
  page_length: 249,
  published_date: DateTime.new(1606),
  publisher: "Simon & Schuster",
  isbn: "0743477103",
  url_to_buy: "https://www.amazon.com/gp/product/0743477103/ref=x_gr_w_glide_bb?ie=UTF8&tag=x_gr_w_glide_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0743477103&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    Macbeth (full title The Tragedy of Macbeth) is a tragedy by William Shakespeare; it is thought to have been first performed in 1606.
    It dramatises the damaging physical and psychological effects of political ambition on those who seek power for its own sake.
    Of all the plays that Shakespeare wrote during the reign of James I, who was patron of Shakespeare's acting company, Macbeth most clearly reflects the playwright's relationship with his sovereign.
    It was first published in the Folio of 1623, possibly from a prompt book, and is his shortest tragedy."
  HEREDOC
)


storm_of_swords = Book.create!(
  title: "A Storm of Swords",
  author: "George R.R. Martin",
  cover_image_url: "https://c1.staticflickr.com/1/498/19277128806_0e0811a95c_b.jpg",
  average_rating: 4.54,
  page_length: 1177,
  published_date: DateTime.new(2000, 8, 8),
  publisher: "Bantam",
  isbn: "055357342X",
  url_to_buy: "https://www.amazon.com/gp/product/055357342X/ref=x_gr_w_glide_bb?ie=UTF8&tag=x_gr_w_glide_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=055357342X&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    A Storm of Swords is the third of seven planned novels in A Song of Ice and Fire, a fantasy series by American author George R. R. Martin.
    It was first published on August 8, 2000, in the United Kingdom,[1] with a United States edition following in November 2000.
    A Storm of Swords picks up the story slightly before the end of its predecessor, A Clash of Kings.
    The Seven Kingdoms of Westeros are still in the grip of the War of the Five Kings, wherein Robb Stark, Balon Greyjoy, Joffrey Baratheon, and Stannis Baratheon compete for the Iron Throne.
    Meanwhile, a large host of wildlings approach the Wall under the leadership of Mance Rayder, the self-proclaimed "King Beyond the Wall", with only the undermanned Night's Watch in opposition.
    Finally, Daenerys Targaryen approaches Pentos.
  HEREDOC
)

clash_of_kings = Book.create!(
  title: "A Clash of Kings",
  author: "George R.R. Martin",
  cover_image_url: "https://c2.staticflickr.com/4/3040/2862719214_aff1f18d71_z.jpg?zz=1",
  average_rating: 4.4,
  page_length: 761,
  published_date: DateTime.new(1998, 11, 16),
  publisher: "Bantam",
  isbn: "0553381695",
  url_to_buy: "https://www.amazon.com/gp/product/0553381695/ref=x_gr_w_glide_bb?ie=UTF8&tag=x_gr_w_glide_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0553381695&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    A Clash of Kings is the second novel in A Song of Ice and Fire, an epic fantasy series by American author George R. R. Martin expected to consist of seven volumes.
    It was first published on 16 November 1998 in the United Kingdom, although the first United States edition did not follow until March 1999.
    A Clash of Kings depicts the Seven Kingdoms of Westeros in civil war, while the Night's Watch mounts a reconnaissance to investigate the mysterious people known as wildlings.
    Meanwhile, Daenerys Targaryen continues her plan to reconquer the Seven Kingdoms.
  HEREDOC
)

feast_for_crows = Book.create!(
  title: "A Feast for Crows",
  author: "George R.R. Martin",
  cover_image_url: "https://c1.staticflickr.com/3/2630/3803750979_229e0dd6ec_b.jpg",
  average_rating: 4.09,
  page_length: 1061,
  published_date: DateTime.new(2005, 10, 17),
  publisher: "Bantam Books",
  isbn: "055358202X",
  url_to_buy: "https://www.amazon.com/gp/product/055358202X/ref=x_gr_w_glide_bb?ie=UTF8&tag=x_gr_w_glide_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=055358202X&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    The War of the Five Kings is slowly coming to its end.
    Stannis Baratheon has gone to the aid of the Wall, where Jon Snow has become the 998th Lord Commander of the Night's Watch.
    King Tommen Baratheon, Joffrey's eight-year-old brother, now rules in King's Landing under his mother, Cersei Lannister.
    Brienne, the Maid of Tarth, is on a mission to find Sansa Stark, aided by Jaime Lannister.
    Sansa Stark is hiding in the Vale, protected by Petyr Baelish, who has murdered his wife Lysa Arryn and named himself Protector of the Vale and guardian of eight-year-old Lord Robert Arryn.
  HEREDOC
)

dance_with_dragons = Book.create!(
  title: "A Dance with Dragons",
  author: "George R.R. Martin",
  cover_image_url: "https://c1.staticflickr.com/8/7103/7152588753_0122e0b4ff_b.jpg",
  average_rating: 4.3,
  page_length: 1125,
  published_date: DateTime.new(2011, 7, 12),
  publisher: "Bantam",
  url_to_buy: "https://www.amazon.com/s/ref=x_gr_w_bb?tag=x_gr_w_bb-20&creative=374001&campaign=211041&adid=082VK13VJJCZTQYGWWCZ&index=books&keyword=A+Dance+with+Dragons",
  description: <<-HEREDOC
    A Dance with Dragons is the fifth of seven planned novels in the epic fantasy series A Song of Ice and Fire by American author George R. R. Martin.
    In some areas the paperback edition was published in two parts titled Dreams and Dust and After the Feast.
    It was the first novel in the series to be published following the commencement of the HBO series adaptation, Game of Thrones, and runs to 1,040 pages.
  HEREDOC
)

nineteen84 = Book.create!(
  title: "1984",
  author: "George Orwell",
  cover_image_url: "https://c2.staticflickr.com/4/3598/3469818507_91cf61591e_z.jpg?zz=1",
  average_rating: 4.13,
  page_length: 328,
  published_date: DateTime.new(1949, 6, 8),
  publisher: "Signet Classics",
  url_to_buy: "https://www.amazon.com/gp/product/0451524934/ref=x_gr_w_glide_bb?ie=UTF8&tag=x_gr_w_glide_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0451524934&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    Nineteen Eighty-Four, often published as 1984, is a dystopian novel by English author George Orwell published in 1949.
    The novel is set in Airstrip One (formerly known as Great Britain), a province of the superstate Oceania in a world of perpetual war, omnipresent government surveillance, and public manipulation.
    The superstate and its residents are dictated to by a political regime euphemistically named English Socialism, shortened to "Ingsoc" in Newspeak, the government's invented language.
    The superstate is under the control of the privileged elite of the Inner Party, a party and government that persecutes individualism and independent thinking as "thoughtcrime", which is enforced by the "Thought Police".
  HEREDOC
)

beowulf = Book.create!(
  title: "Beowulf",
  author: "Unknown",
  cover_image_url: "https://c1.staticflickr.com/2/1451/24195563595_0ca2e97bdd_b.jpg",
  average_rating: 3.41,
  page_length: 213,
  published_date: DateTime.new(2001, 2, 17),
  publisher: "W.W. Norton & Company",
  url_to_buy: "https://www.amazon.com/gp/product/0393320979/ref=x_gr_w_glide_bb?ie=UTF8&tag=x_gr_w_glide_bb-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0393320979&SubscriptionId=1MGPYB6YW3HWK55XCGG2",
  description: <<-HEREDOC
    Beowulf is an Old English epic poem consisting of 3182 alliterative lines.
    It may be the oldest surviving long poem in Old English and is commonly cited as one of the most important works of Old English literature.
    A date of composition is a matter of contention among scholars; the only certain dating pertains to the manuscript, which was produced between 975 and 1025.
    The author was an anonymous Anglo-Saxon poet, referred to by scholars as the "Beowulf poet".
  HEREDOC
)


Bookshelf.destroy_all
my_favorite_books = Bookshelf.create!(title: "my favorite books", user_id: me.id)
classics = Bookshelf.create!(title: "classics", user_id: me.id)
game_of_thrones = Bookshelf.create!(title: "game of thrones", user_id: user2.id)
english_books = Bookshelf.create!(title: "english books", user_id: user2.id)

BookTagging.destroy_all
BookTagging.create!(book_id: harrypotter1.id, bookshelf_id: my_favorite_books.id)
BookTagging.create!(book_id: song_of_ice_and_fire.id, bookshelf_id: my_favorite_books.id)
BookTagging.create!(book_id: great_gatsby.id, bookshelf_id: my_favorite_books.id)
BookTagging.create!(book_id: i_robot.id, bookshelf_id: classics.id)
BookTagging.create!(book_id: great_gatsby.id, bookshelf_id: classics.id)
BookTagging.create!(book_id: macbeth.id, bookshelf_id: classics.id)

BookTagging.create!(book_id: storm_of_swords.id, bookshelf_id: game_of_thrones.id)
BookTagging.create!(book_id: song_of_ice_and_fire.id, bookshelf_id: game_of_thrones.id)
BookTagging.create!(book_id: clash_of_kings.id, bookshelf_id: game_of_thrones.id)
BookTagging.create!(book_id: feast_for_crows.id, bookshelf_id: game_of_thrones.id)
BookTagging.create!(book_id: dance_with_dragons.id, bookshelf_id: game_of_thrones.id)

BookTagging.create!(book_id: nineteen84.id, bookshelf_id: english_books.id)
BookTagging.create!(book_id: beowulf.id, bookshelf_id: english_books.id)
