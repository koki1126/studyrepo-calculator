import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() {
  int leftNum = 0; //計算式の左側　最初固定
  String rightNum = '';
  String calcOperator = '+';
  String COcalcFormula = '';
  int result;

  resetCondition() {
    rightNum = '';
    calcOperator = COcalcFormula;
  }

  print('計算式を入力してください');
  String inputFormula = stdin.readLineSync().toString();
  if (inputFormula[0] == '-') {
    inputFormula = '0' + inputFormula;
  }
  for (int i = 0; i < inputFormula.length; i++) {
    COcalcFormula = inputFormula[i];
    if (COcalcFormula == '+' || COcalcFormula == '-') {
      if (calcOperator == '+') {
        leftNum = leftNum + int.parse(rightNum);
        resetCondition();
      } else {
        leftNum = leftNum - int.parse(rightNum);
        resetCondition();
      }
    } else {
      rightNum = rightNum + COcalcFormula;
    }
  }
  if (calcOperator == '+') {
    result = int.parse(rightNum) + leftNum;
  } else {
    result = leftNum - int.parse(rightNum);
  }
  print('計算結果は……');
  Timer(Duration(seconds: 1), () {
    print(result);
  });
}











// import 'dart:io';

// void main() {
//   int operatorCount = 0; //計算が発火するためのオペレータのカウント
//   int calcCount = 0; //左辺に格納するための変数
//   String leftcalc = ''; //計算式の左辺
//   String rightcalc = ''; //計算式の右辺

//   print('計算式を入力してください');
//   String calcFormula = stdin.readLineSync().toString();

//   for (int i = 0; i < calcFormula.length; i++) {
//     String COcalcFormula = calcFormula[i];
//     print('今回の計算対象$COcalcFormula');

//     if (COcalcFormula == '+' || COcalcFormula == '-') {
//       operatorCount++;
//       print('operatorCountは$operatorCountになりました');

//       if (operatorCount == 2) {
//         String wasabi = calcFormula.substring(0, i);
//         //切り出して計算をする
//       } else {
//         calcCount = 1;
//       }
//     } else {
//       if (calcCount == 0) {
//         if (leftcalc == '') {
//           leftcalc = COcalcFormula;
//         } else {
//           leftcalc = leftcalc + COcalcFormula;
//         }
//         //左辺が入っていなかった場合
//         leftcalc = COcalcFormula;
//         print('左辺に$leftcalcが入っています');
//       } else if (rightcalc == '') {
//         //右辺が入っていなかった場合
//         rightcalc = COcalcFormula;
//         print('右辺に$rightcalcが入っています');
//       } else {
//         //右辺がすでに入っていた場合追加
//         rightcalc = rightcalc + COcalcFormula;
//         print('右辺が$rightcalcに更新されました');
//       }
//     }
//   }
//   // print(calcFormulaList);
// }


//     // print('取り出された文字$COcalcFormula');

//     // if (COcalcFormula == '+' || COcalcFormula == '-') {
//     // } else {
//     //   calcTemp = calcTemp + COcalcFormula;
//     //   print(calcTemp);
//     // }
