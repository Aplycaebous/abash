class Item {
  String? titel;
  String? category;
  String? thumbURL;
  String? location;
  double? price;

  Item(this.titel, this.category, this.location, this.price, this.thumbURL);

  //
  static List<Item> recommendation = [
    Item("Concord Villaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "House", "Dhanmondi, Dhaka", 35000,
        'assets/images/house1.jpeg'),
    Item("Big Villa", "Villa", "Miami, USA", 3000,
        "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg"),
    Item("Small House", "House", "Wesex, London", 1500,
        "https://images.pexels.com/photos/2079234/pexels-photo-2079234.jpeg"),
    Item("Luxios Apartement", "Apartement", "New York, USA", 800,
        "https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg"),
    Item("Family House", "House", "Manouba, Tunis", 200,
        "https://images.pexels.com/photos/8031875/pexels-photo-8031875.jpeg"),
    Item("Province House", "House", "Kef, Tunis", 100,
        "https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg"),
  ];
}
