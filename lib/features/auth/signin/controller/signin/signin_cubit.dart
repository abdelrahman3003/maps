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
  TextEditingController? otpController;
  final GlobalKey<FormState> signinFormKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;
  String? verificationId;
  initData() {
    phoneController = TextEditingController(text: "01032970717");
  }

  submitPhoneNumber() async {
    if (signinFormKey.currentState!.validate()) {
      emit(SigninLoading());
      await auth.verifyPhoneNumber(
        phoneNumber: "+2${phoneController!.text}",
        verificationCompleted: (PhoneAuthCredential credential) {
          emit(SigninSuccess());
        },
        verificationFailed: (FirebaseAuthException e) {
          emit(SigninError(errorMessage: e.toString()));
        },
        codeSent: (String verificationid, int? resendToken) {
          verificationId = verificationid;
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }
  }

  submitOTP() async {
    emit(SigninLoading());
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId!, smsCode: otpController!.text);
      await signin(credential);
      emit(SigninSuccess());
    } on Exception catch (e) {
      emit(SigninError(errorMessage: e.toString()));
    }
  }

  signin(AuthCredential credential) async {
    await auth.signInWithCredential(credential);
  }
}
