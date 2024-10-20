import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial()) {
    initData();
  }
  TextEditingController? phoneController;
  final GlobalKey<FormState> signinFormKey = GlobalKey<FormState>();

  initData() {
    phoneController = TextEditingController(text: "01032970717");
  }

  phoneSignin() async {
    if (signinFormKey.currentState!.validate()) {
      emit(SigninLoading());
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: "+2${phoneController!.text}",
        verificationCompleted: (PhoneAuthCredential credential) {
          emit(SigninSuccess());
        },
        verificationFailed: (FirebaseAuthException e) {
          emit(SigninError(errorMessage: e.toString()));
        },
        codeSent: (String verificationId, int? resendToken) {},
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }
  }
}
