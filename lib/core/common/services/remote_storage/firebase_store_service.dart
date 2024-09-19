import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/common/types/exceptions.dart';
import 'package:fruits_hub/features/authentication/data/models/user_account.dart';
import 'package:logging/logging.dart';

import 'storage_service.dart';

typedef UserRemoteNoSqlStorageService = RemoteNoSqlStorageService<UserAccount>;

class UserFirebaseStoreService implements UserRemoteNoSqlStorageService {
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final Logger _logger = Logger('FirebaseStoreService');

  @override
  Future<UserAccount> saveNewRecord(UserAccount item) async {
    try {
      await db.collection(collectionName).doc(item.uId).set(item.toMap());
      return item;
    } on Exception catch (err) {
      _logger.severe(err);
      throw RemoteStorgeException(message: err.toString());
    }
  }

  @override
  String get collectionName => 'users';

  @override
  Future<bool> deleteRecord(UserAccount item) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<List<UserAccount>> getAllRecords() {
    // TODO: implement getAllItems
    throw UnimplementedError();
  }

  @override
  Future<UserAccount?> getRecordById(String itemId) {
    // TODO: implement getItemById
    throw UnimplementedError();
  }

  @override
  Future<void> updateRecordById(String id, UserAccount item) {
    // TODO: implement updateItemById
    throw UnimplementedError();
  }
}
