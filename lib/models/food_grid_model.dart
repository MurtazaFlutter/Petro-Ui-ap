class FoodGrid {
  final String title;
  final String image;

  FoodGrid({
    required this.title,
    required this.image,
  });
}

List<FoodGrid> foodGridList = [
  FoodGrid(
    title: 'DRY FOODS',
    image: 'lib/assets/foods/image1.png',
  ),
  FoodGrid(
    title: 'PROTEIN',
    image: 'lib/assets/foods/image2.png',
  ),
  FoodGrid(
    title: 'REGULAR FOOD',
    image: 'lib/assets/foods/image3.png',
  ),
  FoodGrid(
    title: 'DRY FOOD',
    image: 'lib/assets/foods/image4.png',
  ),
  FoodGrid(
    title: 'PROTEIN',
    image: 'lib/assets/foods/image5.png',
  ),
  FoodGrid(
    title: 'OTHERS',
    image: 'lib/assets/foods/image6.png',
  ),
];
