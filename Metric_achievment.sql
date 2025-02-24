SELECT Agent, ROUND(AVG(Points), 2) AS Average_score_points, 159 AS Max_score, 
			ROUND(((AVG(Points) / 159) *100), 2) AS Quality_score_percentage,
			CASE 
				WHEN ((AVG(Points) / 159) *100) <= 50 then 'Metric_Failed'
				WHEN ((AVG(Points) / 159) *100) <= 75 then 'Achieved 75%'
				ELSE 'Achieved'
			END AS Metric_Acheivment
FROM quality
Group by Agent
Order by Quality_score_percentage DESC, Agent;

-- The last query can show us the average achieved points per agent, it's percentage, and whether the agent achieved or not,
-- But, the following query shows the same comparison, but, between the teams.
-- Nada's team scored the highest average quality points (99.99 %) while khaled's team scored the lowest (94.42 %)
-- Atwa's team wasn't on the top of the list, but, scored a very good quality (98.62 %)

SELECT Team_Name, ROUND(AVG(Points), 2) AS Average_score_points, 159 AS Max_score,
		ROUND(((AVG(Points) / 159) *100), 2) AS Quality_score_percentage
FROM quality
Group by Team_Name
ORDER BY Quality_score_percentage DESC