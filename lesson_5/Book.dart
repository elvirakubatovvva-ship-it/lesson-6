class Book {
  String _title;
  String _author;
  double _rating;

  Book(this._title, this._author) : _rating = 0.0;

  Book.withRating(this._title, this._author, this._rating);

  String get title => _title;
  String get author => _author;
  double get rating => _rating;

  set rating(double value) {
    if (value >= 0 && value <= 10) {
      _rating = value;
    }
  }

  void displayInfo() {
    print('Title: $_title');
    print('Author: $_author');
    print('Rating: $_rating');
  }
}

class Library {
  String name;
  List<Book> _books = [];

  Library(this.name);

  void addBook(Book b) {
    _books.add(b);
  }

  void showBooks() {
    print('Library: $name');
    print('Books list:');
    for (int i = 0; i < _books.length; i++) {
      print('${i + 1}. ${_books[i].title}');
    }
  }

  int get length => _books.length;
}

void main() {
  Book book1 = Book('Harry Potter', 'J.K. Rowling');
  Book book2 = Book.withRating('Sherlock Holmes', 'Arthur Conan Doyle', 9.5);
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald');
  book3.rating = 8.5;

  Library cityLib = Library('City Library');

  cityLib.addBook(book1);
  cityLib.addBook(book2);
  cityLib.addBook(book3);

  cityLib.showBooks();
  print('Total books in library: ${cityLib.length}');       


}