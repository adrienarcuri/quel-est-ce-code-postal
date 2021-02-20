import 'dart:io' as io;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements http.Client {}

var httpClient;

http.Client getHttpClient() {
  // if flutter web always return http client
  if (kIsWeb) {
    httpClient = http.Client();
  } else {
    // Check if we run flutter test (tests are only launch on mobile - not web)
    var isTestEnv = io.Platform.environment.containsKey("FLUTTER_TEST");

    // If test, mock the http client
    if (isTestEnv) {
      httpClient = MockClient();
      // else, use http client
    } else {
      httpClient = http.Client();
    }
  }

  return httpClient;
}
