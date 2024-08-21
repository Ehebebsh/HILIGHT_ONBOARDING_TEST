# ✨ Highlight Onboarding 구현하기

플러터(Flutter)에서 **하이라이트 온보딩**(Highlight Onboarding)은 새로운 사용자나 특정 기능에 익숙하지 않은 사용자들에게 앱의 주요 기능이나 인터페이스 요소를 소개하는 방법이다. 일반적으로 하이라이트 온보딩은 앱의 특정 UI 요소나 버튼, 기능 등을 강조하여, 사용자에게 해당 요소의 위치와 역할을 안내하는 방식으로 진행된다.

## 🛠️ 1. 실행 과정

### 1.1 패키지 설치
<details>
<summary>ShowcaseView 패키지 설치 및 설정</summary>
<div markdown="1">

하이라이트 온보딩을 구현하기 위해 **showcaseview**라는 패키지를 사용했다. 이 패키지는 사용자가 앱의 중요한 기능을 쉽게 이해할 수 있도록 돕는 도구이다.

- **패키지 링크**: [showcaseview](https://pub.dev/packages/showcaseview)

```yaml
dependencies:
  showcaseview: ^1.1.0
```
</div>
</details>

### 1.2 코딩하기
<details>
<summary>Highlight Onboarding 구현 예시 코드</summary>
<div markdown="1">
  
다음은 ShowcaseView 패키지를 사용하여 로그아웃 버튼을 강조하는 예제 코드이다. 이 코드를 통해 사용자는 앱의 로그아웃 기능을 쉽게 이해할 수 있다.

```dart
Showcase(
  key: logout,
  description: '로그아웃 하려면 여기를 눌러주세요.',
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

## 🎥 2. 실행 화면
아래는 앱의 실행 화면을 보여주는 이미지이다. 하이라이트 온보딩이 어떻게 작동하는지 시각적으로 확인할 수 있다.

<p align="center">
  <img src="https://github.com/user-attachments/assets/ea325e9f-5f4d-4b35-af5f-229f65832e53" alt="App Demo" width="300">
</p>
