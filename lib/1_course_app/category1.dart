class Category {
  String name;
  int numOfCourses;
  String image;

  Category({
    required this.name,
    required this.numOfCourses,
    required this.image,
  });
}

List<Category> categoryList = [
  Category(
      name: "Marketing",
      numOfCourses: 17,
      image: "assets/images/marketing.png"),
  Category(
      name: "UX Design",
      numOfCourses: 25,
      image: "assets/images/ux_design.png"),
  Category(
      name: "Photography",
      numOfCourses: 13,
      image: "assets/images/photography.png"),
  Category(
      name: "Business",
      numOfCourses: 17,
      image: "assets/images/business.png"),
];