import 'package:chat_ui_sample/acs_pigeons.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:chat_ui_sample/chat_ui_sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _chatUiSamplePlugin = ChatUiSample();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: MaterialButton(
            child: Text('Show Chat'),
              onPressed: () => {
            AzureCommunicationUIHostApi().startChatComposite(Input(
              displayName: 'Flutter test',
              threadId: "19:bEPPAEXYcKgTPKumN4_ZEknXhBYZCB5Wc_zQ1BrgYlM1@thread.v2",
              acsToken: "eyJhbGciOiJSUzI1NiIsImtpZCI6IjEwNiIsIng1dCI6Im9QMWFxQnlfR3hZU3pSaXhuQ25zdE5PU2p2cyIsInR5cCI6IkpXVCJ9.eyJza3lwZWlkIjoiYWNzOmI2YWFkYTFmLTBiMWQtNDdhYy04NjZmLTkxYWFlMDBhMWQwMV8wMDAwMDAxNS00ZDZiLTY4OWUtOThjZi0zZTNhMGQwMDkyMzkiLCJzY3AiOjE3OTIsImNzaSI6IjE2NjkzNTg3OTciLCJleHAiOjE2Njk0NDUxOTcsImFjc1Njb3BlIjoiY2hhdCx2b2lwIiwicmVzb3VyY2VJZCI6ImI2YWFkYTFmLTBiMWQtNDdhYy04NjZmLTkxYWFlMDBhMWQwMSIsInJlc291cmNlTG9jYXRpb24iOiJ1bml0ZWRzdGF0ZXMiLCJpYXQiOjE2NjkzNTg3OTd9.pCMAUflNaQRbW7bskEmiopOxyoDDtqmwodqMM0v9CaAyEBMWFWh2sjBe1qyNAzn1QH6UvQGhaD7RdN1de0roXXOZBdVGiuhdt3nbcuZw0lC0jjEQkLrHkUTSh8bLp0DSNf9x1vrld92uhCsaT-GZVlpP1TuT_DiC7rhAE9dM6dGzMxitcUBkxwxRLywc0gUyniSoTWBo16jjY4vaj4X5XmLHIWb6qjr8cZbkKTH21pq2UUzgVBPokP6xPvojNge7is9yWSEKebbauyJsoAzWZN6oK5pIdYpeFUfhqFKHdrG58C8Xc1zLxsxlaUkOsd3qs05G4AroY9S-Oktg4FhmNg",
              endpointUrl: "https://acs-ui-dev.communication.azure.com/",
              identity: "8:acs:b6aada1f-0b1d-47ac-866f-91aae00a1d01_00000015-4d6b-689e-98cf-3e3a0d009239",
              instanceId: 3,
              ))
      },
          ),
        ),
      ),
    );
  }
}
