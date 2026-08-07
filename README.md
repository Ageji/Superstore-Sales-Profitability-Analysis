# Superstore Sales & Profitability Analysis

##  Project Overview

This project uses **SQL** to analyze sales, profitability, customer performance, discounting, and product performance using the Superstore dataset.

The objective was to move beyond basic sales reporting and identify **business insights that could support better pricing, product, customer, and regional decisions**.

## Business Questions

The analysis answers six key questions:

1. What are the monthly sales and profit trends?
2. Which product categories and sub-categories are the most profitable?
3. Which customers generate the most revenue?
4. How does discounting affect profitability?
5. Which regions have strong sales but weak profitability?
6. Are the best-selling products also the most profitable?

## Dataset

The dataset contains 21 columns

### Key variables

* Order ID
* Order Date
* Ship Date
* Customer ID
* Customer Name
* Segment
* Region
* Product ID
* Category
* Sub-Category
* Product Name
* Sales
* Quantity
* Discount
* Profit


#  Analysis & Insights

## 1. Monthly Sales & Profit Trends
| Year | Month     |           Sales |         Profit |
| ---: | --------- | --------------: | -------------: |
| 2014 | January   |      $14,236.90 |      $2,450.18 |
| 2014 | February  |       $4,519.92 |        $862.30 |
| 2014 | March     |      $55,691.04 |        $498.72 |
| 2014 | April     |      $28,295.35 |      $3,488.86 |
| 2014 | May       |      $23,648.28 |      $2,738.74 |
| 2014 | June      |      $34,595.14 |      $4,976.56 |
| 2014 | July      |      $33,946.37 |   **-$841.46** |
| 2014 | August    |      $27,909.47 |      $5,318.11 |
| 2014 | September |      $81,777.34 |      $8,328.08 |
| 2014 | October   |      $31,453.37 |      $3,448.23 |
| 2014 | November  |      $78,628.74 |      $9,292.15 |
| 2014 | December  |      $69,545.64 |      $8,983.59 |
| 2015 | January   |      $18,174.08 | **-$3,280.97** |
| 2015 | February  |      $11,951.40 |      $2,813.84 |
| 2015 | March     |      $38,726.26 |      $9,732.07 |
| 2015 | April     |      $34,195.25 |      $4,187.53 |
| 2015 | May       |      $30,131.72 |      $4,667.83 |
| 2015 | June      |      $24,797.31 |      $3,335.56 |
| 2015 | July      |      $28,765.32 |      $3,288.71 |
| 2015 | August    |      $36,898.32 |      $5,355.82 |
| 2015 | September |      $64,595.87 |      $8,209.17 |
| 2015 | October   |      $31,404.90 |      $2,817.37 |
| 2015 | November  |      $75,972.51 |     $12,474.80 |
| 2015 | December  |      $74,919.52 |      $8,016.96 |
| 2016 | January   |      $18,542.52 |      $2,824.82 |
| 2016 | February  |      $22,978.82 |      $5,004.59 |
| 2016 | March     |      $51,715.86 |      $3,611.98 |
| 2016 | April     |      $38,750.04 |      $2,977.88 |
| 2016 | May       |      $56,987.75 |      $8,662.09 |
| 2016 | June      |      $40,344.54 |      $4,750.33 |
| 2016 | July      |      $39,261.99 |      $4,432.90 |
| 2016 | August    |      $31,115.35 |      $2,062.05 |
| 2016 | September |      $73,410.09 |      $9,328.68 |
| 2016 | October   |      $59,687.80 |     $16,243.22 |
| 2016 | November  |      $79,412.03 |      $4,011.45 |
| 2016 | December  |  **$96,999.07** | **$17,885.28** |
| 2017 | January   |      $43,971.37 |      $7,140.45 |
| 2017 | February  |      $20,301.12 |      $1,613.89 |
| 2017 | March     |      $58,872.35 |     $14,751.87 |
| 2017 | April     |      $36,521.52 |        $933.30 |
| 2017 | May       |      $44,261.08 |      $6,342.70 |
| 2017 | June      |      $52,981.73 |      $8,223.42 |
| 2017 | July      |      $45,264.43 |      $6,952.60 |
| 2017 | August    |      $63,120.85 |      $9,041.09 |
| 2017 | September |      $87,866.66 |     $10,991.57 |
| 2017 | October   |      $77,776.96 |      $9,275.38 |
| 2017 | November  | **$118,447.81** |      $9,690.10 |
| 2017 | December  |      $83,829.31 |      $8,483.40 |


Monthly sales and profit were analyzed across 2014–2017.

### Key findings

* **November 2017** recorded the highest monthly sales at **$118,447.81**.
* **December 2016** recorded **$96,999.07 in sales** and **$17,885.28 in profit**.
* Some months generated losses despite having positive sales.
* **July 2014** recorded a loss of **$841.46**.
* **January 2015** recorded a loss of **$3,280.97**.

### Insight

> Sales performance varies considerably by month, and high sales do not always translate into high profitability. Monthly performance should therefore be evaluated using both revenue and profit.

---

# 2. Product & Sub-Category Profitability

The analysis compared sales and profit across product sub-categories.

### Top profitable sub-categories

| Category        | Sub-Category |       Sales |         Profit |
| --------------- | ------------ | ----------: | -------------: |
| Technology      | Copiers      | $149,528.01 | **$55,617.90** |
| Technology      | Phones       | $330,007.10 | **$44,516.25** |
| Technology      | Accessories  | $167,380.31 | **$41,936.78** |
| Office Supplies | Paper        |  $78,479.24 | **$34,053.34** |
| Office Supplies | Binders      | $203,412.77 | **$30,221.64** |

### Important finding

**Tables** generated:

* Sales: **$206,965.68**
* Profit: **-$17,725.59**

Copiers generated the highest profit at $55,617.90, while Tables generated $206,965.68 in sales but lost $17,725.59. This demonstrates that high sales do not necessarily mean high profitability.

### Insight

> Revenue alone does not indicate product success. Some products generate significant sales while reducing overall profitability.

---

# 3. Top Customers by Revenue

The top customers were ranked based on total sales.

| Customer      |      Sales |         Profit |
| ------------- | ---------: | -------------: |
| Sean Miller   | $25,043.07 | **-$1,980.75** |
| Tamara Chand  | $19,052.22 |      $8,981.32 |
| Raymond Buch  | $15,117.35 |      $6,976.09 |
| Tom Ashbrook  | $14,595.62 |      $4,703.80 |
| Adrian Barton | $14,473.57 |      $5,444.81 |

### Key finding

**Sean Miller** generated the highest sales among the top customers at **$25,043.07**, but generated a **loss of $1,980.75**.

Meanwhile, **Tamara Chand** generated less sales but significantly higher profit.

### Insight

> The customer generating the most revenue is not necessarily the most valuable from a profitability perspective. Customer analysis should therefore consider both sales and profit.

---

# 4. Discount vs Profitability

Discount levels were compared against average and total profit.

| Discount | Orders | Avg. Profit |    Total Profit |
| -------: | -----: | ----------: | --------------: |
|       0% |  4,798 |      $66.90 | **$320,987.88** |
|      10% |     94 |      $96.06 |       $9,029.21 |
|      20% |  3,657 |      $24.70 |      $90,338.16 |
|      30% |    227 |     -$45.68 |     -$10,369.34 |
|      40% |    206 |    -$111.93 |     -$23,057.08 |
|      50% |     66 |    -$310.70 |     -$20,506.51 |
|      70% |    418 |     -$95.87 | **-$40,075.46** |
|      80% |    300 |    -$101.80 |     -$30,539.13 |

### Key finding

At discounts of **30% and above**, average profit becomes negative.

The **70% discount level produced the largest total loss of $40,075.46**.

### Insight

> Higher discount levels are associated with substantially weaker profitability. Discounting should therefore be carefully managed to avoid generating sales at the expense of profit.

---

# 5. Regional Performance
| Region  |           Sales |          Profit | Profit Margin |
| ------- | --------------: | --------------: | ------------: |
| West    | **$725,457.93** | **$108,418.79** |    **14.94%** |
| East    |     $678,781.36 |      $91,522.84 |        13.48% |
| Central |     $501,239.88 |      $39,706.45 |     **7.92%** |
| South   |     $391,721.90 |      $46,749.71 |        11.93% |

### Insight

The West is the strongest-performing region, generating the highest sales ($725,457.93) and highest profit ($108,418.79), with a 14.94% profit margin.

The Central region is the main area of concern. Although it generated $501,239.88 in sales, its profit was only $39,706.45, giving it the lowest profit margin at 7.92%.

Interestingly, the South generated the lowest sales but had a higher profit margin (11.93%) than Central.

Business takeaway

The Central region should be investigated because its relatively strong sales are not translating into comparable profitability. Management could examine discounting, product mix, and operating costs in this region to identify the cause of the lower margin.

# 6. Sales Rank vs Profit Rank
| Product                               | Category        |      Sales |         Profit | Sales Rank | Profit Rank |
| ------------------------------------- | --------------- | ---------: | -------------: | ---------: | ----------: |
| Canon imageCLASS 2200 Advanced Copier | Technology      | $61,599.83 | **$25,199.94** |          1 |           1 |
| Fellowes PB500 Electric Punch         | Office Supplies | $27,453.38 |      $7,753.06 |          2 |           2 |
| Cisco TelePresence System EX90        | Technology      | $22,638.48 | **-$1,811.08** |          3 |       1,844 |
| HON 5400 Series Task Chairs           | Furniture       | $21,870.57 |          $0.00 |          4 |       1,547 |
| GBC DocuBind TL300                    | Office Supplies | $19,823.48 |      $2,233.50 |          5 |          18 |
| GBC Ibimaster 500                     | Office Supplies | $19,024.50 |        $760.98 |          6 |          99 |
| Hewlett Packard LaserJet 3310         | Technology      | $18,839.68 |      $6,983.89 |          7 |           3 |
| HP Designjet T520 Printer             | Technology      | $18,374.90 |      $4,094.98 |          8 |           5 |
| GBC DocuBind P400                     | Office Supplies | $17,965.07 | **-$1,878.17** |          9 |       1,845 |
| High Speed Electric Letter Opener     | Office Supplies | $17,030.31 |   **-$262.00** |         10 |       1,779 |


To examine product performance more deeply, products were ranked independently by **sales** and **profit** using SQL window functions.

### Insight

The rankings show that high sales do not automatically translate into high profitability.

For example, the Cisco TelePresence System ranked 3rd in sales but 1,844th in profit and generated a loss of $1,811.08.

Meanwhile, the Canon imageCLASS 2200 Advanced Copier ranked #1 in both sales and profit, making it an example of strong performance across both measures.


#  Overall Business Insights

The analysis produced five major conclusions:

### 1. Revenue ≠ profitability

Several products and customers generated substantial sales while producing low or negative profit.

### 2. Discounting can significantly reduce profit

Discount levels of 30% and above were associated with negative average profitability.

### 3. Technology contains highly profitable products

Copiers generated the highest profit among the analyzed sub-categories at **$55,617.90**.

### 4. Some high-selling products require investigation

Products such as the Cisco TelePresence System generated strong sales but negative profit.

### 5. Customer value should be measured using profit as well as sales

The highest-sales customer in the analysis generated a loss, demonstrating that revenue alone can give a misleading picture of customer value.

---

#  Tools & Technologies

**Database:** PostgreSQL
**Interface:** pgAdmin
**Language:** SQL

### SQL techniques used

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `SUM()`
* `AVG()`
* `COUNT()`
* `ROUND()`
* Date functions
* `CASE`
* CTEs
* Window functions
* `RANK()`


