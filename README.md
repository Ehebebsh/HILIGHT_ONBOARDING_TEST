# HILIGHT_ONBOARDING 화면 구현

플러터(Flutter)에서 하이라이트 온보딩(Highlight Onboarding)은 새로운 사용자나 특정 기능에 익숙하지 않은 사용자들에게 앱의 주요 기능이나 인터페이스 요소를 소개하는 방법이. 일반적으로 하이라이트 온보딩은 앱의 특정 UI 요소나 버튼, 기능 등을 강조하여, 사용자에게 해당 요소의 위치와 역할을 안내하는 방식으로 진행됩니다.

## 1. 실행 과정
<details>
<summary>1. 패키지 설치</summary>
<div markdown="1">

- 앱을 소개하는 방법은 다양하게 있지만 나는 showcaseview 라는 패키지를 이용해서 hilight_onboarding 화면을 구현하였다.
- https://pub.dev/packages/showcaseview

</div>
</details>

<details>
<summary>2. 코딩하기</summary>
<div markdown="1">

```dart
Showcase(
  key: logout,
  description: 'ex) 로그아웃 하려면 눌러주세요',
  overlayOpacity: 0.5,
  targetShapeBorder: const CircleBorder(),
  targetPadding: const EdgeInsets.all(8),
  child: const Icon(
    Icons.exit_to_app,
    color: Colors.white,
  ),
),
```
</div>
</details>

 ## 2. 실행 화면
<p align ="center">
 <img src = "https://github.com/user-attachments/assets/ea325e9f-5f4d-4b35-af5f-229f65832e53">
</p>

</br>
