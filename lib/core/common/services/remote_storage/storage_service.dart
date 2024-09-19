abstract interface class RemoteNoSqlStorageService<T> {
  Future<T> saveNewRecord(T item);
  Future<T?> getRecordById(String itemId);
  Future<List<T>> getAllRecords();
  Future<void> updateRecordById(String id, T item);
  Future<bool> deleteRecord(T item);

  final String collectionName = '';
}
