import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/features/authentication/data/models/user_account.dart';

import 'storage_service.dart';

typedef UserRemoteNoSqlStorageService = RemoteNoSqlStorageService<UserAccount>;

class UserFirebaseStoreService implements UserRemoteNoSqlStorageService {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Future<UserAccount> addNewItem(UserAccount item) async {
    await db.collection(collectionName).doc(item.uId).set(item.toMap());
    return item;
  }

  @override
  String get collectionName => 'users';

  @override
  Future<bool> deleteItem(UserAccount item) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<List<UserAccount>> getAllItems() {
    // TODO: implement getAllItems
    throw UnimplementedError();
  }

  @override
  Future<UserAccount?> getItemById(String itemId) {
    // TODO: implement getItemById
    throw UnimplementedError();
  }

  @override
  Future<void> updateItemById(String id, UserAccount item) {
    // TODO: implement updateItemById
    throw UnimplementedError();
  }
}
