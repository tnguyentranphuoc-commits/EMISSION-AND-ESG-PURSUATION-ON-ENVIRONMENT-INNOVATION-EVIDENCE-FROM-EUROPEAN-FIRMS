# EMISSION AND ESG PURSUATION ON ENVIRONMENT INNOVATION: EVIDENCE FROM EUROPEAN FIRMS
🛠️ **Tech Stack**: Stata (panel data, FGLS, PCSE, 2SLS)

---

## (i). Overview

This project examines how **ESG engagement (ESG persuasion)** and **emission performance** influence **environmental innovation** among **European listed firms**, and how these relationships are **conditioned by corporate governance quality**.

Using a **multi-country firm-level panel dataset** covering **European firms across multiple industries**, the study adopts a **progressive panel econometric framework** to distinguish:
- **Direct effects** of ESG and emissions,
- **Governance-mediated effects**, and
- **Synergy (interaction) effects** between ESG/emissions and governance mechanisms.

The analysis explicitly addresses key econometric challenges common in ESG research, including **cross-sectional dependence**, **heteroskedasticity**, **serial correlation**, and **endogeneity**.

---

## (ii). Data Description

- **Sample**: Listed firms from multiple European countries  
- **Period**: Firm-year panel (2018–2023)  
- **Source**: Refinitiv Eikon  

### Key Variables
- **Environmental Innovation (EIS)** – dependent variable  
- **ESG Composite Score (ESGC)** – proxy for ESG persuasion  
- **Emission Score (ES)** – proxy for environmental pressure/compliance  
- **Corporate Governance Indices**:
  - **CFI** – Committee Functionality Index  
  - **LPI** – Leadership Policy Index  
  - **BSDI** – Board Skills & Diversity Index  
- **Controls**: Firm age, liquidity, ownership structure, leverage  

Governance indices are constructed using **PCA-based aggregation** to reduce dimensionality and multicollinearity.

---

## (iii). Methodology

### 🔍 Pre-Estimation Diagnostics
- Descriptive statistics and pairwise correlations
- Cross-sectional dependence tests
- Multicollinearity assessment (VIF)

### 📈 Baseline Panel Models
- **OLS**, **Fixed Effects (FE)**, and **Random Effects (RE)** estimations
- Model selection via **Hausman tests**
- Diagnostics for heteroskedasticity and serial correlation

### ⚙️ Main Estimators
To ensure reliable inference, two complementary estimators are employed:
- **FGLS** – efficient under heteroskedasticity and AR(1) disturbances
- **PCSE** – robust to cross-sectional dependence and panel heterogeneity

### 🧩 Extended Specifications
- Governance-augmented models (direct effects)
- **Interaction models** capturing ESG × Governance and Emissions × Governance synergies
- Robustness checks using alternative estimators and specifications

---

## (iv). Modeling Pipeline

```text
STEP 1: Descriptive statistics & correlation analysis
→ STEP 2: Cross-sectional dependence diagnostics
→ STEP 3: OLS / FE / RE baseline estimation
→ STEP 4: Model selection and residual diagnostics
→ STEP 5: FGLS estimation (baseline relationships)
→ STEP 6: PCSE estimation (robust inference)
→ STEP 7: Governance inclusion (direct effects)
→ STEP 8: ESG × Governance and Emissions × Governance interaction models
→ STEP 9: Robustness and consistency checks

```
## (v). Main Findings (Summary)

- **ESG persuasion** is positively associated with **environmental innovation**, indicating that sustained ESG engagement supports innovative environmental outcomes.
- **Emission performance** exhibits a **constraining effect**, suggesting that compliance costs may limit innovation when governance quality is weak.
- **Corporate governance quality matters**: governance indices—especially **board skills and diversity**—enhance the effectiveness of ESG initiatives.
- **Synergy effects** reveal that ESG and governance act as **complements**, while poor governance weakens ESG-driven innovation incentives.

---

## (vi). Economic Relevance

- Demonstrates that **ESG policies alone are insufficient** without supportive governance structures.
- Highlights the need to distinguish **persuasion-driven ESG effects** from **compliance-driven emission pressures**.

**Provides insights for:**
- Corporate **board design** and **ESG strategy**
- **Policymakers** designing ESG and innovation incentives
- **Investors** evaluating ESG credibility and innovation capacity

---

## (vii). Repository Contents

- `/Stata_Script.do` – Full Stata workflow (diagnostics → OLS/FE/RE → FGLS → PCSE → interactions)  
- `/Methods and Results.pdf` – Detailed methodological exposition and empirical outputs  
- `/Dataset.dta` – Firm-level panel dataset  
- `/README.md` – Project documentation  
- `/Based Study.pdf`

—
## (viii). Citation

> **Toan N.T.P., et al. (2025)**  
> *THE IMPACTS OF EMISSION AND ESG PURSUATION ON ENVIRONMENT INNOVATION: EVIDENCE FROM EUROPEAN FIRMS.*  
> College of Economics, Law and Government – CELG 2025, University of Economics Ho Chi Minh City (UEH)

>  Based study: Mohy-ud-Din, K. (2024). ESG reporting, corporate green innovation and interaction role of board diversity: A new insight from US. Innovation and Green Development, 3(4), 100161. https://doi.org/10.1016/j.igd.2024.100161 

## (ix). License
📜 *MIT License*

## (x). Acknowledgements

This work was conducted under the **CELG 2025** - https://celg.ueh.edu.vn/celg-awards-2025/.  

## (viii). Keywords

ESG persuasion · Environmental innovation · Corporate governance · Emissions · FGLS · PCSE · European firms


