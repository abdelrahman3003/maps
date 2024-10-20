import 'package:flutter/material.dart';

import 'widget/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerificationViewBody(),
    );
  }
}
