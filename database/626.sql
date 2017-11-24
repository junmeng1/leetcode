#exchange seats
SELECT 
    if(id<(SELECT count(*) FROM seat), if(mod(id,2)=0, id-1, id+1), if(mod(id,2)=0, id-1, id)) as id, student
FROM seat
ORDER BY id