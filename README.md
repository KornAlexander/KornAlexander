# Hi, I'm Alexander Korn 👋

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/alexanderkorn/)
[![Blog](https://img.shields.io/badge/Blog-ActionableReporting.com-FFB900?style=for-the-badge&logo=microsoft&logoColor=white)](https://actionablereporting.com/)

**Solution Engineer Data Platform @ Microsoft | IBCS Certified Consultant**

---

## About Me

Helping businesses make better decisions through Actionable Reporting. Since 2016 I've been growing my Power BI experience in consulting, directly in the industry, and through the vendor perspective at Microsoft as Solution Engineer for the Data Platform. I leverage hands-on experience to support major migrations and help organizations unlock the full value of their data platforms through actionable reporting, optimized data models, and IBCS.

---

## Repositories

### 🔧 [pbi_fixer](https://github.com/KornAlexander/pbi_fixer) — Power BI Fixer for Semantic Models and Report Design

A **Python-based Power BI Fixer** that runs in Microsoft Fabric Notebooks with an interactive UI. Install with one line, launch with one line.

**11 Fixers** across two categories:
- **Report Fixers (PBIR):** Fix Pie Charts, Fix Bar Charts, Fix Column Charts, Fix Page Size, Hide Visual Filters
- **Semantic Model Fixers (XMLA):** Discourage Implicit Measures, Add Calendar Table, Add Measure Table, Add Last Refresh Table, Add Units Calc Group, Add Time Intelligence Calc Group

Three modes: Fix, Scan, Scan + Fix. Built on [Semantic Link Labs](https://github.com/microsoft/semantic-link-labs).

---

### 🧰 [PBI-Tools](https://github.com/KornAlexander/PBI-Tools) — The Power BI Toolbox

A comprehensive toolkit for Power BI development with **80+ scripts, templates, and tools**, organized into the following areas:

#### Tabular Editor Macros & Scripts

The core of this repo — **93 curated C# macros** for Tabular Editor, organized into 10 categories:

| Category | What's Inside |
|----------|--------------|
| **Measure Create** | Create explicit measures from columns, Time Intelligence (Y-1, Δ Y-1, Δ Y-1%), YTD, M-1, Replace Text in Measure |
| **Measure Modify** | Format strings, dynamic FormatStringExpression for units, set IsAvailableInMDX to false for IDs |
| **Calc Tables** | Calendar (TE2 & TE3), Empty Measure Table (TE2 & TE3), Value Parameters 1-10 |
| **Calc Groups** | Time Intelligence, Units, Time Intelligence with Value Parameter |
| **Power Query** | Create & Replace M Parameters |
| **Model Refresh** | Refresh whole model, selected tables, or partitions with Calculate |
| **Utilities** | Load BPA, DiscourageImplicitMeasures check, auto-organize into display folders, document model |
| **Community Scripts** | Official TE Library, Bernat Agulló's collection, Nordgaard's scripts |

Additional script tools:
- **PIMP Script** — PowerShell (`PIMP-Script.ps1`) and C# (`Power BI-Pimp-Script.csx`) scripts that instantly add a Date Dimension, Last Refresh Table, Time Intelligence Calc Group, and Units Calc Group to any Power BI model
- **Macro Parser & Extractor** — HTML tools to convert between `MacroActions.json` and individual `.csx` files
- **Data Model Toolbox** — HICO Data Model Toolbox macros with Stream Deck integration
- **Other MacroActions.json collections** — Curated configs from Alexander Korn, Eivind Haugen, Michael Kovalsky, and the Official TE + PBI Tips + Bernat bundle

#### IBCS

- **IBCS PBI Copilot** — Full PBIP project (dataset + report) with IBCS-compliant template
- **IBCS Power BI Generator** — Standalone .exe
- **IBCS Templates** — Adventure Works and SVG-based IBCS .pbix templates

#### Power BI Report Server (PBIRS)

- **Troubleshooting Tool** — 926-line PowerShell data collector for PBIRS diagnostics (logs, configs, service checks)
- **Monitoring Reports** — PBIRS Monitoring and Job Monitoring .pbix files
- **SQL Queries** — Catalog dimension view, unused reports detection
- **Bulk Download** — Scripts to download all items from PBIRS folders

#### Fabric & Monitoring

- **Fabric Workspace Export/Import** — PowerShell pipeline using FabricPS-PBIP to export and import workspace items
- **Notebook Gallery** — Fabric Notebook combining BPA + Memory Analyzer + Lakehouse persistence
- **VertiPaq Analyzer SQL Views** — Column, Relationship, Summary, and Table views for VertiPaq analysis

#### Templates

- **Table Templates** — Ready-to-use TMDL files: Calendar, Calendar (Calc Table), Last Refresh, Measure Table, Time Intelligence, Units
- **TMDL Repo** — Community Power Query functions (Calendar by Lars Schreiber)
- **Calculation Group Time Intelligence** — Standalone .bim template
- **LinkedIn Report Templates** — LinkedIn Connections and Ultimate LinkedIn Report .pbit files

---

### ⚡ [PowerShell](https://github.com/KornAlexander/PowerShell) — General Utility Scripts

A collection of PowerShell scripts for everyday IT automation — **not Power BI specific**:

| Category | Scripts |
|----------|---------|
| **SQL** | Deploy multiple .sql files to SQL Server with auto-archival |
| **Active Directory** | AD group member queries, recursive parent group lookup, user searches, CSV exports |
| **File Management** | Archive rotation, subfolder creation, file check + email alerts, Excel data refresh, folder listing |
| **Outlook** | Scan saved .msg files for keywords |

---

## Tech Stack

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![Tabular Editor](https://img.shields.io/badge/Tabular%20Editor-005A9C?style=flat-square&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-005A9C?style=flat-square&logoColor=white)
![IBCS](https://img.shields.io/badge/IBCS-333333?style=flat-square&logoColor=white)
![Microsoft Fabric](https://img.shields.io/badge/Microsoft%20Fabric-0078D4?style=flat-square&logo=microsoft&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=flat-square&logo=powershell&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-CC2927?style=flat-square&logo=microsoftsqlserver&logoColor=white)
![TMDL](https://img.shields.io/badge/TMDL-F2C811?style=flat-square&logoColor=black)

---

## 🎤 Public Speaking

I speak at community events about Power BI tooling, data modeling, and report server internals.

[![Sessionize](https://img.shields.io/badge/Speaker%20Profile-Sessionize-1AB394?style=flat-square)](https://sessionize.com/alexander-korn)

Past events include **Power BI Summit 2024**, **New Stars of Data 2023**, **HICO Vision-X-Future** (Frankfurt & Zürich), **Reid Havens Podcast**, and **AI or DIE Thinkers Talk** with Artur König & Marcus Wegener.
