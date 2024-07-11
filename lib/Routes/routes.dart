enum Routes {
  home("/", "Home"),
  profile("/", "Profile"),
  details("/", "Details"),
  dashboard("/", "Dashboard"),
  settings("/", "Settings"),
  modes("/", "Modes"),
  userInfo("/", "UserInfo"),
  language("/", "Language");

  final String path;
  final String name;
  const Routes(this.path, this.name);
}
