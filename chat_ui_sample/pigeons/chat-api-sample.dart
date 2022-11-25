//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

import 'package:pigeon/pigeon.dart';


class Input {
  String? displayName;
  int instanceId;
  String threadId;
  String identity;
  String endpointUrl;
  String acsToken;


  Input(this.instanceId, this.threadId, this.identity, this.endpointUrl, this.acsToken);
}

class CommunicationError {
  String errorCode;
  String errorMessage;

  CommunicationError(this.errorCode, this.errorMessage);
}

@HostApi()
abstract class AzureCommunicationUIHostApi {
  void startChatComposite(Input options);
}
