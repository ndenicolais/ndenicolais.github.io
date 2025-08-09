class AppConstants {
  static final Uri uriLocation = Uri.parse(
    'https://maps.google.com/?q=Benevento,Italia',
  );
  static final Uri uriPhone = Uri(
    scheme: 'tel',
    path: '+393888605458',
  );
  static final Uri uriMail = Uri(
    scheme: 'mailto',
    path: 'n.denicolais@outlook.it',
  );
  static final Uri uriLinkedin =
      Uri.parse('https://it.linkedin.com/in/nicoladenicolais');

  static final Uri uriGithub = Uri.parse('https://github.com/ndenicolais');
  static final Uri uriPdf = Uri.parse(
    'https://drive.google.com/file/d/1FUeYWmQHEyiXsvEpJFh6y46DVgeOmV9Y/view',
  );
}
