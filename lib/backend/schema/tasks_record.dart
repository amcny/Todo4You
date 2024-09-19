import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "priorityNum" field.
  int? _priorityNum;
  int get priorityNum => _priorityNum ?? 0;
  bool hasPriorityNum() => _priorityNum != null;

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "taskDescription" field.
  String? _taskDescription;
  String get taskDescription => _taskDescription ?? '';
  bool hasTaskDescription() => _taskDescription != null;

  // "dueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _priorityNum = castToType<int>(snapshotData['priorityNum']);
    _taskName = snapshotData['taskName'] as String?;
    _taskDescription = snapshotData['taskDescription'] as String?;
    _dueDate = snapshotData['dueDate'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  int? priorityNum,
  String? taskName,
  String? taskDescription,
  DateTime? dueDate,
  DocumentReference? userRef,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'priorityNum': priorityNum,
      'taskName': taskName,
      'taskDescription': taskDescription,
      'dueDate': dueDate,
      'userRef': userRef,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.priorityNum == e2?.priorityNum &&
        e1?.taskName == e2?.taskName &&
        e1?.taskDescription == e2?.taskDescription &&
        e1?.dueDate == e2?.dueDate &&
        e1?.userRef == e2?.userRef &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.priorityNum,
        e?.taskName,
        e?.taskDescription,
        e?.dueDate,
        e?.userRef,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
