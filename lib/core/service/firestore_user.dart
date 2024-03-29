import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quick_foodie/features/auth/data/models/user_model.dart';

class FireStoreUser{

  final CollectionReference _userCollectionRef= FirebaseFirestore.instance.collection('Users');

  Future<void> addUserToFireStore(UserModel userModel)async {
     await _userCollectionRef.doc(userModel.userId).set(userModel.toJson());

  }

}