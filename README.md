# Marine Tidal Turbine Structural Performance Analytics

## Project Overview

Engineering data analytics portfolio project examining
tidal turbine structural loading, displacement,
strain-gauge response, and measurement quality.

The project compares 225% and 250% structural load-case
tests using Python and SQLite.

## Data Source

DOE TEAMER tidal turbine structural testing data.

The analysis includes:
- 225% load-case test: 2,665 records
- 250% load-case test: 9,630 records
- Total: 12,295 measurement records
- 29 strain-gauge channels per test

Original measurement units require verification
against source documentation.

## Engineering Objectives

1. Validate and prepare structural test measurements.
2. Compare loading and displacement response.
3. Evaluate strain-gauge variability.
4. Identify abrupt structural test events.
5. Investigate potential sensor-quality concerns.
6. Demonstrate Python and SQL engineering analytics.

## Key Findings

### Structural Test Comparison

| Metric | 225% Test | 250% Test |
|---|---:|---:|
| Records | 2,665 | 9,630 |
| Maximum inboard load | 10,022.414 | 11,174.147 |
| Maximum outboard load | 8,447.801 | 8,023.323 |
| Maximum uncorrected root moment | 127.332 | 128.497 |

### Significant Event: 250% Test

A major multi-channel event was detected at 94.3 seconds.

Single-sample changes:

| Channel | Change |
|---|---:|
| Inboard load | -3,979.990 |
| Outboard load | -7,347.755 |
| Uncorrected root moment | -85.629 |

Python time-series analysis and SQLite window
functions independently identified this event.

### Strain-Gauge Quality

Three channels (SG37, SG38, and SG39)
transitioned to constant negative readings
at the event.

This behavior requires further investigation
before assigning a physical failure mechanism.

## Engineering Interpretation

The 250% test contains a significant structural
or test-system event involving simultaneous
changes in loading, displacement, root moment,
and strain-gauge signals.

Physical blade failure has not been confirmed.

## Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- SQLite
- Google Colab
- ReportLab

## Project Deliverables

- Cleaned structural measurement datasets
- Sensor quality summary
- Structural loading and displacement dashboards
- Strain-response dashboards
- Event investigation dashboard
- SQL database and queries
- Engineering findings Markdown report
- Six-page engineering PDF

## Project Limitations

- Measurement units have not been verified.
- Root moment measurements are uncorrected.
- Constant strain-gauge signals require review.
- Test durations differ.
- Event causation remains unverified.

## Reproducibility

The analysis was performed in Google Colab.
The final notebook, source-data documentation,
dependencies, and publication package will be
validated before the repository is declared complete.

## Status

Engineering analysis and automated PDF validation
completed. Final reproducibility and GitHub
publication checks pending.
