import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDatasource {
  late final FirebaseAuth _auth;
  late final FirebaseFirestore _firestore;

  AuthRemoteDatasource() {
    _auth = FirebaseAuth.instance;
    _firestore = FirebaseFirestore.instance;
  }
  Future<User?>login(String email, String password) async{
    try{
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    }
    catch (e){
      throw Exception('Failed to login: $e');
    }
  }
  Future<User?> register(String email, String password, String name) async{
    try{
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user;
      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'name': name,
          'email': email,
          'created_at': FieldValue.serverTimestamp(),
        });
      }
      return user;
    }
    catch (e){
      throw Exception('Failed to register: $e');
    }
  }
  Future<void> logout() async {
    await _auth.signOut();
  }
}
