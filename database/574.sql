#Winning candidate
SELECT Name
FROM Candidate
WHERE id=(
    SELECT CandidateId
    FROM Vote
    GROUP BY CandidateId
    ORDER BY count(*) DESC
    LIMIT 1)