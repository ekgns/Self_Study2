# TODO-List


## 테이블 뷰 
####  테이블뷰 데이터들을 목록형태로 보여 줄 수 있는 가장 기본적인 UI
- 여려개의 Cell을 가지고 있고 하나의 열과 여러 줄의 행을 지니고 있으면 , 수직으로만 스크롤 가능
- 섹션을 이용해 행을 그룹화하여 콘텐츠를 좀 더 쉽게 탐색 할 수 있음
- 섹션의 헤더와 푸터에 View 를 구성하여 추가적인 정보를 표시할 수 있다 .

#### 테이블을 사용하기 위해선 Delegate, DataSource 프로토콜을 채택해줘야함


 DataSource : 테이터를 받아 뷰를 그려줌


-   테이블 뷰를 생성하고 수정하는데 필요한 정보를 테이블뷰 객체에 제공
DataSource 메서드
1.  numberOfRowsInSection  (각 세션에 표시할 행의 개수를 묻는 메서드)
2.  CellForRowAt (특정 인덱스 Row의 Cel에 대한 정보를 넣어 Cell을 반환하는 메서드)
3.  numberOfSection (총 섹션 개수를 묻는 메서드)
4. titleForHeaderInSection (특정 섹션의 헤더 타이틀을 묻는 메서드)
5. titleForFooterInSection (특정 풋터 타이틀을 묻는 메서드)
6. canEditRowAt (특정 위치의 행이 편집 가능한지 묻는 메서드)
7. canMoveRowAt (특정 위치의 행을 재정렬 가능한지 묻는 메서드)
8. sectionIndexTitles (테이블 뷰 섹션 인덱스 타이틀을 묻는 메서드)
9. sectionForSectionIndexTitle (인덱스에 해당하는 섹션을 알려주는 메서드)
10. editingStyle (스와이프 모드, 편집모드에서 버튼을 선택하면 호출 되는 메서드/ 해당 메서드에서는 행에 변경사항을 Commit 해야 함)
11. moveRowAt sourceindexPath (행이 다른 위치로 이동되면 어디로에서 어디로 이동했는지 알려주는 메서드)

Delegate : 동작과 외관을 담당
- 테이블 뷰의 시각적인 부분을 설정, 행의 액션 관리, 액세서리 뷰 지원, 테이블 뷰의 개별 행 편집을 도와줌 
Delegate메서드 
1. didSelectRowAt (행이 선택되었을 때 호출되는 메서드 )
2. didDeselectRowAt (행이 선택 해제되었을 때 호출되는 메서드)
3. heightForRowAt (특정 위치 행의 높이를 묻는 메서드)
4. viewForHeaderInSection, viewForFooterInSection (지정된 섹션의 헤더 뷰 또는 푸터뷰에 표시할 View 가 어떤 건지 묻는 메서드)
5. heightForHeaderInSection, heightForFooterInSection (지정된 섹션의 헤더 뷰 또는 푸터뷰의 높이를 묻는 메서드)
6. willBeginEditingRowAt (테이블 뷰가 편집 모드에서 들어갔을 때 호출되는 메서드)
7. didEndEditingRowAt (테이블 뷰가 편집 모드에서 빠져나왔을 때 호출되는 메서드)
8. willDisplay (테이블 뷰가 셀을 사용하여 행을 그리기 직전에 호출되는 메서드)
9. didEndDisplaying (테이블 뷰로부터 셀이 화면에 사라지면 호출되는 메서드 )


