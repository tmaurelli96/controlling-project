# Financial & Performance Controlling System – PostgreSQL

---

## 🎯 Executive Summary

### 🇮🇹 Italiano

Questo progetto simula un sistema strutturato di **Financial & Performance Controlling** sviluppato in PostgreSQL, con l’obiettivo di riprodurre dinamiche aziendali realistiche e analisi tipiche di ruoli come Controller, FP&A o Business Analyst.

Il focus è sulla trasformazione di dati economico-finanziari in insight utili al processo decisionale, attraverso modellazione coerente, analisi delle varianze e valutazione della performance.

---

### 🇬🇧 English

This project simulates a structured **Financial & Performance Controlling** system built in PostgreSQL, designed to replicate realistic corporate dynamics and analytical scenarios typical of Controller, FP&A and Business Analyst roles.

The main focus is converting financial data into decision-support insights through consistent data modeling, variance analysis and performance evaluation.

---

## 🏗 Data Architecture & Modeling

### 🇮🇹 Italiano

Il database riproduce una struttura aziendale multi-livello, includendo:

- Cost Centers  
- Business Units  
- Projects  
- Suppliers  
- Purchase Orders  
- Budgets, Actuals and Forecast  
- Revenues and Cost Allocation  

La modellazione include:

- Primary & Foreign Keys coerenti
- Vincoli di integrità referenziale
- Controlli su coerenza importi e periodi
- Struttura pensata per analisi multidimensionale

L’architettura è progettata per garantire consistenza, tracciabilità e scalabilità analitica.

---

### 🇬🇧 English

The database replicates a multi-level corporate structure including:

- Cost Centers  
- Business Units  
- Projects  
- Suppliers  
- Purchase Orders  
- Budgets, Actuals and Forecast  
- Revenues and Cost Allocation  

The model includes:

- Consistent primary and foreign keys  
- Referential integrity constraints  
- Data validation controls  
- A structure designed for multidimensional analysis  

The architecture aims to ensure consistency, traceability and analytical scalability.

---

## 📊 Analytical Framework

### 🇮🇹 Italiano

Le analisi implementate riflettono logiche tipiche di controlling:

- Budget vs Actual variance analysis (absolute and % deviation)
- Analisi marginalità per BU e progetto
- Ranking centri di costo critici
- Identificazione di cost overrun su progetti
- Analisi concentrazione fornitori e spesa procurement
- Trend mensili e analisi evolutiva performance

L’obiettivo è evidenziare driver di performance, aree di rischio e inefficienze operative.

---

### 🇬🇧 English

The analytical layer reflects real-world controlling logic:

- Budget vs Actual variance analysis (absolute and % deviation)
- Margin analysis by Business Unit and project
- Ranking of critical cost centers
- Project cost overrun identification
- Supplier concentration and procurement spending analysis
- Monthly performance trend evaluation

The goal is to highlight performance drivers, risk areas and operational inefficiencies.

---

## ⚙ Technical Approach

### 🇮🇹 Italiano

Dal punto di vista tecnico, il progetto include:

- Modellazione relazionale strutturata
- Strategia di indicizzazione su chiavi analitiche
- Query modulari con CTE e aggregazioni avanzate
- Report tramite viste e viste materializzate
- Analisi execution plan per ottimizzazione performance

L’implementazione privilegia chiarezza, leggibilità e replicabilità.

---

### 🇬🇧 English

From a technical standpoint, the project includes:

- Structured relational data modeling
- Indexing strategy for analytical keys
- Modular queries using CTEs and advanced aggregations
- Reporting through views and materialized views
- Execution plan analysis for performance optimization

The implementation prioritizes clarity, maintainability and analytical robustness.

---

## 🚀 Project Purpose

### 🇮🇹 Italiano

Questo progetto rappresenta un laboratorio personale per consolidare competenze in ambito controlling e analisi finanziaria, integrando modellazione dati e ragionamento manageriale in un unico framework coerente.

---

### 🇬🇧 English

This project serves as a structured laboratory to consolidate controlling and financial analysis skills, integrating data modeling and managerial reasoning into a coherent analytical framework.
