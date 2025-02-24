-- The following view can show us the each section's average score, and average score percentage.

With sections_score AS
(
SELECT 

Section_1 AS Section,  ROUND(AVG(Section_1_Percentage), 2) AS Avg_Section_Percentage FROM Sections
Group by Section_1
Union ALL

SELECT
Section_2,  ROUND(AVG(Section_2_Percentage), 2)	 FROM Sections
Group by Section_2
Union ALL

SELECT
Section_3,	 ROUND(AVG(Section_3_Percentage), 2)	 FROM Sections
Group by Section_3
Union ALL

SELECT
Section_4,	 ROUND(AVG(Section_4_Percentage), 2)	 FROM Sections
Group by Section_4
Union ALL

SELECT
Section_5,	 ROUND(AVG(Section_5_Percentage), 2)	 FROM Sections
Group by Section_5
Union ALL

SELECT
Section_6,	 ROUND(AVG(Section_6_Percentage), 2)	 FROM Sections
Group by Section_6
Union ALL

SELECT
Section_7,   ROUND(AVG(Section_7_Percentage), 2)	 FROM Sections
Group by Section_7
Union ALL

SELECT
Section_8,	 ROUND(AVG(Section_8_Percentage), 2)    FROM Sections
Group by Section_8
)

SELECT * FROM sections_score

ORDER BY Avg_Section_Percentage DESC
