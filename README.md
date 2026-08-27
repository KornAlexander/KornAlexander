# Hi, I'm Alexander Korn 👋

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/alexanderkorn/)
[![Blog](https://img.shields.io/badge/Blog-ActionableReporting.com-FFB900?style=for-the-badge&logo=microsoft&logoColor=white)](https://actionablereporting.com/)

**Solution Engineer Data Platform @ Microsoft | IBCS Certified Consultant**

---

## About Me

Helping businesses make better decisions through Actionable Reporting. Since 2016 I've been growing my Power BI experience in consulting, directly in the industry, and through the vendor perspective at Microsoft as Solution Engineer for the Data Platform. I leverage hands-on experience to support major migrations and help organizations unlock the full value of their data platforms through actionable reporting, optimized data models, and IBCS.

---

## Repositories

### 🧊 [Fabric-Apps](https://github.com/KornAlexander/Fabric-Apps) — 15 Fabric Apps: 3D twins, real-time maps, games and admin tools

Fifteen **Fabric Apps** in one repository — pro-code React apps that run *inside* Microsoft Fabric, signed in with your Fabric identity and reading from Lakehouse, Eventhouse or Direct Lake. Each app has its own README with a deploy path you can follow on your own tenant, a preview image, and in most cases a short demo.

| Category | Apps |
|----------|------|
| **Digital twins** | Airport IQ - Live Approach, Flood Insights, Harbour Pulse, Helsinki Public Transport, Maritime Insights, Paragliding Insights |
| **Analytics** | Climate Spiral, Higher Education Race Chart |
| **Fabric tools** | Data Catalog, Governance Hub, Power BI Fixer |
| **Games & learning** | Doom, Fabric Empires, IBCS Trainer, Jump and Run |

The 3D apps are built entirely from **open geodata** — 1 m DGM1 terrain and LoD2 buildings, Copernicus DEM, OpenStreetMap, official orthophoto drapes. None of that is committed: each app rebuilds its own terrain from a documented pipeline, so the repository stays small and the sources stay verifiable.

Two of the apps are not mine, and are credited as such in the repository: **Harbour Pulse** is [Fran Genoa](https://github.com/FranGenoa)'s project, and **Doom** is entirely [Sander van de Velde](https://github.com/sandervandevelde)'s — [sandervandevelde/Play-Doom-On-Microsoft-Fabric](https://github.com/sandervandevelde/Play-Doom-On-Microsoft-Fabric).

---

### 🚀 [Fabric-Demos](https://github.com/KornAlexander/Fabric-Demos) — End-to-end Microsoft Fabric Demos

A collection of **end-to-end Microsoft Fabric demos** with one-click installers. Each demo follows the same architecture pattern — **REST API → Lakehouse → Direct Lake → Power BI** — so the code is reusable for any data source.

Every demo ships two installer flavours that share the same `install()` function and produce identical results — create a folder, create the Lakehouse, then patch and POST every dependent item (notebooks, pipeline, semantic model, report, data agent) to the Fabric REST API:

- **`Install-<demo>.ipynb`** — import into your Fabric workspace and *Run All*. Authenticates via `notebookutils`, auto-detects the current workspace. No local Python, no `az login`, no env vars.
- **`Install-<demo>.py`** — run from your laptop. Authenticates via `azure-identity` (`DefaultAzureCredential` — picks up `az login`, VS Code, env vars, or interactive browser).

No secrets are stored in the repo — API tokens are supplied at install time and only injected into the payload locally before being sent to Fabric.

| Demo | What's Inside | Data Source |
|------|---------------|-------------|
| **Hochschul-Insights** | German higher-education statistics (Studierende, Personal, Finanzen) with an 8-page Power BI report, Direct Lake semantic model, and natural-language Data Agent | DESTATIS GENESIS REST API |

More demos coming soon.

---

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

### 🧪 More

- **[fabric_developer_hub](https://github.com/KornAlexander/fabric_developer_hub)** — GitHub Pages site for the Fabric Developer Hub workload (mirror of `LukaszObst/fabric_developer_hub/docs`).
- **[jump-and-run](https://github.com/KornAlexander/jump-and-run)** — Browser-based jump-and-run game (HTML/JS).
- **[semantic-link-labs](https://github.com/KornAlexander/semantic-link-labs)** *(fork)* — Working fork of [microsoft/semantic-link-labs](https://github.com/microsoft/semantic-link-labs); contributing new fixers like `fix_whole_number_format()` upstream.
- **[fabric-toolbox](https://github.com/KornAlexander/fabric-toolbox)** *(fork)* — Working fork of the Fabric CAT toolbox.
- **[Fabric-Notebooks](https://github.com/KornAlexander/Fabric-Notebooks)** — A public collection of Microsoft Fabric notebooks and utilities for Power BI report fixing, semantic model tooling, and data integration.

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
