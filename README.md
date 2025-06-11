# qcbp-eval

> Replication code for *Evaluating the Contract Features and Managerial Practices of Service-Contracted Bus Transportation: The Case of The QCity Bus Program*

This repository contains the replication files for the undergraduate research project titled **"Evaluating the Contract Features and Managerial Practices of Service-Contracted Bus Transportation: The Case of The QCity Bus Program"**, conducted at the University of the Philippines National College of Public Administration and Governance, under the supervision of Dr. Ebinezer Florano.


## 📄 Abstract

This study evaluates the efficiency, effectiveness, and sustainability of the Quezon City Bus Augmentation Program (QCBAP) under its service-contracting model, focusing on contract management dynamics between the Quezon City Government and private bus operators. Grounded in Principal-Agent Theory, the research examines how information asymmetry, monitoring mechanisms, risk allocation, and compliance influence program outcomes. Using a mixed-methods approach integrated by Structural Equation Modelling (SEM), the study analyzes Terms of Reference (TOR), ridership data, missed trip reports, and key informant interviews with Traffic and Transport Management Department (TTMD) officers, supplemented by a third-party passenger satisfaction survey. Findings reveal that compliance is contextually negotiated rather than strictly enforced, with monitoring mechanisms generating data but lacking institutional capacity for actionable enforcement. SEM highlights the strong positive effect of monitoring on sustainability and the moderate impact of reduced information asymmetry on efficiency. Challenges such as understaffing and fragmented incentive systems hinder optimal performance. While the QCBAP demonstrates potential as a replicable model for local public transport, its success depends on clearer contract provisions, robust monitoring, and aligned incentives. Recommendations include operationalizing a co-created Manual of Operations, capacity-building for TTMD, and adopting real-time monitoring tools. The research offers a structured framework for evaluating service-contracted transport systems and underscores the importance of addressing principal-agent conflicts to enhance urban mobility.

## 📁 Repository Structure

- 📂 **datasets/** — Raw and cleaned data files used in the analysis  
- 📂 **output/** — Final outputs such as tables, figures, or models  
- 📂 **summary/** — Summary statistics, regression results, or intermediate outputs  
- 📄 **ReplicationData.R** — Main script to replicate analysis and generate outputs  
- 📜 **README.md** — Project overview and replication instructions  

## 🔁 Replication Instructions

To replicate the analysis:

1. Clone the repository:
    ```bash
    git clone https://github.com/jstnyk/qcbp-eval.git
    ```
2. Navigate to the project directory:
    ```bash
    cd qcbp-eval
    ```
3. Install required dependencies (see [Requirements](https://github.com/jstnyk/qcbp-eval/tree/main?tab=readme-ov-file#-requirements-requirements)).

4. Run the main analysis script:
    ```bash
    Rscript ReplicationData.R
    ```

## 🧰 Requirements

- R version 4.5.0 (2025-04-11 ucrt)  
- R packages: `lavaan`, `psych`, `readr`, `dplyr`, `tidyr`, `ggplot2`, `semPlot`

Install packages with:
```r
install.packages(c("lavaan", "psych", "readr", "dplyr", "tidyr", "ggplot2", "semPlot"))
```

## 📊 Results Summary

*(In progress)*

## 📚 Citation

If you use this data or code, please cite:

> Bamba, A., Bondoc, B.N., Cadsawan, R.L., Lopez, J.A.C., Matibag, E.P., & Ocate, J.Y. (2025). *Evaluating the Contract Features and Managerial Practices of Service-Contracted Bus Transportation: The Case of The QCity Bus Program* \[Unpublished undergraduate research]. University of the Philippines National College of Public Administration and Governance.

## 📬 Contact

For questions or more information, please contact:

* **Name:** Justine Yuki Ocate
* **Email:** [jmocate@up.edu.ph](mailto:jmocate@up.edu.ph)
* **Institution:** National College of Public Administration and Governance, University of the Philippines Diliman

*This repository is maintained as part of an undergraduate research project. For academic or teaching use only.*
