/*Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed */
void main() {
  Map<String, String> routes = {
    '/': 'Home page',
    '/products': 'Products page',
    '/profile': 'Profile page',
  };

  String? path = '/products';
  if (path == null) {
    print('No path provided');
  } else {
    switch (path) {
      case '/':
        print(routes[path]!);
        break;
      case '/products':
        print(routes[path]!);
        break;
      case '/profile':
        print(routes[path]!);
        break;
      default:
        print('Page not found');
    }
  }
}
