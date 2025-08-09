class ExperienceModel {
  final String year;
  final String role;
  final String company;
  final String location;
  final String description;
  final List<ExperienceProjectModel> projects;

  ExperienceModel({
    required this.year,
    required this.role,
    required this.company,
    required this.location,
    required this.description,
    required this.projects,
  });
}

class ExperienceProjectModel {
  final String title;
  final String description;
  final List<String> chips;

  ExperienceProjectModel({
    required this.title,
    required this.description,
    required this.chips,
  });
}
