# 연습 문제 풀이
1. 세션 전체 삭제 → 뒤로 가기 한 후 → 특정 상품 선택 삭제
   에러가 나는 이유가 전체삭제한 이후에 세션이 없어졌는데, 개별 삭제를 하려 하면 그 세션에서 값을 받아와서 없애야 하는 건데, 세션이 이미 없어진 상태라 오류가 나는 것이다.
   그러므로 세션이 있는지 확인하는 코드를 넣어서 해당 문제를 해결한다.
   ![코드 수정](https://github.com/minseo121/20220994_SERVLET/assets/122244556/29c0c984-f9a4-40e4-b5e4-ac3b276af0a4)
2. 배송 정보 수정
   ![날짜](https://github.com/minseo121/20220994_SERVLET/assets/122244556/9c7a5f9a-e313-4197-b8e2-fe182155fd05)
   ![국가명](https://github.com/minseo121/20220994_SERVLET/assets/122244556/ed983ecf-527e-4cc9-967b-1ae76fb53f33)
   ![주소](https://github.com/minseo121/20220994_SERVLET/assets/122244556/9fd8c074-2780-4d40-89aa-8d1971922713)
3. 삭제 기능 완료
   ![삭제1](https://github.com/minseo121/20220994_SERVLET/assets/122244556/b54b6604-2c2e-4674-bb67-6b573e7b7d83)
   ![삭제2](https://github.com/minseo121/20220994_SERVLET/assets/122244556/a0e89c18-2621-4f5b-9509-b62450684637)
   ![삭제3](https://github.com/minseo121/20220994_SERVLET/assets/122244556/562ac27c-6f31-426d-bf94-e22021c01b97)

# 추가 구현
1. 디자인 전체 수정
   ![main-header](https://github.com/minseo121/20220994_SERVLET/assets/122244556/0bf36bbd-3f8a-40ec-a901-1a50940ed30c)
   ![디자인css](https://github.com/minseo121/20220994_SERVLET/assets/122244556/28aa7358-ae3b-49a7-b73a-40f0dfc67431)
   css를 수정하여 폰트와 로고를 적절히 넣어줬다.
   로고 크기 조정 및 a 태그를 이용해서 로고 클릭 시 메인페이지로 넘어가도록 수정했다.
