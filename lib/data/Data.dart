import 'package:adidashop/modals/AccessoriesStyle.dart';
import 'package:adidashop/modals/DetailStyle.dart';
import 'package:adidashop/modals/JerseyStyle.dart';
import 'package:adidashop/modals/Style.dart';

final juventus = Style(
  logo: 'assets/juventus.png',
  isVisible: false,
);

final realmadrid = Style(
  logo: 'assets/realmadrid.png',
  isVisible: false,
);

final manchester = Style(
  logo: 'assets/manutd_logo.png',
  isVisible: false,
);

final barca = Style(
  logo: 'assets/barca.png',
  isVisible: false,
);

final mancity = Style(
  logo: 'assets/mancity_logo.png',
  isVisible: false,
);

final styles = [juventus, realmadrid, manchester, barca, mancity];

final man_red = JerseyStyle(
  image: "assets/red_jersey.jpg",
  price: "₹3999",
  type: "HOME 19/20",
);

final man_away = JerseyStyle(
  image: "assets/away_jersey.jpg",
  price: "₹2999",
  type: "AWAY 19/20",
);

final man_third = JerseyStyle(
  image: "assets/third_jersey.jpg",
  price: "₹3249",
  type: "THIRD 19/20",
);

List jerseystyles = [man_red, man_away, man_third];

final detail_red = DetailStyle(
  title: "Manchester United Home Kit 19/20",
  image: "assets/buy_red.jpg",
  price: "₹3999",
  type: "HOME 19/20",
);

final detail_away = DetailStyle(
  title: "Manchester United Away Kit 19/20",
  image: "assets/away_jersey.jpg",
  price: "₹2999",
  type: "AWAY 19/20",
);

final detail_third = DetailStyle(
  title: "Manchester United Third Kit 19/20",
  image: "assets/third_jersey.jpg",
  price: "₹3249",
  type: "THIRD 19/20",
);


final backpack = AccessoriesStyle(
  image: "assets/backpack.jpg",
  price: "₹2699",
  type: "BACKPACK"
);

final shoes = AccessoriesStyle(
    image: "assets/manshoes.jpg",
    price: "₹2199",
    type: "SHOES"
);

final stocking = AccessoriesStyle(
    image: "assets/manstocking.jpg",
    price: "₹599",
    type: "STOCKINGS"
);

final accessoriesstyles = [backpack, shoes, stocking];

