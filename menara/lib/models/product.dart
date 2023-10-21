class HomeProduct {
  final String description;
  final String generalDescription;
  final String unit;
  final double price;
  final int itemNumber;
  final String image;
  int quantity;

  HomeProduct({
    required this.description,
    required this.generalDescription,
    required this.unit,
    required this.price,
    required this.itemNumber,
    required this.image,
    this.quantity = 0,
  });

  void incrementQuantity() {
    quantity++;
  }

  void decrementQuantity() {
    if (quantity > 0) {
      quantity--;
    }
  }
}

class Quantity {
  int value;
  Quantity(this.value);
}
