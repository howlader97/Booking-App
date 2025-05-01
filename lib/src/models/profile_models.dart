class Profile {
  final String profileimage;
  final String profilefirstname;
  final String profilelastname;
  final String profileemail;
  final String profilelocation;
  final String porfilenumber;

  Profile(
    this.profileimage,
    this.profilefirstname,
    this.profilelastname,
    this.profileemail,
    this.profilelocation,
    this.porfilenumber,
  );

  static List<Profile> getProfile() {
    List<Profile> profiles = [
      Profile(
        'assets/images/people.jpg',
        'Leonardo',
        'kabir',
        ' leonardo@gmail.com',
        'Sylhet,Bangladesh',
        '017674395932',
      ),
    ];
    return profiles;
  }
}
