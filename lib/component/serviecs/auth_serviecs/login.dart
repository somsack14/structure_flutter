import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';
import 'package:structure_flutter/component/providers/auth_providers.dart';
import 'package:structure_flutter/component/serviecs/auth_serviecs/auth_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool isLoading = false;
  String phone = "0205223232";
  String otp = "55223";
  String fcmToken = "dafjkbjkschgchkchgjfgfhgfshjgjsdhg";
  String messageError = "";
  Future actionDataLogin() async {
    setState(() {
      isLoading = true;
    });
    AuthServices().login(phone: phone, otp: otp, fcmToken: fcmToken).then(
      (value) {
        setState(
          () {
            isLoading = false;
          },
        );
        Provider.of<AuthProviders>(context, listen: false)
            .setNewsmodel(value: value);
      },
    ).catchError((onError) {
      setState(() {
        // messageError =
        isLoading = false;
      });
    });
  }

  void initState() {
    actionDataLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AuthProviders authData = Provider.of<AuthProviders>(context, listen: false);
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      // progressIndicator: ProgressIndicator(),
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Text(authData.getNewsmodel!.articles!.length.toString()),
        ),
      ),
    );
  }
}
