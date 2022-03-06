import 'package:cache_manager/cache_manager.dart/cache_manager.dart';
import 'package:cache_manager/view/token_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormBuilderState>();
  String token = '';
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cache Manager With Flutter'),
      ),
      body: FormBuilder(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                FormBuilderTextField(
                  name: "kAdi",
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null) {
                      return 'Lütfen Adınızı Giriniz';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Adınızı Giriniz',
                    labelText: 'Adınız',
                  ),
                ),
                const SizedBox(height: 15),
                FormBuilderTextField(
                  name: "sifre",
                  validator: (value) {
                    if (value == null) {
                      return 'Lütfen Şifrenizi Giriniz';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Şifrenizi Giriniz',
                    labelText: 'Şifreniz',
                  ),
                ),
                const SizedBox(height: 15),
                MaterialButton(
                  child: const Text(
                    'Gönder',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () async {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        token = CacheManager.instance.getCacheToken('2434');
                      });
                      /*  final isTrue = await CacheManager.instance.addCacheToken('2434', 'token_23_34');
                      if (isTrue) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TokenCache(),
                          ),
                        );
                      }*/
                    } else {}
                  },
                ),
                Text(token),
              ],
            ),
          )),
    );
  }
}
