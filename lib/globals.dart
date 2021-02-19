library my_prj.globals;

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements http.Client {}

bool isTestEnv = Platform.environment.containsKey("FLUTTER_TEST");
http.Client httpClient = isTestEnv ? MockClient() : http.Client();
