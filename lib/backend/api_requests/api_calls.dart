import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start cep Group Code

class CepGroup {
  static String getBaseUrl() => 'https://brasilapi.com.br/api';
  static Map<String, String> headers = {};
  static BsucarcepCall bsucarcepCall = BsucarcepCall();
}

class BsucarcepCall {
  Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    final baseUrl = CepGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'bsucarcep',
      apiUrl: '$baseUrl/cep/v1/$cep',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cep': cep,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.city''',
      ));
}

/// End cep Group Code

/// Start cnpj Group Code

class CnpjGroup {
  static String getBaseUrl() => 'https://brasilapi.com.br/api';
  static Map<String, String> headers = {};
  static BuscarCNPJCall buscarCNPJCall = BuscarCNPJCall();
}

class BuscarCNPJCall {
  Future<ApiCallResponse> call({
    String? cnpj = '',
  }) async {
    final baseUrl = CnpjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Buscar CNPJ',
      apiUrl: '$baseUrl/cnpj/v1/$cnpj',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cenpj': cnpj,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? resultadocnpj(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cnpj''',
      ));
  String? resultadocep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  String? resultadouf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  String? resultadomunicipio(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.municipio''',
      ));
  String? resultadobairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  String? resultadonumero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.numero''',
      ));
}

/// End cnpj Group Code

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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
