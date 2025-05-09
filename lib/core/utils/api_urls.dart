class ApiURL {
  static const baseURL = 'https://www.googleapis.com/books/v1/';
  static const fetchNewestBooks =
      'volumes?q=computer science&Sorting=newest&Filtering=free-ebooks';

  static const fetchFeaturedBooks =
      'volumes?q=subject:Programming&Filtering=free-ebooks';
}
