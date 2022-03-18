// THIS IS A SAMPLE FILE. Get the full content at the link above.

import 'book_club.dart';

class BookClubRepository {
 static const _allBookClubs = <BookClub>[
   BookClub(
     category: BookClubCategory.accessories,
     id: 0,
     isFeatured: true,
     name: 'Vagabond sack',
     price: 120,
   ),
   BookClub(
     category: BookClubCategory.home,
     id: 9,
     isFeatured: true,
     name: 'Gilt desk trio',
     price: 58,
   ),
   BookClub(
     category: BookClubCategory.clothing,
     id: 33,
     isFeatured: true,
     name: 'Cerise scallop tee',
     price: 42,
   ),
   // THIS IS A SAMPLE FILE. Get the full content at the link above.
 ];

 static List<BookClub> loadBookClubs(BookClubCategory category) {
   if (category == BookClubCategory.all) {
     return _allBookClubs;
   } else {
     return _allBookClubs.where((p) => p.category == category).toList();
   }
 }
}