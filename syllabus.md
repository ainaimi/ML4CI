---
layout: page
title: Syllabus Updated %%current_date_yyyymm%%
permalink: /syllabus/
header-includes:
  - \usepackage{hyperref}
  - \hypersetup{colorlinks=true,urlcolor=blue}
output:
  pdf_document
---

[Download a pdf copy of syllabus](../syllabus.pdf)

## Basic information

__DEPARTMENT:__ Epidemiology

__COURSE NUMBER:__ TBD                                          

__COURSE TITLE__: Machine Learning for Causal Inference

__CREDIT HOURS__: 2 

__SEMESTER__: Fall %%current_date_yyyy%%

__CLASS HOURS AND LOCATION__: TBD

__INSTRUCTOR NAME:__ Ashley I. Naimi

__INSTRUCTOR CONTACT INFORMATION__
* __EMAIL__: ashley.naimi@emory.edu 
* __SCHOOL ADDRESS OR MAILBOX LOCATION__: CNR 4013
* __OFFICE HOURS__: By Appointment

__TEACHING ASSISTANT INFORMATION__: 
* __NAME__: TBD
* __EMAIL__: TBD
* __OFFICE HOURS__: TBD (location: TBD)
 

## COURSE DESCRIPTION

This doctoral level course is focused on the use of machine learning methods for estimating cause-effect relations in observational and randomized trial data. This topic differs from more traditional introductory or intermediate level machine learning courses, which are often focused specifically on predictive analytics. In this course, we will cover why inference (statistical and causal) is a challenge when machine learning methods are used to estimate causal effects and obtain valid inference statistics. 

By the end of this course you should have a solid understanding of:

-  The challenges of estimating causal effects with data.
-  When/why one should use machine learning to estimate causal effects.
-  The curse of dimensionality and how double robust methods can be used to "lift" the curse.
-  Different types of double robust estimators (targeted minimum loss based estimation, augmented inverse probability weighted estimators, double debiased machine learning estimator).
-  How to estimate causal effects with machine learning methods using R

The literature on ML and causal inference is very expansive and complex. There are some key essential concepts that are not easy to understand for those with little to no formal technical background. The purpose of this course is to help you with your efforts in filling this gap.

This **is an applied course.** We will focus extensively on R code, what it is doing, and how it is related to some of the theoretical considerations we will cover. Some theoretical concepts will be introduced, but in a very accessible, intuitive format. 

This is a 2 credit hour course. Each credit hour amounts to 14 contact  which equates to 28 hours of class-room learning and 

## PRE-REQUISITES

This course will build on basic and intermediate analytic methods and causal inference concepts covered in [EPI 545](https://sph.emory.edu/academics/courses/epi-courses/index.html), [EPI 560](https://sph.emory.edu/academics/courses/epi-courses/index.html) and [EPI 760](https://sph.emory.edu/academics/courses/epi-courses/index.html). 

Necessary skills and concept include: reading data into R, basic data cleaning in R (e.g., subsetting data, finding missing values, merging data), operating on data.frames (e.g., changing column names, row names, summarizing rows/columns of data using simple statistics), basic graphics (e.g., plot or ggplot2), marginal standardization (g computation, parametric g formula), inverse probability weighting, basic causal estimands (average treatment effect, effect of treatment on the treated), and identifiability.

## COURSE LEARNING OBJECTIVES

* Understand the basic causal roadmap of picking a suitable estimand and estimator for a given research question.
* Understand the curse of dimensionality and bias-variance tradeoffs.
* Understand why a double-robust estimator mitigates problems introduced by the curse of dimensionality.
* Understand the difference between TMLE and AIPW.
* Understand how stacking (SuperLearner) combines several machine learning algorithms into a single meta-algorithm.
* Deploy stacking in R using the `SuperLearner` and `sl3` packaages.
* Deploy TMLE and AIPW in R using the `tmle`, `tmle3` and `AIPW` packages.
 
## ATTENDANCE POLICY

In person attendance in this short course is expected.

## EVALUATION

### Assignments

There will be one final project to be completed at home. There will also be three short in class exercises over the course of the term. 

### Grade scale

This course will be graded as Satisfactory(S)/Unsatisfactory(U) for all students.
 
## COURSE STRUCTURE

This short course will consist of a combination of in class lectures, in class exercises, and at home assignments. Students will be expected to have R and RStudio installed and working on their computers. In addition, the following packages should be installed and in working order:

```
"tidyverse", "here", "sandwich", "lmtest", "boot", "ranger", "ggplot2", "broom", "SuperLearner", "tmle", "AIPW", "ranger", "xgboost", "e1071", "nnet", "glmnet", "remotes"
```
 
You will also have to install the `tlverse` library, which is available only on GitHub. The best way to do this is to use the `install_github()` function in the `remotes` package. However, you will have to address the potential GitHub API limits, which can lead to installation errors. To deal with this problem, you will need your own GitHub account. 

The easiest way to address this issue is to use a Github personal access token (PAT). There are a number of ways to do this, and it's important to [read the basic information on PATs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token). Within R and RStudio, one straightforward way to manage PATs is to install and use the `usethis` package, which has a suite of functions available for creating and integrating PATs. Once you've installed `usethis`, you can:

- Use `usethis::browse_github_pat()` to create a GitHub token

- Use `usethis::edit_r_environ()` and add the environment variable by adding the following line to the R environment file: `GITHUB_PAT = 'your_github_token'`.

- Restart R (so that the GITHUB_PAT is read) and try to reinstall the packages that were resulting in the API limit error.

Be aware: **your Github PAT is a password, and should be treated as such.**

### Health considerations

At the very first sign of not feeling well, stay at home and reach out for a health consultation. Please consult the campus FAQ for how to get the health consultation. As you know, Emory does contact tracing if someone has been diagnosed with COVID-19. A close contact is defined as someone you spend more than 15 minutes with, at a distance less than 6 feet, not wearing facial coverings. This typically means your roommates, for example. 

## RSPH POLICIES

__Accessibility and Accommodations__ 

Accessibility Services works with students who have disabilities to provide reasonable accommodations. In order to receive consideration for reasonable accommodations, you must contact the Office of Accessibility Services (OAS). It is the responsibility of the student to register with OAS. Please note that accommodations are not retroactive and that disability accommodations are not provided until an accommodation letter has been processed.

Students who registered with OAS and have a letter outlining their academic accommodations are strongly encouraged to coordinate a meeting time with me to discuss a protocol to implement the accommodations as needed throughout the semester. This meeting should occur as early in the semester as possible.

Contact Accessibility Services for more information at (404) 727-9877 or accessibility@emory.edu. Additional information is available at the OAS website at http://equityandinclusion.emory.edu/access/students/index.html

## Honor Code
You are bound by Emory University’s Student Honor and Conduct Code. RSPH requires that all material submitted by a student fulfilling his or her academic course of study must be the original work of the student.  Violations of academic honor include any action by a student indicating dishonesty or a lack of integrity in academic ethics. Academic dishonesty refers to cheating, plagiarizing, assisting other students without authorization, lying, tampering, or stealing in performing any academic work, and will not be tolerated under any circumstances.

The [RSPH Honor Code](http://www.sph.emory.edu/cms/current_students/enrollment_services/honor_code.html) states: "*Plagiarism is the act of presenting as one's own work the expression, words, or ideas of another person whether published or unpublished (including the work of another student). A writer’s work should be regarded as his/her own property.*" 

## Laney Academic Integrity Statement 

You are expected to uphold and cooperate in maintaining academic integrity as a member of the Laney Graduate School. By taking this course, you affirm your commitment to the Laney Graduate School Honor Code, which you can find in the Laney Graduate School Handbook. You should ensure that you are familiar with the rights and responsibilities of members of our academic community and with policies that apply to students as members of our academic community. Any individual, when they suspect that an offense of academic misconduct has occurred, shall report this suspected breach to the appropriate Director of Graduate Studies, Program Director, or Dean of the Laney Graduate School. If an allegation is reported to a Director of Graduate Studies or a Program Director, they are in turn required to report the allegation to the Dean of Laney Graduate School. 

## COURSE CALENDAR AND OUTLINE

| Monday  (6hrs)  | Estimands in Time-Fixed and Longidutinal Settings; Identification Bias versus Estimation Bias, Regression for Effect Estimation: Outcome Modeling and Propensity Scores, Loss Functions, Bias-Variance Tradeoff, Curse of Dimensionality;  |
| Tuesday (6hrs) | Some History: Slow Convergence and Complexity Issues; Introduction to Double-Robustsness: Intuition and a Worked Example; Introduction to Cross-Fitting (Sample Splitting); Augmented Inverse Probability Weighting; Targeted Minimum Loss-Based Estimation; Double Debiased Machine Learning; Heterogeneous Treatment Effects: T-Learner, S-Learner, X-Learner, R-Learner, DR-Learner, Causal Forests |
| Wednesday (6hrs) | Fitting the Outcome Model and Propensity Score; The Super Learner: Intuition and a Worked Example; Choosing Level-0 Algorithms; Tuning Level-0 Algorithms in the Super Learner; Screening Algorithms; Design Matrices in the Super Learner; The Cross-Validated Super Learner; `SuperLearner` versus `CV.SuperLearner` versus `sl3` |
| Thursday (6hrs)  |  Putting it all together: Estimating the ATE, ETT, ETU with TMLE and AIPW, Worked Examples; Estimating CATEs with the DR-Learner (versus Causal Forests), Worked Examples |
| Friday  (5hrs)  | Longitudinal Data and LTMLE: Worked Examples; Where should you go from here? Current and future research questions |
