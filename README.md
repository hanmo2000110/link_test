### 김신 코딩 일기 <H-LINK App>
 이 프로젝트는 2020년 2학기가 끝나고 크라(동아리)에서 프로젝트 아이디어를 내 진행한 프로젝트이다
 일지는 1월 25일부터 작성되어 있는데 그 전에도 작성했지만 중간에 날아갔다... 허허
 앱의 회원가입 로그인 로그아웃 비밀번호 찾기 이메일 인증 파이어베이스와의 연동 그리고 앱의 전체적인 레이아웃 그리고 여러가지 디버깅과 게시글 추가 기능 등 이외에도 여러가지 기능 구현과 디버깅에 참여했다.
 비록 앱을 출시하지는 못했지만 프로젝트가 진행되는 전반적인 흐름과 플러터를 다루는 법을 배울 수 있었던 좋은 기회였다고 생각한다.
 
## 2021-01-25
타임 스탬프로 게시글 작성 시간을 표현   
사진 업로드 가능한 숫자 제한 구현   
사진 업로드시 버그 있음   
게시글 작성시 업로드 되는 사진들을 모두 하나의 폴더에 넣기 구현   
 
## 2021-01-26
사진 업로드 시 생기던 문제 (swiper) 해결 uniquekey 사용해서 해결   
세개의 모듈 모두 사진 업로드 가능하게 수정   
게시글 상세정보 페이지에서 업데이트 딜리트 기능 구현 시도중   

## 2021-01-27
업데이트 딜리트 기능 구현중 boardtile 페이지에서부터 수정이 필요함을 발견 은지누님에게 말씀드리고 다른 작업 시작   
dropdownbutton을 공동구매 글 작성 페이지에 구현.

## 2021-01-28 
오늘 해야 할 일:   
- addpost UI 이쁘게 수정   
- database에 추가할 때 groups의 해당 필드에 값 추가 구현 주원이형이 함
- 업데이트 딜리트 기능 구현

오늘 한 일:
- 업데이트 딜리트 기능 구현
- max_person 수정 오류 해결
- 사진 업로드 시 폴더 지정 보완
- current_person, isdeleted 변수 필드에 추가 isdeleted는 홈 페이지에서 리스트 출력할때 사용할것

## 2021-02-02
오늘 해야 할 일:
- ~~인증창에서 뒤로가기 누르면 무한로딩~~ 
- ~~게시글 작성시 세부카테고리 디비에 넣기~~ 
- ~~마이페이지 비밀번호 재설정~~
- 게시글 UI
- 게시글 세부사항에 사진 구현
- 스플릿으로 스트링 값 쪼개서 (몇분 남음) 형식으로 만들기
- 현재 시간 이전 선택 불가능 하게 
- ~~공동구매 게시글 작성 시 시간 선택 필수~~
- 수정하기 이름 바꿨을때 새로운 채팅방이 만들어짐 주원이형 시도해볼거임

오늘 한 일:
- 서브 카테고리 DB에 추가되게 코드 수정 
- 게시글 작성 시 제목에 특수문자 _ 안들어가게 코드 수정
- 회원가입 시 뒤로가기를 누르면 무한로딩 화면 고침 
- 비밀번호 재설정 기능구현 완료
- 서브 카테고리와 마감시간 입력 안하면 안 넘어가고 토스트 메시지로 입력하라고 요청 기능 구현

## 2021-02-03
오늘 해야 할 일:
- ~~현재 시간 이전 선택 불가능 하게~~
- 스플릿으로 스트링 값 쪼개서 (몇분 남음) 형식으로 만들기
- ~~현재 방에 들어가 있는 인원보다 적을시 들어갈 수 있게~~

오늘 한 일:
- 현재 시간 이전 선택 불가능 하게 구현

## 2021-02-04
오늘 해야 할 일:
- 버그 찾기
- ~~마감된 게시글 마감 표시하기~~ 
- ~~인원수 제한 기능 넣기~~
- ~~UI는 회의후 변경~~

오늘 한 일:
- 마감된 글 입장 불가 기능 구현
- 인원수가 다 차면 인원 마감 UI에 표시 기능 구현
- 전체적인 UI 변경
- 사진 업로드 백엔드 수정

## 2021-02-05
오늘 해야 할 일:
- UI 변경
- 사진 지우기 기능 
- 마이페이지 디버깅 (내 게시글 수정 삭제 기능) 어드민 넘겨주기
- 검색 기능 공부

## 2021-02-05
오늘 해야 할 일:
- 비밀번호 재설정 페이지, 회원가입 페이지, 인증 페이지 UI 변경
- 내가 쓴 글에 어드민 넘겨줘 내가 쓴글 페이지에서도 수정 삭제 기능 가능하게 구현  

## 2021-02-08
오늘 해야 할 일:
- 디자이너 회의
- ~~H-safari 코드 보고 로딩창 구현~~
- 

오늘 한 일:
- 마감시간 관련 버스 수정
- 앱 실행시 로딩화면 구현

### 앞으로 해야 할 일
- 푸시알림 local notification 사용해야 할듯
- 채팅방에서 상세정보 페이지 넘어가기 구현
- 상세정보 페이지 사진 한개일때 위치 조정
- 마감시간 표시
- 문의하기 텍스트폼필드로 구현해서 firebase cloudstore에 저장
- 로고 디자인 받아서 넣고 전체적인 UI 수정
- 채팅방에서 동그라미 안에 사진 넣기 쉽지 않음
- 플레이스토어 출시 방법 알아보고 슬슬 준비
- IOS 빌드 확인
- 베타 테스트 진행하기
- 회원가입시 약관 동의하기 버튼 추가하기



## 마크다운 문법 
마크다운 문법 : <https://gist.github.com/ihoneymon/652be052a0727ad59601>

## flutter 개발할 때 사용하는 페이지들
<https://fluttergems.dev/>
<pub.dev/>
<https://firebase.flutter.dev/docs/auth/usage/#emailpassword-registration--sign-in>
