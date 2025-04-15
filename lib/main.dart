import 'package:bite_dash/app.dart';
import 'package:bite_dash/core/config/env.dart';
import 'package:bite_dash/core/di/injection_container.dart' as di;
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bite_dash/firebase_options.dart'; // Ensure this file exists and is correctly configured


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppEnvironment.setEnvironment(AppEnvironment.development);
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await di.init();

  runApp(const BiteDashApp());
}
