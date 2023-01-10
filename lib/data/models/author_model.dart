class AuthorModel {
  String name;
  String image;
  String about;
  int bookCount;
  String category;
  String dateOfBirth;
  String nationality;

  AuthorModel({
    required this.name,
    required this.image,
    required this.about,
    required this.category,
    required this.bookCount,
    required this.dateOfBirth,
    required this.nationality,
  });
}
