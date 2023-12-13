import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDn4CBP7bq_MUORSIqLiZuwJevECjr9evA",
            authDomain: "indayi-new.firebaseapp.com",
            projectId: "indayi-new",
            storageBucket: "indayi-new.appspot.com",
            messagingSenderId: "221404848840",
            appId: "1:221404848840:web:b979dd359c5ad79a66bbfd",
            measurementId: "G-XZJT38EWCY"));
  } else {
    await Firebase.initializeApp();
  }
}
