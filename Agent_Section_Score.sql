SELECT q.Agent, ROUND(AVG(q.Qa_Score) ,2) AS Average_QA_Score_Percentage, 

				ROUND(AVG(s.Section_1_Percentage), 2) AS Greeting_Percentage_per_agent,
					  (
					   SELECT ROUND(AVG(Section_1_Percentage), 2)
					   FROM Sections
					  )  AS Average_Greeting_percentage,


				ROUND(AVG(s.Section_2_Percentage), 2) AS Security_verification_Percentage_per_agent,
					  (
					   SELECT ROUND(AVG(Section_2_Percentage), 2)
					   FROM Sections
					  )  AS Average_Security_verification_percentage,


				ROUND(AVG(s.Section_3_Percentage), 2) AS Process_adherence_Percentage_per_agent,
					  (
					   SELECT ROUND(AVG(Section_3_Percentage), 2)
					   FROM Sections
					  )  AS Average_Process_adherence_percentage,

				ROUND(AVG(s.Section_4_Percentage), 2) AS Information_Accuracy_Percentage_per_agent,
					  (
					   SELECT ROUND(AVG(Section_4_Percentage), 2)
					   FROM Sections
					  )  AS Average_Information_Accuracy_percentage,

				ROUND(AVG(s.Section_5_Percentage), 2) AS Behavior_Percentage_per_agent,
					  (
					   SELECT ROUND(AVG(Section_5_Percentage), 2)
					   FROM Sections
					  )  AS Average_Behavior_percentage,

				ROUND(AVG(s.Section_6_Percentage), 2) AS Backlog_accuracy_Percentage_per_agent,
					  (
					   SELECT ROUND(AVG(Section_6_Percentage), 2)
					   FROM Sections
					  )  AS Average_Backlog_accuracy_percentage,

				ROUND(AVG(s.Section_7_Percentage), 2) AS COMMUNICATION_SKILLS_Percentage_per_agent,
					  (
					   SELECT ROUND(AVG(Section_7_Percentage), 2)
					   FROM Sections
					  )  AS Average_COMMUNICATION_SKILLS_percentage,

				ROUND(AVG(s.Section_8_Percentage), 2) AS Documentation_Percentage_per_agent,
					  (
					   SELECT ROUND(AVG(Section_8_Percentage), 2)
					   FROM Sections
					  )  AS Average_Documentation_percentage

FROM quality AS q
JOIN sections AS s
ON q.Reference = s.Reference

Group by q.Agent
