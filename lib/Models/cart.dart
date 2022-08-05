import 'package:catelogapp/Models/catelog.dart';

class CartModel {

  //catalog field
  late CatelogModel _catalog;

  //Final collection
  final List<int> _itemIds = [];

  //get Catalog
  CatelogModel get catalog => _catalog;

  set catalog(CatelogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get Items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // get total price
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  // Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
