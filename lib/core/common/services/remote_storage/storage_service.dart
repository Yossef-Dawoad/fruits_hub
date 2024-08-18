abstract interface class RemoteNoSqlStorageService<T> {
  Future<T> addNewItem(T item);
  Future<T?> getItemById(String itemId);
  Future<List<T>> getAllItems();
  Future<void> updateItemById(String id, T item);
  Future<bool> deleteItem(T item);

  final String collectionName = '';
}
