class Urls {
  static const String baseURL = 'https://catalog.feedbooks.com';
  static const String publicDomainURL = '$baseURL/publicdomain/browse';
  static String popular = 'top.json';
  static String recent = 'recent.json';
  static String awards = 'awards.json';
  static String noteworthy = 'homepage_selection.json';
  static String shortStory = 'top.json?cat=FBFIC029000';
  static String sciFi = 'top.json?cat=FBFIC028000';
  static String actionAdventure = 'top.json?cat=FBFIC002000';
  static String mystery = 'top.json?cat=FBFIC022000';
  static String romance = 'top.json?cat=FBFIC027000';
  static String horror = 'top.json?cat=FBFIC015000';
}

Map<String, String> faq = {
  "Membership and single purchase?":
      '''With single purchase, when you buy a book, you will read it lifetime. You should use it when you don’t have more time to read book.
With membership, you will pay once and access to all our books in period time based on your package. It should be used when you have more time to read more books.'''
};
