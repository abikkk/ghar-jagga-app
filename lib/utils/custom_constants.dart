class CustomConstants {
  // paths
  static const String routeHome = '/home';
  static const String routeLogin = '/login';
  static const String routeSignUp = '/signup';
  static const String routeAccount = '/account';
  static const String routeMenu = '/menu_view';
  static const String routeContact = '/contact';

  // UI
  static const int animationNormal = 400;
  static const int animationFast = 200;
  static const int animationSlow = 800;

  static const double iconBorderRadius = 12.00;
  static const double iconBorderRadiusSmall = 8.00;
  static const double imageBorderRadius = 30.00;
  static const double containerBorderRadius = 25.00;
  static const double containerBorderRadiusSmall = 10.00;

  // image paths
  static const String assetPath = 'assets/';
  static const String houseImages = '${assetPath}images/$propertyTypeHouse/';
  static const String houseDetailImages =
      '${assetPath}images/$propertyTypeHouse/details/';
  static const String apartmentImages =
      '${assetPath}images/$propertyTypeApartment/';
  static const String apartmentDetailImages =
      '${assetPath}images/$propertyTypeApartment/details/';
  static const String landImages = '${assetPath}images/$propertyTypeLand/';
  static const String landDetailImages =
      '${assetPath}images/$propertyTypeLand/details/';
  static const String flatImages = '${assetPath}images/$propertyTypeFlat/';
  static const String flatDetailImages =
      '${assetPath}images/$propertyTypeFlat/details/';
  static const String otherImages = '${assetPath}images/';
  static const String otherDetailImages = '${assetPath}images/details/';

  // static const List imageNames = [
  //   'other',
  //   'house',
  //   'apartment',
  //   'rental',
  //   'land',
  //   'flat'
  // ];

  // property types
  static const int propertyTypeOther = 0;
  static const int propertyTypeHouse = 1;
  static const int propertyTypeApartment = 2;
  static const int propertyTypeLand = 3;
  static const int propertyTypeFlat = 4;
  static const List propertyType = [
    'Other',
    'House',
    'Apartment',
    'Land',
    'Flat'
  ];
}
