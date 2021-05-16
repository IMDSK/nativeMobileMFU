class ProductData {
  List<ProductItem> products;

  ProductData({this.products});
}

class ProductItem {
  String id;
  String name;
  String img;
  double price;
  String stock;
  int amount;
  List mulImg;
  List sizes;

  ProductItem(
      {this.id,
      this.name,
      this.img,
      this.price,
      this.stock,
      this.amount,
      this.mulImg,
      this.sizes});
}
