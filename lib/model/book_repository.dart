// THIS IS A SAMPLE FILE. Get the full content at the link above.

import 'book.dart';

class BookRepository {
 static const _allBooks = <Book>[
   Book(
     category: Category.accessories,
     id: 0,
     isFeatured: true,
     name: 'Vagabond sack',
     price: 120,
   ),
   Book(
     category: Category.home,
     id: 9,
     isFeatured: true,
     name: 'Gilt desk trio',
     price: 58,
   ),
   Book(
     category: Category.clothing,
     id: 33,
     isFeatured: true,
     name: 'Cerise scallop tee',
     price: 42,
   ),
   // THIS IS A SAMPLE FILE. Get the full content at the link above.
 ];

 static List<Book> loadBooks(String name) {
     return _allBooks.where((p) => p.name == name).toList();
 }
}