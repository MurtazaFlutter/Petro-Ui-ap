class Products {
  final String title;
  final String image;
  final double price;
  final double ratings;
  final int totalRatings;

  Products({
    required this.title,
    required this.image,
    required this.price,
    required this.ratings,
    required this.totalRatings,
  });
}

List<Products> productList = [
  Products(
      title: 'Drools Dog Food',
      image: 'lib/assets/todaysdealimages/Drools-Dog-Food1.png',
      price: 35.49,
      ratings: 4.8,
      totalRatings: 356),
  Products(
      title: 'Clipart dog food',
      image: 'lib/assets/todaysdealimages/2.png',
      price: 29.49,
      ratings: 4.8,
      totalRatings: 356),
  Products(
      title: 'Beauty skin care',
      image: 'lib/assets/todaysdealimages/3.png',
      price: 24.49,
      ratings: 4.8,
      totalRatings: 356),
  Products(
      title: 'Dog Food',
      image: 'lib/assets/todaysdealimages/4.png',
      price: 15.49,
      ratings: 4.8,
      totalRatings: 356),
];
