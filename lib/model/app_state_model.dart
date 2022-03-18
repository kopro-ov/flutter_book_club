import 'package:flutter/foundation.dart' as foundation;

import 'book_club.dart';
import 'book_club_repository.dart';

double _salesTaxRate = 0.06;
double _shippingCostPerItem = 7;

class AppStateModel extends foundation.ChangeNotifier {

  // All the available BookClub.
  List<BookClub> _availableBookClub = [];

  // The currently selected category of bookclub.
  BookClubCategory _selectedBookClubCategory = BookClubCategory.all;

  BookClubCategory get selectedBookClubCategory {
    return _selectedBookClubCategory;
  }

  void loadBookClubs() {
    _availableBookClub = BookClubRepository.loadBookClubs(BookClubCategory.all);
    notifyListeners();
  }

}