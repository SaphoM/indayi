import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendGridEmailCall {
  static Future<ApiCallResponse> call({
    String? toEmail = 'cris@xspark.co.za',
    String? subject = 'test',
    String? content = 'Test',
  }) async {
    final ffApiRequestBody = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "${toEmail}"
        }
      ],
      "subject": "${subject}"
    }
  ],
  "content": [
    {
      "type": "text/plain",
      "value": "${content}"
    }
  ],
  "from": {
    "email": "test@indayi.com",
    "name": "Indayi"
  },
  "reply_to": {
    "email": "test@indayi.com",
    "name": "Indayi"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendGridEmail',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
