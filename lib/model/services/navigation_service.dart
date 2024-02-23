import 'package:flutter/material.dart';
import 'package:pop_quiz/view_ui/screens/home_screen.dart';
// import 'package:gajerz/dialogs/basic_dialog.dart';
// import 'package:gajerz/enums/bottomsheet_type.dart';
// import 'package:gajerz/enums/dialog_type.dart';


class NavigationService{
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> pushNamed(String routeName){
    if(navigatorKey.currentState!=null){
      return navigatorKey.currentState!.pushNamed(routeName);
    }else{
      return Future.value();
    }

  }
  Future<dynamic> pushReplacementNamed(String routeName){
    if(navigatorKey.currentState!=null){
      return navigatorKey.currentState!.pushReplacementNamed(routeName);
    }else{
      return Future.value();
    }

  }

  Future<dynamic> pushToDashBoard(){
    if(navigatorKey.currentState!=null){
      return navigatorKey.currentState!.pushAndRemoveUntil(MaterialPageRoute(builder: (_)=> const HomeScreen()),(route)=>false);
    }else{
      return Future.value();
    }

  }

  Future<dynamic> push(Widget routeWidget){
    if(navigatorKey.currentState!=null){
      return navigatorKey.currentState!.push(MaterialPageRoute(builder: (_) => routeWidget));
    }else{
      return Future.value();
    }
  }
  void pop(){
    if(navigatorKey.currentState!=null){
      return navigatorKey.currentState!.pop();
    }else{
      // return Future.value();
    }
  }

  Future<dynamic> replace(Widget routeWidget){
    if(navigatorKey.currentState!=null){
      return navigatorKey.currentState!.pushReplacement(MaterialPageRoute(builder: (_) => routeWidget));
    }else{
      return Future.value();
    }

  }

  // Future<dynamic> showDialogWidget(DialogType type,
  //     {String? title, String? subtitle}){
  //   if(navigatorKey.currentState!=null){
  //     return showDialog(context: navigatorKey.currentState!.context, builder: (context) => WillPopScope (
  //       onWillPop: () async{
  //         // _dialogService.dialogComplete();
  //         return true;
  //       },
  //       child: _dialogToReturn(type,title: title,subtitle: subtitle),
  //     ),
  //     );
  //   }else{
  //     return Future.value();
  //   }
  // }

  // Future<dynamic> showBottomSheet(BottomSheetType type) async{///handles the type of dialog to show along with completer.
  //   // if(DialogType.basic == _dialogService.type){
  //   //  await _showOkDialog();
  //   // }else if(DialogType.navigate == _dialogService.type){
  //   //  await _showOkNavigateDialog();
  //   // }else if(DialogType.pop == _dialogService.type){
  //   //  await _showOkPopDialog();
  //   // }else{
  //   if(navigatorKey.currentState!=null){
  //     return showModalBottomSheet(
  //         context: navigatorKey.currentState!.context,
  //         builder: (context)=> _bottomSheetToReturn(type),
  //         isScrollControlled: true,
  //         enableDrag: true,
  //         isDismissible: true,
  //         shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(25.0),
  //             topRight: Radius.circular(25.0),
  //           ),
  //         ));
  //     // await showDialog(context: context, builder: (context) => WillPopScope(
  //     //   onWillPop: () async{
  //     //     _dialogService.bottomSheetComplete();
  //     //     return true;
  //     //   },
  //     //   child: _bottomSheetToReturn(_dialogService.bottomSheetType!),
  //     // ),
  //     // );
  //     // }
  //   }else{
  //     return Future.value();
  //   }
  //
  //
  // }

  // Widget _bottomSheetToReturn(BottomSheetType bottomSheetType){
  //   switch(bottomSheetType){
  //
  //   //   case BottomSheetType.cancelBooking:
  //   //     return const SizedBox();
  //   //   case BottomSheetType.transactionPayment:
  //   //     return const SizedBox();
  //   // // break;
  //   //   case BottomSheetType.fund:
  //   //     return const SizedBox();
  //     case BottomSheetType.basic:
  //       return const SizedBox();
  //     case BottomSheetType.Generic:
  //       return const SizedBox();
  //   }
  // }



//   Widget _dialogToReturn(DialogType dialogType,{String? title,String? subtitle,}){
//     switch(dialogType){
//       case DialogType.basic:
//         return  BasicDialog(title: title,subtitle: subtitle,);
//       case DialogType.navigate:
//         return  const SizedBox();
//       case DialogType.pop:
//         return  const SizedBox();
//       case DialogType.policyWarning:
//         return  const SizedBox();
//     }
//   }
}