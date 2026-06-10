# **Project Brief: Greenfield Land Intelligence ("Geodesix")**

This document outlines the core question, project specifications, architectural ideas, and ultimate goals developed for our early-stage greenfield city feasibility engine.

## **1\. The Core Question**

*"How do we systematically, programmatically, and qualitatively filter rural counties to find the absolute 'path of least resistance' for building a brand-new, master-planned, mixed-use city from scratch?"*

We want to solve the problem of traditional land acquisition, where developers fall in love with cheap land and work backward to justify it. Instead, we are building an **Elimination Engine** that kills unviable options quickly and cheaply.

## **2\. Project Specifications & Core Modules**

The project is structured around a **7-Part Meta-Framework** designed to be applicable to any county in any state, with a specific focus on the Intermountain West (Nevada, Utah, Wyoming, South Dakota) and emerging markets (North Carolina).

### **Module A: The Elimination Funnel (Phase-Gate Protocol)**

Instead of executing a single, massive, expensive feasibility study, the engine runs a time-boxed, phased pipeline where the goal of each stage is to **kill the candidate county**:

1. **Screen (2 Hours):** Desktop research on water basin status, county zoning existence, and major geographical barriers.  
2. **Filter (1 Day):** Qualitative "vibe checking" via planner calls, EDO outreach, and meeting minute analysis.  
3. **Validate (1 Week):** GIS corridor mapping, infrastructure cost estimation, and local capacity studies.  
4. **Commit (1 Month):** Securing purchase options, mapping political veto players, and draft development agreements.

### **Module B: The 5-Layer Feasibility Matrix**

We evaluate every candidate across five key operational layers:

* **Resource:** Water rights, aquifer health, and off-grid utility loops.  
* **Regulatory:** County zoning code, PUD overlays, state-level environmental overrides.  
* **Economic:** Infrastructure extension costs, local EDO sentiment, and fiscal impact modeling.  
* **Technical:** Road network gravity, high-voltage grid tie-ins, construction labor pools.  
* **Social:** Cultural compatibility, local growth attitudes, housing affordability.

### **Module C: The Vibes-to-Data Translation Layer**

We systematize "mostly-vibes" qualitative signals (e.g., calling EDOs, watching planning board recordings) into measurable data points:

* **Roads vs. Land Use Disputes:** Analyzing meeting minutes to see if the county is focused on utility maintenance (good) or micromanaged zoning fights (bad).  
* **Historical Capacity:** Checking if the county has successfully processed any project ![][image1] in the last decade.  
* **Meeting Frequency:** Preferring monthly/bi-monthly schedules over highly litigious weekly meetings.

### **Module D: The Programmatic Execution Engine**

To scale this search, we are building a Python-based data pipeline that:

* **Locates Zoning Code Hosts:** Standardizes scraping across Municode, Code Publishing, and county-hosted PDFs.  
* **Leverages ArcGIS REST Services:** Pulls county zoning shapefiles directly from GIS map servers to bypass text scraping entirely.  
* **Parses via Local LLMs:** Uses semantic text extraction on zoning files to identify setbacks, PUD requirements, and allowed uses.  
* **Queries State Water Databases:** Automatically checks basin-level appropriation limits and water-right protest logs.

## **3\. The Core Heuristics (The Rules We Live By)**

* **Kill-Rate Ordering:** Evaluate candidates by vulnerability, not preference. *Fall in love at Layer 5 (Infrastructure), but kill the project at Layer 1 (Water).*  
* **The Infrastructure Multiplier (![][image2]):** Land cost and offsite infrastructure cost are a single, inseparable variable:  
  $$ \\text{Total Acquisition Cost} \= L\_c \+ I\_c $$  
  Cheap land far from the grid is often a financial trap.  
* **The Scale-Threshold Heuristic:** If your projected population size shocks the local population equilibrium (e.g., adding 50,000 residents to a county of 500), you will trigger an aggressive "anti-colonization" political shift. Enter below their historic threshold and grow incrementally.  
* **The Optionality Preservation Rule:** Never let your search collapse to a single county. Maintain parallel negotiations and purchase options in at least two, and ideally three, distinct jurisdictions to preserve your ultimate leverage: the ability to walk away.

## **4\. What We Want (The Project Outcome)**

1. **The Playbook:** A finalized, highly coherent strategy document (greenfield\_feasibility\_framework.md) that outlines our philosophy and checklists. (Complete)  
2. **The Codebase Name:** A unique, professional name that avoids namespace conflicts with common developer libraries:  
   * **Selected Candidate:** **geodesix** (or geodesix-engine)  
   * *Why:* Direct mathematical play on the "shortest path of least resistance," while cleanly avoiding the major namespace clashes associated with geodesic (Docker tools) and tabula (PDF parsing engines).  
3. **The Software Repository:** A modular codebase featuring spatial GIS pipelines, local LLM-powered zoning document scrapers, and state-level water database integration scripts.

[image1]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGYAAAAZCAYAAADDq1t2AAAFEElEQVR4Xu2Ya4iVRRjHz8tu0M2y2m3b25lzdreWpTDhUItRsYiRi2ykXYhc6oOQIPipMgiiQiUKNJIsqCT6EAVJF2qRUFAzQtoQgt36oNGFMjQUCg1Ksn7/MzNnx8n33DY/tLx/+DPvPPPMM5dn5pmZN5fLkCFDhgwZ/r9oyefz9xZAXCD09PRcYIy5H74CnysWi4OxDkioPkz5FvgSXIasJVbKUAOabJwxxmS+wCT+BE+SL8V6fX19l1K2E65vb2+/GP2FfH8F7wrUEuqug3uRF7u7u68gfVOOLJVK5wV6cw9MyPliLG8WbheMYnOECX0yzTHIHqNskvQyLyO/En7NzulwOiXyR0hvDur1Ifse+0u9bE7CDXQnA31WKzIunw3c5P/LMXKGnEKbb4Ty3t7eG5CfIL1Deb43ygmw0+sMDg7OI78PG6+TTSqV5ygSVukCBrwDboPFWKEZpDkG2RA8FjvG7ZCTcoh2MelE7BiFPfJ7TLTbYriwtxw7T6N3T5VFp3OwJD301zAP1+fsuab2O7Xz4bCzN9rV1dUbVh4YGLiE+uOUPeF2dnj+JYTsa6i/Gj7oxn1TUF4/dABT+R0x5TCuG2mO8Q5Ic4zkgQPSHHOGPAR2rqXsF0UB6ZB/gPQIXBHqUX4Vsl1wQg4hfyffp+DDri9T8G+4XzsUfiy7sq/6fC+GB539IdIPSHfo/KQ44XsT3IBTe3x5POaGgaEi3IahT7Rick2EjSqOGdOA406GjiHtNHbyG3YM8kXwD/iaE2mSXoTfcQZ2S6DLgybbBGca7Y6Q/wtuUj5o6yj1rkZ/LdyridbOQX6QOk+5NhSKr0N2DK6STdIDCs++3NgdU7Y9axg7QVubcVCaY5CNmhqOcQP7xjThGJAwkZeHN7e4L74tuGWmWvkWqPBYDkdBW3v0HejJiauRn0Z/iZf580/9x3FtfE/DKXTG5Uz1RzqhnVlB8RXjL9PIpzRaiMvTEE9GID+noUxw4WOrsc5VuPoi7Eve7Vr1Ma7rUcMx2tWn4XvGvsNCrpIO6TK1qXYcD1FvYWinKRi7WxQCdje6W4QqjtFN8Oc0x8DHybaSbjfpjtmXtvqwezvlJ+BmXd8li/vSiGPifgrGPnhP5YOr/NlQsM+RkYI9736FU/39/VfGenXB2PPlVfgRIWVBrkGHeMST4RFM7oQ6HugvQfanUpdXfcXsIa8ThIgwBFUge7JrgrND8H1BdivpI3l7QfgRbqe41esp3LhV3VrNMciWGrtjVoZyHfy0caOxN7ryzvdlnDe3ID8cz0ctJHKC+Q+vzG4yfg8PwKBsHP4QtKMDej3c7241eqwOaPIY4H2+nhvcUbjIy0IEjqkc9O7R+6Gxi+Q2+HxbW9s80nXqH1zs6zv7G/hMggW0q6Oj46JKI7kzbE5yZW73cmMfyaKizbTs+TJdDujf575ftaA7+zBGdhsbtlLjdj3QABjw29g5bmZiq3gYbvZ67lakc0thUtdUOWXardYKkK2A36L7UMG+BfTbZk2uyi6WDXQOGXvdVcx/V49W0i/hcWytlZ76QP5R+FveXnXfkr4WhnatdM1M//Vd6b+gsRob0spvMuq8z/dGZ1eO+QxOGvv80GI/AEdDG6mQIgafqfIAO5coP8Bo/26FmLT/X+7yMSY20M9Eui6e+0dfy9nakExhj8mdH5fVA7dLO6MLQgth90JXPj/qR4YMGTJkyJAhQ4YMGZrDP438vMg/WRgqAAAAAElFTkSuQmCC>

[image2]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAaCAYAAAAAPoRaAAACK0lEQVR4Xu1WPUsDQRC9gAqi4BchyCXZ3CGiQbBIJdgEUmhjZxWwsbRLYUCxCVjYCjZBERGxUMgP0MLezl4UEQOKVtoofrzBDSxjcpfLbT7Ae/DY3L7N5M3szm0MI0CAAP8WQog0+AR+K3wHz0zTHOHr2w342gBfmd+XeDye4WvrBgLsgl+JRGKOa52GcDjcD68X4DM4yXVPQNWGEOQSvI1GoybXdcGyrAh+oxiJRPq45gXwayNOmQpAheC6J1D1ZBVP8djFdV1A/FGcrAO/hmOx2IL4Pe6bXPMMBMlSMFQ0zzWd0JU8JS2Tn+eaZyDINviB5Ge5phM6klf6vUzHn+ueoPT7NfUk13VCR/JKv5/7fXe49nsymexJpVLdfN4NSHKQklWJ4k5jPMFLdYxr9RakKf0O5rgGhDBfwA9OccEJtCP43jpYZDwCb7B7+1W0ZR6nGoTmfqf7vWq/yx3aw9jLtUYgfB77ZvX7n/udjrrckawyHaI/QZg7pN2zbXtc0VzhN3mX+92bNyxKYfGbYP1OJilx6HcYLTkdwvMqntfksS6J6q1SE36Td+j3+r1hYQbigwxE/ATvJelzZf7YkEXB5xkYv5InJIRx2OuLUDSYPL5XAB8VX0Tympa6b2+OQMHyosaNUC8aTd4NOrw5AsFz4E7lGT01gEQm1DVuoKRhdNHQbFKHN0fgjkZ8UYL5JYwrCL5Fx4uvawda5U1/P+lDJ3sLECBAgNbjBzUgwSZYS9DCAAAAAElFTkSuQmCC>