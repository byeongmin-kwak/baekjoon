SELECT A.ID, B.FISH_NAME, A.LENGTH
FROM FISH_INFO A
JOIN FISH_NAME_INFO B ON A.FISH_TYPE = B.FISH_TYPE
WHERE A.LENGTH = (
    SELECT MAX(LENGTH)
    FROM FISH_INFO
    WHERE FISH_TYPE = A.FISH_TYPE
)
ORDER BY A.ID