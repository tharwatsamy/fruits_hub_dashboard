abstract class DatabaseService {
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId});
  Future<dynamic> getData({
    required String path,
    String? docuementId,
    Map<String, dynamic>? query,
  });
  Stream<dynamic> streamData({
    required String path,
    Map<String, dynamic>? query,
  });

  Future<bool> checkIfDataExists(
      {required String path, required String docuementId});
}
