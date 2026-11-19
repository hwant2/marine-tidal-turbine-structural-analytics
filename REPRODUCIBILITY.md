# Project 4 — Reproducibility Guide

## Project

Marine Tidal Turbine Structural Performance Analytics

## Environment

The analysis was developed using Google Colab
and Python 3.13.18.

Required Python packages are documented in
requirements.txt.

## Source Data

The original analysis uses three Excel workbooks:

1. CreaForm_Points_260217.xlsx
2. LB9_225_test2_2026_02_17_14_53_00_10Hz.xlsx
3. LB10_250_2026_02_17_15_17_27_10Hz.xlsx

Original source workbooks are excluded from
the public GitHub package. See DATA_SOURCE.md
for the source citation and CC BY 4.0 terms.

## Running the Analysis

1. Open the project notebook in Google Colab.
2. Install packages from requirements.txt.
3. Obtain the original datasets from an
   authorized source.
4. Create a Project_4_Tidal_Turbine folder
   in Google Drive.
5. Place the three Excel files in its data folder.
6. Mount Google Drive in Colab.
7. Update project paths if your folder differs.
8. Run the notebook cells in sequence.
9. Review generated datasets, dashboards,
   SQL outputs, and engineering reports.

## Analytical Methods

- Data quality and completeness checks
- Structural loading comparisons
- Displacement analysis
- Strain-gauge variability analysis
- Structural event identification
- SQLite window-function event detection
- Engineering report generation

## Principal Finding

A major multi-channel event was identified
at approximately 94.3 seconds in the 250%
load-case test.

Python and SQLite analyses independently
identified the event.

The physical cause remains unverified.

## Important Limitations

- Engineering measurement units require
  verification against source documentation.
- Root moment values are uncorrected.
- Several strain-gauge channels exhibit
  constant or unusual readings.
- Physical blade failure is not confirmed.
- The notebook uses Colab-specific paths.
- Fresh-runtime execution was reported successful
  in Google Colab with the source files present.

## Publication Notes

The public repository is intended to document
analytical methods and engineering findings.

Source attribution and the CC BY 4.0 license
are documented in DATA_SOURCE.md.

The public notebook has its saved outputs and
execution counts removed.
