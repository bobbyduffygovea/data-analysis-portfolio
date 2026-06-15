-- Query: Member network penetration by county
-- Purpose: Shows provider accessibility (relevant to the healthcare role)
-- Tools: PostgreSQL

SELECT 
    county,
    COUNT(DISTINCT member_id) AS total_members,
    COUNT(DISTINCT CASE WHEN in_network_flag = 'Y' THEN member_id END) AS in_network_members,
    ROUND(100.0 * COUNT(DISTINCT CASE WHEN in_network_flag = 'Y' THEN member_id END) / COUNT(DISTINCT member_id), 2) AS pct_in_network
FROM member_assignments
WHERE assignment_year = 2025
GROUP BY county
ORDER BY pct_in_network DESC;