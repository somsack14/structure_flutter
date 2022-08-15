// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:structure_flutter/component/constants/strings.dart';
// class DioExceptions implements Exception {
//   DioExceptions.fromDioError(DioError dioError) {
//     print("dioError${dioError.type}");

//     switch (dioError.type) {
//       case DioErrorType.cancel:
//         message = "Strings.msgDioErrorTypeCANCEL.tr";
//         break;
//       case DioErrorType.connectTimeout:
//         message = Strings.msgDioErrorTypeCONNECT_TIMEOUT.tr;
//         break;
//       case DioErrorType.other:
//         message = Strings.msgDioErrorTypeDEFAULT.tr;
//         break;
//       case DioErrorType.receiveTimeout:
//         message = Strings.msgDioErrorTypeRECEIVE_TIMEOUT.tr;
//         break;
//       case DioErrorType.response:
//         print(dioError.response!.data!.toString());
//         message = _handleError(dioError.response!.statusCode!.toInt(),
//             dioError.response!.data!['msg'].toString());
//         break;
//       case DioErrorType.sendTimeout:
//         message = Strings.msgDioErrorTypeSEND_TIMEOUT.tr;
//         break;
//       default:
//         message = Strings.msgDioErrorTypeDEFAULTSOMETING.tr;
//         break;
//     }
//   }
//   late String message;
//   String _handleError(int statusCode, dynamic error) {
//     print("error $error");
//     print("error statusCode $statusCode");
//     switch (statusCode) {
//       case 400:
//         return Strings.msgStatusCode400.tr;
//       case 401:
//         return Strings.msgStatusCode401.tr;
//       case 403:
//         return Strings.msgStatusCode403.tr;
//       case 413:
//         return Strings.msgStatusCode413.tr;
//       case 422:
//         return error;
//       case 404:
//         return error["message"];
//       case 500:
//         return Strings.msgStatusCode500.tr;
//       case 503:
//         return Strings.msgStatusCode503.tr;
//       default:
//         return Strings.msgStatusCodeDefault.tr;
//     }
//   }
//   @override
//   String toString() => message;
// }
