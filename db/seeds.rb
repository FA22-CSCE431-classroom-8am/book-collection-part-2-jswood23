# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

books = Book.create([
  {
    title: 'Atlas Shrugged',
    author: 'Ayn Rand',
    price: 8.15,
    published: '2005-04-21'
  },
  {
    title: 'Harry Potter',
    author: 'J.K. Rowling',
    price: 6.98,
    published: '1997-06-26'
  },
  {
    title: 'Brave New World',
    author: 'Aldous Huxley',
    price: 5.99,
    published: '1932-10-18'
  }
])

users = User.create([
  {
    username: 'jswood'
  },
  {
    username: 'howdy'
  },
  {
    username: 'maroon'
  },
  {
    username: 'whoop'
  },
])

user_books = UserBook.create([
  {
    user_id: 1,
    book_id: 1
  },
])