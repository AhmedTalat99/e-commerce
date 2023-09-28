import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class AuthRepo {
  Future<Either<Exception,UserCredential>> loginWithGoogle();
  Future loginWithFacebook();
  Future compeleteInformation({
    @required String name,
    @required String phoneNumber,
    @required String address,
  });
}
