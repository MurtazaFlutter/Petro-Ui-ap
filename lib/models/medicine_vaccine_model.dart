class MDVaccine {
  final String title;
  final String image;

  MDVaccine({
    required this.title,
    required this.image,
  });
}

List<MDVaccine> meAndVaccineList = [
  MDVaccine(
    title: 'MEDICINE',
    image: 'lib/assets/medicineandvaccines/image1.png',
  ),
  MDVaccine(
    title: 'VACCINE',
    image: 'lib/assets/medicineandvaccines/image2.png',
  ),
  MDVaccine(
    title: 'VITAMIN',
    image: 'lib/assets/medicineandvaccines/image3.png',
  ),
];
