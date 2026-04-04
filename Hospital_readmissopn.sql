SELECT * FROM hospital_readmission;


-- Overall Readmission Rate
SELECT 
ROUND(AVG(label) *100 ,2) AS readmission_rate
FROM hospital_readmission
;


-- Readmission by Diagnosis
SELECT 
primary_diagnosis,
COUNT(*) total_patient,
ROUND(AVG(label) *100 ,2) AS readmission_rate
FROM hospital_readmission
group by primary_diagnosis
order by readmission_rate desc
;

-- Readmission by Discharge Disposition
SELECT discharge_disposition,
COUNT(*) total_patient,
ROUND(AVG(label) *100 ,2) AS readmission_rate
 FROM hospital_readmission
 group by discharge_disposition
 order by readmission_rate desc
;



-- Readmission by Age Group
SELECT Age_group,
COUNT(*) total_patient,
ROUND(AVG(label) *100 ,2) AS readmission_rate
 FROM hospital_readmission
 group by Age_group
 order by readmission_rate desc
;

-- Readmission by Insurance Type
SELECT insurance_type,
COUNT(*) total_patient,
ROUND(AVG(label) *100,2) AS readmission_rate
FROM hospital_readmission
GROUP BY insurance_type
ORDER BY readmission_rate DESC;

-- Length of Stay Impact
SELECT Stay_Bucket,
COUNT(*) total_patient,
ROUND(AVG(label) *100,2) AS readmission_rate
FROM hospital_readmission
GROUP BY Stay_Bucket
ORDER BY readmission_rate DESC;

-- Comorbidity Impact
SELECT comorbidities_count,
COUNT(*) AS total_patient,
ROUND(AVG(label) *100,2) AS readmission_rate
FROM hospital_readmission
GROUP BY comorbidities_count
ORDER BY readmission_rate DESC;

-- Previous Readmissions Effect
SELECT prev_readmissions,
COUNT(*) total_patient,
ROUND(AVG(label) *100,2) AS readmission_rate
FROM hospital_readmission
GROUP BY prev_readmissions
ORDER BY readmission_rate DESC;








