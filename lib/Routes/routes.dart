enum Routes {
  home("/", "Home"),
  profile("/", "Profile"),
  details(":", "Details"),
  dashboard("/", "Dashboard");

  final String path;
  final String name;
  const Routes(this.path, this.name);
}
