class PopularItemModel {
  final String image;
  final String name;
  final double rate;

  const PopularItemModel(
      {required this.image, required this.name, required this.rate});
}

List<PopularItemModel> getPopularItems() {
  return [
    const PopularItemModel(
      image:
          'https://images.fineartamerica.com/images/artworkimages/mediumlarge/3/northern-nature-landscape-with-mountains-vector-marvin-solorzano.jpg',
      name: 'Northen Mountain',
      rate: 3.5,
    ),
    const PopularItemModel(
      image:
          'https://img.freepik.com/free-vector/natural-landscape-background-style_23-2148650337.jpg',
      name: 'Green Mountain',
      rate: 4,
    ),
    const PopularItemModel(
      image:
          'https://img.freepik.com/free-vector/flat-design-winter-landscape-wallpaper_23-2148707347.jpg?size=626&ext=jpg&ga=GA1.1.1224184972.1713571200&semt=ais',
      name: 'HimaaaaMoUN',
      rate: 3.5,
    ),
    const PopularItemModel(
      image:
          'https://www.freevector.com/uploads/vector/preview/29665/Mountains-Area.jpg',
      name: 'Manar AREA',
      rate: 5,
    ),
  ];
}

List<PopularItemModel> getRecommendedItems() {
  return [
    const PopularItemModel(
      image:
          'https://img.freepik.com/free-vector/gradient-mountain-landscape_23-2149162009.jpg?size=626&ext=jpg&ga=GA1.1.1224184972.1714348800&semt=ais',
      name: 'Ottawa Canada',
      rate: 4,
    ),
    const PopularItemModel(
      image:
          'https://img.freepik.com/premium-photo/egypt-s-timeless-majesty-pyramids-nile-pharaoh-patterns-golden-hues_818261-18408.jpg',
      name: 'Egypt',
      rate: 4.5,
    ),
    const PopularItemModel(
      image:
          'https://mrwallpaper.com/images/hd/4k-vector-japan-landscape-91fou43c3r7lglnr.jpg',
      name: 'Japan Landscape',
      rate: 4.5,
    ),
    const PopularItemModel(
      image:
          'https://img.freepik.com/free-vector/natural-landscape-background-style_23-2148650337.jpg',
      name: 'Green Mountain',
      rate: 4,
    ),
    const PopularItemModel(
      image:
          'https://img.freepik.com/premium-vector/stylized-black-ink-wash-painting-mountains-traditional-oriental-minimalistic-japanese-style-vector-illustration_76964-13045.jpg',
      name: 'Japan Mountain',
      rate: 5,
    ),
    const PopularItemModel(
      image:
          'https://i.pinimg.com/736x/58/6a/18/586a1859ac3586bcb7c4d09f60109e3c.jpg',
      name: 'Spring Village',
      rate: 5,
    ),
    const PopularItemModel(
      image:
          'https://www.freevector.com/uploads/vector/preview/29665/Mountains-Area.jpg',
      name: 'Manar Area',
      rate: 5,
    ),
    const PopularItemModel(
      image:
          'https://www.freevector.com/uploads/vector/preview/29665/Mountains-Area.jpg',
      name: 'Manar Area',
      rate: 5,
    ),
  ];
}
