-- Query 1
-- Retrieve a definitive list of all unique species treated at the clinic.
SELECT DISTINCT Species
FROM PET;

-- Query 2
-- Identify the names of all pets whose names begin with the letter M or B.
SELECT PetName
FROM PET
WHERE PetName LIKE 'M%'
   OR PetName LIKE 'B%';

-- Query 3
-- Extract the appointment dates and reasons for visits where the estimated cost is between 50.00 and 150.00.
-- Results are sorted from highest to lowest estimated cost.
SELECT AppointmentDate, Reason
FROM APPOINTMENT
WHERE EstimatedCost BETWEEN 50.00 AND 150.00
ORDER BY EstimatedCost DESC;

-- Query 4
-- Display the names of the pets alongside the specific reasons for their appointments.
SELECT PET.PetName, APPOINTMENT.Reason
FROM PET
JOIN APPOINTMENT
ON PET.PetID = APPOINTMENT.PetID;

-- Query 5
-- Group the pets by their species, excluding Bird from the final output.
SELECT Species
FROM PET
WHERE Species <> 'Bird'
GROUP BY Species;
