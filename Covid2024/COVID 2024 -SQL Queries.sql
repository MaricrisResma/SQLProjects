-- Explore the Data
SELECT
	DISTINCT continent
FROM
	Covid2024.dbo.CovidDeaths

-- Explore continent with NULL values
-- It's observed these records pertain to the update per continent, wherein the cases and deaths are accumulations from all locations of each continent already
SELECT
	continent, location
FROM
	Covid2024.dbo.CovidDeaths
WHERE
	continent IS NULL
GROUP BY
	continent, location

-- OBSERVATIONS
--- data type of total_cases and total_deaths is var char so needed to either cast them during aggregations of update them to float if allowed
--- Record with NULL Continent has the Continent in the location column

-- Based on World data, what is the cumulative total Covid Deaths and Total Covid Cases? [Based on the redundant column Where continent is NULL]
SELECT
	location,
	SUM(new_deaths) AS Global_total_deaths,
	SUM(new_cases) AS Global_total_Cases
FROM
	Covid2024.dbo.CovidDeaths
WHERE 
	continent IS NULL 
	AND
	location  LIKE '%World%'
GROUP BY 
	location

-- Based on Income Bracket, What is the cumulative total Covid Deaths and Total Covid Cases?
SELECT
	continent,
	location,
	SUM(new_deaths) AS incomeBracket_total_deaths,
	SUM(new_cases) AS incomeBracket_total_Cases,
	SUM(SUM(new_deaths)) OVER (PARTITION BY continent) AS total_deaths,
	SUM(SUM(new_cases)) OVER (PARTITION BY continent) AS total_Cases
FROM
	Covid2024.dbo.CovidDeaths
WHERE 
	continent IS NULL 
	AND
	location LIKE '%income%'
GROUP BY 
	continent,location

	
-- Based on the continent, What is the cumulative total Covid Deaths and Total Covid Cases? [Based on the redundant column Where continent is NULL]
SELECT
	continent,
	location,
	SUM(new_deaths) AS continent_total_deaths,
	SUM(new_cases) AS continent_total_Cases,
	SUM(SUM(new_deaths)) OVER (PARTITION BY continent) AS total_deaths,
	SUM(SUM(new_cases)) OVER (PARTITION BY continent) AS total_Cases
FROM
	Covid2024.dbo.CovidDeaths
WHERE 
	continent IS NULL 
	AND
	location NOT LIKE '%income%'
	AND
	location NOT LIKE '%Union%'
	AND
	location NOT LIKE '%World%'
GROUP BY 
	continent,location


-- Based on each country, What is Cumulative total Covid Deaths and Total Covid Cases?
-- Also compare it to the total of the continent it belongs to
-- Here we observed that the values are consistent with the world data
SELECT
	continent,
	location,
	SUM(new_deaths) AS country_total_deaths,
	SUM(new_cases) AS country_total_infections,
	SUM(SUM(new_deaths)) OVER (PARTITION BY continent) AS continent_total_deaths,
	SUM(SUM(new_cases)) OVER (PARTITION BY continent) AS continent_total_cases
FROM
	Covid2024.dbo.CovidDeaths
GROUP BY
	continent,location
ORDER BY
	continent,location

-- How many Covid Deaths and New Covid Infections per day in each country?
SELECT
	location, 
	date, 
	new_cases, 
	new_deaths
FROM 
	Covid2024.dbo.CovidDeaths
WHERE 
	continent IS NOT NULL
ORDER BY
	location, date

-- What is Cumulative total Covid Deaths and Total Covid Cases per day in each country?
SELECT
	location, date, new_cases, new_deaths,
	SUM(new_cases) OVER (PARTITION BY location
							ORDER BY date) AS toalCovidCases,
	SUM(new_deaths) OVER (PARTITION BY location
							ORDER BY date) AS totalCovidDeaths
FROM 
	Covid2024.dbo.CovidDeaths
WHERE 
	continent IS NOT NULL
ORDER BY
	location, date

DROP VIEW if exists
	MYVIEW

-- COVID Death % per country: Of the total cases of people who got COVID, what is the percentage of people who died?
SELECT
	location, 
	SUM(new_cases) AS TotalCases, 
	SUM(new_deaths) AS TotalDeaths,
	ROUND((MAX(total_deaths)/MAX(total_cases))*100,2) AS DeathPercentage
FROM
	Covid2024.dbo.CovidDeaths
WHERE
	continent IS NOT NULL 
GROUP BY
	location
ORDER BY 
	DeathPercentage DESC


-- Infection % per country: Of the total population, what is the percentage of those who got COVID?
SELECT
	location,
	SUM(new_cases) AS TotalCases, 
	MAX(population) AS TotalPopulation,
	ROUND((MAX(total_cases)/MAX(population))*100,2) AS InfectionPercentage
FROM
	Covid2024.dbo.CovidDeaths
WHERE
	continent IS NOT NULL
GROUP BY
	location
ORDER BY 
	InfectionPercentage DESC


-- Get Cumulative of vaccines given
SELECT 
	deaths.continent,
	deaths.location,
	deaths.date,
	deaths.population,
	SUM(CAST(vaccines.new_vaccinations AS BIGINT)) OVER (PARTITION BY deaths.location
								ORDER BY deaths.date) AS TotalVaccinationsGiven
FROM
	Covid2024.dbo.CovidDeaths deaths
INNER JOIN
	Covid2024.dbo.CovidVaccinations vaccines
	ON deaths.location=vaccines.location
	AND deaths.date=vaccines.date
WHERE
	deaths.continent IS NOT NULL
ORDER BY
	deaths.location, deaths.date ASC



DROP Table if exists
	#PercentPopulationVaccinated

-- Creating TEMP Table to Show summary of Vaccination data
CREATE Table 
	#PercentPopulationVaccinated
(
	continent nvarchar(255),
	location nvarchar(255),
	date datetime,
	Population numeric,
	new_vaccinations numeric,
	people_fully_vaccinated numeric,
	TotalPeopleVaccinated bigint
)

-- Fill table with data
INSERT INTO 
	#PercentPopulationVaccinated
SELECT 
	deaths.continent,
	deaths.location,
	deaths.date,
	deaths.population,
	vaccines.new_vaccinations,
	vaccines.people_fully_vaccinated,
	SUM(CAST(vaccines.new_vaccinations AS BIGINT)) OVER (PARTITION BY deaths.location
								ORDER BY deaths.date) AS TotalVaccinations
FROM
	Covid2024.dbo.CovidDeaths deaths
INNER JOIN
	Covid2024.dbo.CovidVaccinations vaccines
	ON deaths.location=vaccines.location
	AND deaths.date=vaccines.date

SELECT *
FROM
#PercentPopulationVaccinated

-- View % of People Fully Vaccinated in each country
SELECT
	location,
	SUM(new_vaccinations) AS TotalVaccinationsComputed,
	MAX(people_fully_vaccinated) AS TotalPeopleVaccinated,
	MAX(population) AS TotalPopulation,
	ROUND((MAX(people_fully_vaccinated)/MAX(population))*100,2) AS VaccinatedPercentage
FROM
	#PercentPopulationVaccinated
GROUP BY
	location
ORDER BY
	VaccinatedPercentage DESC


-- Creating TEMP Table
DROP VIEW if exists
	View_1

-- creating view for visualizations


