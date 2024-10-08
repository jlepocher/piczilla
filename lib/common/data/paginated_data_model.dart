/// Model used to hold data in the context of pagination.
class PaginatedDataModel<T> {
  PaginatedDataModel({required this.data, required this.nextPage});

  final T data;

  /// Page number to be fetched next time. Null if this [data] is the last page.
  final int? nextPage;
}
