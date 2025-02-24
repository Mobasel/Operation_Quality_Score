SELECT Case_Id, Agent, Evaluation_Time, Achieved
FROM quality
ORDER BY Evaluation_Time DESC; 

-- This last query was trying to show us if there is any correlation between the evaluation time and whether the case acheived the quality or no,
-- We can't determine if there is a correlation or not, so, it's better to check the average evaulaiton time per quality acheivment, and that's below.

SELECT Achieved, ROUND(AVG(Evaluation_Time), 2) AS Average_evaluation_time
FROM quality
Group by Achieved;

-- Here, we can see that the average evaluation time for the achieved cases (573.18) is less that the not achieved cases (2192), 
-- And we can consider that as a Strong Correlation.



-- The following query confirms that the lower the average evaluation time the higher score points

SELECT Agent, ROUND(AVG(Evaluation_Time), 1) AS Average_evaluation_time, ROUND(AVG(Qa_Score), 1) AS Average_QA_score
FROM quality
Group by Agent
ORDER BY Average_evaluation_time DESC;