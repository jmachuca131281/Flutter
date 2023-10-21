class Model {
  final int? id;
  final String? imagePath;
  final String? name;

  Model({required this.id, required this.imagePath, required this.name});
}

List<Model> imagesList = [
  Model(id: 0, imagePath: 'assets/images/kimon-maritz.jpg', name: 'img0'),
  Model(id: 1, imagePath: 'assets/images/lance-anderson.jpg', name: 'img1'),
  Model(id: 2, imagePath: 'assets/images/luca-bravo.jpg', name: 'img2'),
  Model(id: 3, imagePath: 'assets/images/marc-olivier-jodoin.jpg', name: 'img3'),
];
