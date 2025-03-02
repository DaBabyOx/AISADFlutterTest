import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsRecord extends FirestoreRecord {
  UserDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userDetails');

  static Stream<UserDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDetailsRecord.fromSnapshot(s));

  static Future<UserDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDetailsRecord.fromSnapshot(s));

  static UserDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDetailsRecordData({
  String? email,
  String? image,
  String? name,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'image': image,
      'name': name,
      'password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDetailsRecordDocumentEquality implements Equality<UserDetailsRecord> {
  const UserDetailsRecordDocumentEquality();

  @override
  bool equals(UserDetailsRecord? e1, UserDetailsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.password == e2?.password;
  }

  @override
  int hash(UserDetailsRecord? e) =>
      const ListEquality().hash([e?.email, e?.image, e?.name, e?.password]);

  @override
  bool isValidKey(Object? o) => o is UserDetailsRecord;
}
