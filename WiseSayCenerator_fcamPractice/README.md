# 명언 생성기 완성 후 정리
## 패캠 강의 
### 배운점 
1. Content Hugging
2. Compression Resistance
~~~
UILable 과 UIButton들과 같은 뷰의 속성 텍스트나 이미지에 따라 크기가 결정 되는 뷰들이 있다
다른 뷰들과의 걸린 제약 조건에 의해 본래 콘텐츠 고유 사이즈보다 늘어나거나 줄어든다
이러한 것을 조절하기 위한 제약조건 이다.
Content Hugging : 늘어나는것에 대해 저항하는 제약조건  우선순위가 높으면 크기를 유지  낮으면 늘어남
Compression Resistance : 줄어드는것에 대해 저항하는 제약조건 우선순위가 높으면 유지 낮으면 줄어듬
~~~

View 
1. 명언 생성기 라는 텍스트를 가진 라벨  
2. 명언이 보여질 될 UIView 영역
3. 명언텍스트가 표시 될 라벨
4. 명언을 말한사람의 이름이 표시 될 라벨
5. 명언 생성을 담당할 이벤트 버튼

Model
1. Quote
-   명언에 필요한 요소를 담당하는 구조체
-    명언, 말한 사람 -> content, name 으로 구성

ViewController 
1. 스토리보드에 만든 요소들을 아울렛 과 액션 이벤트 연결
2. 데이터 모델(Quote)를 이용한 데이터 배열 생성하여 데이터 5개를 만들어 저장 
3. 명언이 랜덤으로 생성될 수 있는 기능을 만듬

# 결과물 
![ezgif com-video-to-gif](https://user-images.githubusercontent.com/70513066/132227596-31d3769e-ce80-4644-89ca-2254afa5e9bc.gif)
