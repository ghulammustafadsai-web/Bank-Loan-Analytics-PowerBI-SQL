#  Bank Lending Analysis Project  

![Status](https://img.shields.io/badge/Project-Completed-brightgreen)
![Domain](https://img.shields.io/badge/Domain-Banking%20Analytics-blue)
![Data%20Size](https://img.shields.io/badge/Data-Loan%20Portfolio-orange)
![Tool-SQL](https://img.shields.io/badge/Tool-SQL-4479A1)
![Tool-PowerBI](https://img.shields.io/badge/Tool-Power%20BI-F2C811)
![Tool-Excel](https://img.shields.io/badge/Tool-Excel-217346)
![Focus-Risk%20Analysis](https://img.shields.io/badge/Focus-Risk%20Management-red)

---

## 📑 Table of Contents
1. [Project Background](#1-project-background)
2. [Data Set Overview](#2-data-set-overview)
3. [Executive Summary](#3-executive-summary)
4. [Key Insights](#4-key-insights)
5. [Recommendations and Impact](#5-recommendations-and-impact)
6. [Tools](#6-tools)
7. [Author](#7-author)
8. [Project Highlights](#project-highlights)
9. [How to Use](#how-to-use)
10. [Folder Structure](#folder-structure)
11. [Contact](#contact)

---

## 1. Project Background
This project was born out of a simple need: the bank wanted to stop guessing and start knowing. In the past, lending decisions were often based on intuition, making it hard to see if our strategies were actually helping the bank grow or putting our money at risk.

By looking at our historical data, we set out to build a "health monitor" for our loans. We wanted to see the real stories behind the numbers—why people are borrowing, if they can afford their payments, and how we can better support them while keeping the bank’s finances safe.

## 2. Data Set Overview

This project uses a real-world lending dataset tracking loans from application through repayment.  
Each row represents one loan and includes customer background, loan characteristics, credit behavior, and repayment activity.  

The dataset helps answer key questions like:  
- Who is borrowing and why?  
- Which loans are likely to default?  
- How do income, interest rates, and debt levels affect repayment?  
- Where are risks increasing across regions and time?  

<details>
<summary>📊 Click to expand: Data Model & Column Details</summary>

| Column                  | Description |
|-------------------------|-------------|
| id                      | Unique identifier for each loan. |
| member_id               | Internal system ID for tracking borrowers. |
| address_state           | U.S. state of the borrower. |
| application_type        | Loan application type (Individual or Joint). |
| emp_length              | Years of employment. |
| emp_title               | Borrower’s job title. |
| home_ownership          | Own, rent, or mortgage status. |
| grade                   | Credit quality category. |
| sub_grade               | Detailed risk category within the main grade. |
| issue_date              | Date the loan was issued. |
| term                    | Loan length (36 or 60 months). |
| loan_amount             | Principal loan amount. |
| int_rate                | Interest rate charged. |
| installment             | Expected monthly repayment. |
| annual_income           | Borrower’s declared yearly income. |
| verification_status     | Whether income was verified. |
| dti                     | Debt-to-Income ratio. |
| purpose                 | Loan purpose (e.g., debt consolidation). |
| loan_status             | Current loan performance (paid, current, late, defaulted). |
| total_acc               | Total number of credit accounts. |
| total_payment           | Total amount repaid so far. |
| last_payment_date       | Date of the most recent payment. |
| next_payment_date       | Scheduled next payment date. |
| last_credit_pull_date   | Most recent date credit was checked. |

**Data Model Screen Shote**

<img width="445" height="308" alt="MODEL" src="https://github.com/user-attachments/assets/9bd1b175-4d4a-48d3-be18-efd7d7f8777e" />


</details>



## 3. Executive Summary
At its heart, this project is about making the bank smarter and more helpful to its customers. We realized that to succeed, we needed to move away from old-school guesswork and use real evidence to guide our choices.

This report shows that the bank is currently in a strong position, with most of our customers being reliable and paying back their loans on time. However, we also identified a specific group of loans that aren't performing well, which represents a risk to our capital. By watching our "vital signs"—the flow of money in and out—we can now spot problems early. The goal is simple: ensure that every loan we give out is affordable for the person borrowing it and a safe bet for the bank.

<details>
<summary>📊 Click to expand: Dashboard Overview</summary>
   
**Dashboard-1: Summary Dasboard**

<img width="639" height="319" alt="d1" src="https://github.com/user-attachments/assets/1142bf1b-057d-444a-beca-594dcb3dbff9" />

**Dashboard-1: Overview Dasboard**

<img width="626" height="344" alt="D2" src="https://github.com/user-attachments/assets/b19af33b-3ad9-4f51-8431-367a34f0bb67" />

**Dashboard-1: Details Dasboard**

<img width="626" height="344" alt="D3" src="https://github.com/user-attachments/assets/25cbada0-9184-44a9-8b80-adc22d887359" />

</details>

## 4. Key Insights
-  High Demand: The bank saw a total of 38.6K loan applications, showing that many people are looking to us for financial help.
-  Good loans: 86.1% of our loans are in great shape, meaning the majority of our customers are staying on top of their payments.
-  Bade loans: About 13.9% of loans have run into trouble, helping us pinpoint exactly where we need to be more careful.
-  Money in Motion: We handed out 435.8M and have successfully collected back 473.1M so far.
-  Real Needs: Most people are borrowing to simplify their finances through debt consolidation or to improve their homes.
-  Monthly Momentum: Our lending activity is growing by 6.9% month-over-month, showing that the bank is becoming more active.
-  Affordability: The average interest rate is 12.0%, and we are keeping a close eye on debt levels to make sure customers aren't overwhelmed.

## 5. Recommendations and Impact
-  Smart Lending Rules: We should use our data to be more selective with high-risk applicants.  

  **Impact:** This protects the bank’s money and prevents customers from taking on debt they can't manage.

-  Support Customer Goals: Since so many people borrow to consolidate debt, we should create a special loan plan just for them.  

  **Impact:** This makes the bank more helpful to our community and increases our number of "good" loans.

-  Reward Stability: We should offer better rates to people with steady, long-term jobs.  

  **Impact:** This encourages loyalty and focuses our business on the most reliable borrowers.

-  Quick Responses: If our monthly data shows that collections are slowing down, we should act immediately.  

  **Impact:** Early action keeps small problems from turning into big losses.

## 6. Tools
-  SQL: Used to dig through the raw data, clean it up, and calculate our monthly growth and risk levels.
-  Power BI: Used to create the visual reports that let us see geographic trends and human factors at a glance.
-  Excel: Used for the early stages of the project to organize requirements and plan our data strategy.

## 7. Author
[Ghulam Mustafa]Google Certified Data Analyst 

---

## Project Highlights
✔ Data-driven risk monitoring  
✔ Clear visibility into Loan performance  
✔ Early detection of default patterns  
✔ Actionable recommendations for lending policies  

---

## How to Use
- Clone the Repositary or Download the Repostary
- Open The The downloaded files 
- Explore filters (region, loan purpose, status, etc.).
- Review insights and compare loan performance trends.
- Use recommendations to guide lending strategy discussions.
  ---
  ## 📞 Contact Information

If you have any questions, suggestions, or would like to connect regarding this project, feel free to reach out:

- **Name:** Ghulam Mustafa  
- **Email:** ghulammustafa.ds.ai@gmail.com  
- **LinkedIn:** [linkedin.com/in/yourprofile](www.linkedin.com/in/ghulam-mustafa-data-analyst)  
- **GitHub:** [github.com/yourusername](https://github.com/ghulammustafadsai-web)  

I am always open to collaboration, feedback, or discussing data analytics and lending projects.  




