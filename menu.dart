import 'dart:io';
import 'book.dart';
import 'library.dart';

void showMenu() {
  while (true) {
    print('\n📚 مدیریت کتابخانه');
    print('1) افزودن کتاب');
    print('2) حذف کتاب');
    print('3) نمایش کتاب‌ها');
    print('4) جستجو');
    print('5) تغییر وضعیت مطالعه');
    print('0) خروج');

    stdout.write('انتخاب: ');
    String? choice = stdin.readLineSync();

    if (choice == '0') break;

    if (choice == '1') {
      stdout.write('عنوان: ');
      String title = stdin.readLineSync()!;

      stdout.write('نویسنده: ');
      String author = stdin.readLineSync()!;

      stdout.write('سال انتشار: ');
      int year = int.parse(stdin.readLineSync()!);

      addBook(Book(title, author, year, false));
    }

    else if (choice == '2') {
      stdout.write('عنوان کتاب: ');
      removeBook(stdin.readLineSync()!);
    }

    else if (choice == '3') {
      showBooks();
    }

    else if (choice == '4') {
      stdout.write('author یا year: ');
      String type = stdin.readLineSync()!;

      if (type == 'author') {
        stdout.write('نام نویسنده: ');
        searchByAuthor(stdin.readLineSync()!);
      } else if (type == 'year') {
        stdout.write('سال: ');
        searchByYear(int.parse(stdin.readLineSync()!));
      }
    }

    else if (choice == '5') {
      stdout.write('عنوان کتاب: ');
      toggleRead(stdin.readLineSync()!);
    }

    else {
      print('❌ گزینه نامعتبر');
    }
  }
}
