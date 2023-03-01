class PetShopCategories {
  final String image;
  final String title;

  PetShopCategories({
    required this.image,
    required this.title,
  });
}

final List<PetShopCategories> categories = [
  PetShopCategories(
    title: 'DOGS',
    image: 'lib/assets/petshopimages/petshop1.png',
  ),
  PetShopCategories(
    title: 'CATS',
    image: 'lib/assets/petshopimages/petshop2.png',
  ),
  PetShopCategories(
    title: 'BIRDS',
    image: 'lib/assets/petshopimages/petshop3.png',
  ),
  PetShopCategories(
    title: 'SNAKES',
    image: 'lib/assets/petshopimages/petshop4.png',
  ),
  PetShopCategories(
    title: 'OTHERS',
    image: 'lib/assets/petshopimages/petshop5.png',
  ),
];
