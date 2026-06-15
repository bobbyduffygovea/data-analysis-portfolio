# data-analysis-portfolio
A portfolio for displaying my skills and value
## SQL: Member Network Penetration by County

### Purpose
This query evaluates how well a health plan's provider network covers members across different counties. It answers the business question: *"Which counties have the strongest vs. weakest in-network member penetration?"*

### Business Context
In the healthcare role described, the team needed to assess provider accessibility for sales proposals and client renewals. A county with low in-network penetration might signal a network gap that affects a client's decision to renew.

### Tools Used
- PostgreSQL
- Basic aggregations and conditional logic

### Query Logic
1. Counts total members per county
2. Counts members with an in-network flag = 'Y'
3. Calculates percentage of members in-network
4. Orders results from highest to lowest penetration

### Sample Output (first 3 rows)

| county         | total_members | in_network_members | pct_in_network |
|----------------|---------------|--------------------|----------------|
| Cook, IL       | 45,200        | 41,584             | 92.0%          |
| Multnomah, OR  | 28,750        | 25,875             | 90.0%          |
| Bronx, NY      | 32,100        | 24,075             | 75.0%          |

### How This Shows My Skills
- Demonstrates SQL proficiency for reporting and decision support
- Shows understanding of healthcare network metrics
- Output can feed directly into a Tableau/Power BI dashboard

### What I'd Improve With More Time
- Add year-over-year trend comparison
- Filter for specific client groups or product types
