class Project {
  String name;
  int year;
  String desc;
  String imgUrl;
  List<String>? techs;

  Project({
    required this.name,
    required this.year,
    required this.desc,
    required this.imgUrl,
    this.techs,
  });
}
