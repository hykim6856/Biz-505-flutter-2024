/// DATA class
/// Java 의 DTO(VO) 클래스와 비슷한 역할을 수행하는 클래스
///
class TodoDto {
  String id;
  String sdate;
  String edate;
  String content;
  // 클래스를 객체로 생성할때 complete 변수 값은 필수로 할당하지 않겠다
  // 생성자에서 이 필드 변수는 required 키워드를 제거한다.
  bool? complete;

// 투두 클래스를 사용하여 객체(인스턴스)를 만들어
//모든 필드 변수와 어쩌고

  TodoDto(
      {required this.id,
      required this.sdate,
      required this.edate,
      required this.content,
      this.complete});

//Todo 객체의 각 필드에 저장된 값을 모두 모아서
// Map type 의 변수로 변환하는 함구

  Map<String, Object?> toMap() {
    return {
      "id": id,
      "sdate": sdate,
      "edate": edate,
      "content": content,
      "complete": complete
    };
  }
}
