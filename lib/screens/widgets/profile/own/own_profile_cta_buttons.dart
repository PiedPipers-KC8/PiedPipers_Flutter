import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sounds_good/core/services/storage.dart';
import 'package:sounds_good/screens/views/access_forms/login_view.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_close_button.dart';

class OwnProfileCTAButtons extends StatelessWidget {
  const OwnProfileCTAButtons({Key key}) : super(key: key);

  _logOut(context) {
    Storage.logOut();
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return ProfileCloseButton(
      value: 'Close Session',
      onPressed: () => _logOut(context),
    );
  }
}
