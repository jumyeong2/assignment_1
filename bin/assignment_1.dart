void main() {
  int score = 84;
  String grade;
  if (score >= 90 && score <= 100) {
    grade = 'A등급';
  } else if (score >= 80 && score <= 89) {
    grade = 'B등급';
  } else {
    grade = 'C등급';
  }
  print('이 학생의 점수는 $score이며, 등급은 $grade입니다!');

  Map<String, int> products = {
    "티셔츠": 10000,
    "바지": 8000,
    "모자": 4000,
  };
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  calculateCart(products, cart);
}

void calculateCart(Map<String, int> products, List<String> cart) {
  int totalPrice = 0;
  for (var item in cart) {
    totalPrice += products[item] ?? 0;
  }

  double discount = 0; 
  print('장바구니에 ${totalPrice}원 어치를 담으셨네요 !');
  if (totalPrice > 20000) {
    discount = totalPrice * 0.1; 
    print('할인 금액 : ${discount.toInt()}원');
  }

  double finalPrice = totalPrice - discount;
  print('최종 결제 금액은 ${finalPrice.toInt()}원입니다!');
}
