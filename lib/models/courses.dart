class Course {
  final int id;
  final String name;

  Course({
    required this.id,
    required this.name,
  });
}

List<Course> courses = [
  Course(
    id: 1,
    name: "Illustrator",
  ),
  Course(
    id: 2,
    name: "Figma Prototyping",
  ),
];
