-- =========================
-- BASIC QUERIES
-- =========================

-- View all projects
SELECT * FROM projects;


-- =========================
-- ANALYSIS QUERIES
-- =========================

-- Total cost per project
SELECT p.project_name AS project, SUM(ac.amount) AS total_cost
FROM actual_costs ac
JOIN projects p ON ac.project_id = p.project_id
GROUP BY p.project_name
ORDER BY total_cost DESC;
