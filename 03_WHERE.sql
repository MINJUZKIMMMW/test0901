/* WHERE */

-- 1) 비교 연산자 예제와 함께 WHERE절 사용
SELECT
       MENU_NAME
     , MENU_PRICE
     , ORDERABLE_STATUS
  FROM TBL_MENU
WHERE  ORDERABLE_STATUS='Y';
-- 같지 않음 연산자와 함께 WHERE을 사용
SELECT 
       MENU_NAME
       ,MENU_PRICE
       ,ORDERABLE_STATUS
       FROM TBL_MENU
       WHERE MENU_PRICE = 13000;
SELECT
       MENU_CODE
	,  MENU_NAME
	,  ORDERABLE_STATUS
FROM TBL_MENU
       WHERE ORDERABLE_STATUS !='Y';
       
       
SELECT
       MENU_CODE
       ,MENU_NAME
       ,MENU_PRICE
       FROM TBL_MENU
       WHERE MENU_PRICE > 20000;
       -- 대소비교 연산자와 함께 WHERE절 사용
       SELECT
       MENU_CODE
       ,MENU_NAME
       ,MENU_PRICE
       FROM TBL_MENU
       WHERE MENU_PRICE <= 20000;

    
-- 2 ) AND 연산자와 함께 WHERE 절 사용
SELECT
       MENU_NAME,
       MENU_PRICE,
       CATEGORY_CODE,
       ORDERABLE_STATUS
FROM TBL_MENU
WHERE ORDERABLE_STATUS = 'Y'AND
      CATEGORY_CODE = 10;
      
      SELECT
       MENU_NAME,
       MENU_PRICE,
       CATEGORY_CODE,
       ORDERABLE_STATUS
FROM TBL_MENU
WHERE ORDERABLE_PRICE > 5000 AND
      CATEGORY_CODE = 10;
      
-- 3 ) OR연산자와 함께 WHERE절 사용

SELECT

		MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
        FROM  TBL_MENU
WHERE ORDERABLE_STATUS = 'Y' OR
      CATEGORY_CODE = 10;



SELECT

		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM TBL_MENU
    WHERE MENU_PRICE>5000 OR
		  CATEGORY_CODE = 10;
          
    
SELECT

		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM TBL_MENU
    WHERE CATEGORY_CODE = 4 OR
          MENU_PRICE = 9000 AND
          MENU_CODE > 10;
          
-- 4 ) BETWEEN 연산자 예제와 함께 WHERE절 사용
SELECT
       MENU_NAME,
       MENU_PRICE
       CATEGORY_CODE
FROM   TBL_MENU
WHERE MENU_PRICE>=10000 AND 
MENU_PRICE<=25000
ORDER BY MENU_PRICE;

          
          SELECT
       MENU_NAME,
       MENU_PRICE
       CATEGORY_CODE
FROM   TBL_MENU
WHERE MENU_PRICE BETWEEN 10000 AND 25000
ORDER BY MENU_PRICE;

-- 부정 표현
 SELECT
       MENU_NAME,
       MENU_PRICE
       CATEGORY_CODE
FROM   TBL_MENU
WHERE MENU_PRICE NOT BETWEEN 10000 AND 25000
ORDER BY MENU_PRICE;

-- 5 ) LINE 연산자 예제와 함께 WHERE절 사용
SELECT
       MENU_NAME,
       MENU_PRICE
       FROM TBL_MENU
       WHERE MENU_NAME LIKE '%마늘%'
       ORDER BY MENU_NAME;
       
       
-- 메뉴코드 , 메뉴이름 , 메뉴가격 , 카테고리 코드 , 판매상태 , 
-- 조건 : 메뉴 가격이 5000 초과이면서 카테고리코드 10번이면서 메뉴 이름이 갈치가 포함된 쿼리문을 조회하세요

SELECT
MENU_NAME,
MENU_CODE,
MENU_PRICE,
CATEGORY_CODE
ORDERABLE_STATUS
FROM TBL_MENU
WHERE 
 MENU_NAME LIKE '%갈치%' AND
        MENU_PRICE > 5000 AND
        CATEGORY_CODE = 10;


 -- 부정표현      
SELECT

		MENU_NAME,
        MENU_PRICE
        FROM TBL_MENU
        WHERE MENU_NAME NOT LIKE '%마늘%'
        ORDER BY MENU_NAME;
        
        
-- 6 ) IN 연산자 예제와 함께 WHERE절 사용
SELECT
			MENU_NAME,
            CATEGORY_CODE
 	   FROM TBL_MENU
	   WHERE CATEGORY_CODE = 4 OR 
            CATEGORY_CODE = 5 OR
            CATEGORY_CODE = 6
		ORDER BY CATEGORY_CODE;
        
        
  SELECT      
			MENU_NAME,
            CATEGORY_CODE
 	   FROM TBL_MENU
	   WHERE CATEGORY_CODE IN (4,5,6)
       ORDER BY CATEGORY_CODE;
       
       
  -- 부정 표현           
  SELECT      
			MENU_NAME,
            CATEGORY_CODE
 	   FROM TBL_MENU
	   WHERE CATEGORY_CODE NOT IN (4,5,6)
       ORDER BY CATEGORY_CODE;
       
       
       -- 7) IS NULL 연산자와 함께 WHERE절 사용
       SELECT
       
       CATEGORY_CODE,
       CATEGORY_NAME,
       REF_CATEGORY_CODE
       FROM TBL_CATEGORY
       WHERE REF_CATEGORY_CODE IS NULL;
       
       
       -- 부정표현
         SELECT
       
       CATEGORY_CODE,
       CATEGORY_NAME,
       REF_CATEGORY_CODE
       FROM TBL_CATEGORY
       WHERE REF_CATEGORY_CODE IS NOT NULL;
       
       
       
        
        
            


          
          
          
	
          
      

      

    