-- LIMIT

-- 전체 행 조회
SELECT

		MENU_CODE,
        MENU_NAME,
        MENU_PRICE
        FROM TBL_MENU
        ORDER BY MENU_PRICE DESC;
  -- 2번 행부터 5번 행까지 조회   
	SELECT

		MENU_CODE,
        MENU_NAME,
        MENU_PRICE
        FROM TBL_MENU
        ORDER BY MENU_PRICE DESC
        LIMIT 1,4;
        
        -- 상위 다섯줄의 행만 조회
        
SELECT
       MENU_CODE,
       MENU_NAME,
       MENU_PRICE
       FROM TBL_MENU
       ORDER BY MENU_PRICE DESC, -- 내림차순
       MENU_NAME ASC             -- 오름차순
       LIMIT 5;
       
        
        
	

