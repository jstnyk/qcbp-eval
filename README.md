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
Summary of Findings and Matrix of Conclusions

| Research Questions                                                                                                                                                                                              | Proposition/s                                                                                                                                                                                                                       | Key Findings                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| To what degree does the QCBAP, through its current contract management scheme, meet its objectives of being a reliable, safe, comfortable, and convenient public transportation service?                        | The degree of information asymmetry between the QCBAP management and the bus operators, determining the Terms of Reference’s clarity of provisions, influences the compliance of the agent to fulfill the target levels of service. | - Agent compliance is shaped by contextual flexibility rather than strict enforcement of contractual terms.<br>    <br>- Monitoring systems generate performance data but lack the institutional capacity to translate it into effective regulatory action.<br>    <br>- Information asymmetry grants administrators control but limits their ability to ensure agent accountability.<br>    <br>- The TOR articulates broad values but lacks operational specificity, weakening enforceability.<br>    <br>- Organizational complexity and competing priorities lead to compliance being managed relationally, not systematically enforced.                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| How do the existing monitoring and evaluation mechanisms under the service-contracting model for the QCity Bus enhance the program's overall implementation?                                                    | The existing monitoring mechanisms for the service contracting model of the QCBAP enhance the program's enforcement of guidelines.                                                                                                  | - Existing monitoring mechanisms primarily come in the form of issuances and validation of trip trickers, inspections, filing of incident reports, and dialogues with bus companies or operators. <br>    <br>- Challenges in implementing monitoring mechanisms arise from the need to balance the enforcement of guidelines and the continuity of bus operations at efficient levels. <br>    <br>- Existing monitoring mechanisms enhance and aid in the enforcement of guidelines for the program’s overall implementation. <br>    <br>- Monitoring significantly has a positive effect on sustainability and a moderate effect on efficiency.<br>    <br>- External factors beyond the control of bus drivers and conductors have to be taken into account to ensure fair enforcement of monitoring mechanisms.                                                                                                                                                                                                                                                                                             |
| What are the key challenges and opportunities associated with granting local governments like Quezon City the authority to operate and manage their own transport services through a service contracting model? | The ability of local governments to operate and manage their own transport services via service contracting models is constrained by the risk allocation between the QCBAP management and bus operators.                            | - Risk management based on the TOR sufficiently meets clarity of provisions and thus may not be the sole factor and or most influential in terms of compliance, particularly for following scheduled trips<br>    <br>- The visibility of clearly defined and developing provisions shows that the LGU’s risk management is competent enough<br>    <br>- QC LGU’s implementation of the QCBAP has been dynamic and consistent in adapting to changing circumstances.<br>    <br>- Asymmetric power dynamics persists as negotiations occur as one-sided directives from the management, but this can be balanced because of management’s openness to communication.<br>    <br>- There is limited managerial control over bus drivers and conductors who are not directly employed by the QC government.<br>    <br>- The procurement process serves as a safeguard including strict eligibility criteria to guarantee a baseline level of competence and operational capacity of contractors.<br>    <br>- Informal communication between the management and operators provides flexibility during emergencies. |
## 📚 Citation

If you use this data or code, please cite:

> Ocate, J.Y., Lopez, J.A.C., Bamba, A., Bondoc, B.N., Cadsawan, R.L., & Matibag, E.P. (2025). *Evaluating the Contract Features and Managerial Practices of Service-Contracted Bus Transportation: The Case of The QCity Bus Program* \[Unpublished undergraduate research]. University of the Philippines National College of Public Administration and Governance.

## 📬 Contact

For questions or more information, please contact:

* **Name:** Justine Yuki Ocate
* **Email:** [jmocate@up.edu.ph](mailto:jmocate@up.edu.ph)
* **Institution:** National College of Public Administration and Governance, University of the Philippines Diliman

*This repository is maintained as part of an undergraduate research project. For academic or teaching use only.*
