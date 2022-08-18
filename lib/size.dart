const double small_gap = 5.0;
const double medium_gap = 10.0;
const double large_gap = 20.0;
const double xlarge_gap = 100.0;
//const(상수)는 한번 로딩되면 2번로딩 안된다.
//const는 값을 변경하지 못한다
//앱이 종료가 안되면 재참조할때 재로딩을 안한다.
//final도 const처럼 변경은 못하지만 재로딩을 한다.
//final은 runtime때 값이 초기화, const는 compile시 값이 초기화
