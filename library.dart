import 'book.dart';

List<Book> books = [];

void addBook(Book book) {
  books.add(book);
}

void removeBook(String title) {
  books.removeWhere((b) => b.title == title);
}

void showBooks() {
  if (books.isEmpty) {
    print('📭 کتابی وجود ندارد');
    return;
  }

  for (var b in books) {
    print(
        '${b.title} | ${b.author} | ${b.year} | '
        '${b.isRead ? 'خوانده شده' : 'خوانده نشده'}');
  }
}

void searchByAuthor(String author) {
  for (var b in books) {
    if (b.author == author) {
      print(b.title);
    }
  }
}

void searchByYear(int year) {
  for (var b in books) {
    if (b.year == year) {
      print(b.title);
    }
  }
}

void toggleRead(String title) {
  for (var b in books) {
    if (b.title == title) {
      b.isRead = !b.isRead;
      print('✔️ وضعیت تغییر کرد');
      return;
    }
  }
  print('❌ کتاب پیدا نشد');
}
