class ProjectUtils {
  final String image; // This can be a URL now
  final String title;
  final String subtitle;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image:
        'https://i0.wp.com/softwarespace.ie/wp-content/uploads/2022/08/software-development-project-ideas.png?fit=599%2C399&ssl=1',
    title: 'Hobby Project 1',
    subtitle: 'This is a hobby project.',
  ),
];

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image:
        'https://i0.wp.com/softwarespace.ie/wp-content/uploads/2022/08/software-development-project-ideas.png?fit=599%2C399&ssl=1',
    title: 'Work Project 1',
    subtitle: 'Description of Work Project 1',
  ),
];
