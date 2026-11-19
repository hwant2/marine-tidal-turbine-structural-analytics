# Marine Tidal Turbine Structural Performance Analytics

## Executive Summary

This project evaluates structural loading, displacement,
strain-gauge response, and test data quality for two
tidal turbine blade loading tests.

The analysis uses Python, Pandas, Matplotlib, and SQLite.

## Dataset Overview

Source: DOE TEAMER tidal turbine structural testing dataset

225% load case:
- Records: 2,665
- Maximum inboard load: 10022.414
- Maximum outboard load: 8447.801

250% load case:
- Records: 9,630
- Maximum inboard load: 11174.147
- Maximum outboard load: 8023.323

Total records: 12,295

## Data Quality

- No missing values in the loading-test tables.
- No duplicate measurement records.
- No infinite numeric values.
- Median sampling interval: 0.1 seconds.
- Three constant strain gauges in the 225% test.
- Four constant strain gauges in the 250% test.
- Constant gauges were flagged for review.

## Structural Event Findings

The 250% load-case test exhibited a significant
multi-channel event at approximately 94.3 seconds.

Single-sample changes:
- Inboard load: -3979.990
- Outboard load: -7347.755
- Uncorrected root moment: -85.629

The event was independently detected using Python
and SQLite window-function analysis.

## Strain-Gauge Findings

SG37, SG38, and SG39 transitioned to constant
negative readings following the event.

This behavior requires additional sensor-integrity
investigation before interpreting these readings
as valid physical strain.

## Event Window Comparison

| channel               |   before_mean |   after_mean |   absolute_change |
|:----------------------|--------------:|-------------:|------------------:|
| Inboard Load          |     10529.8   |     8431.16  |         -2098.68  |
| Outboard Load         |      7243.08  |      900.078 |         -6343     |
| Inboard Disp          |        -2.8   |       -6.322 |            -3.522 |
| Outboard Disp         |         5.241 |       16.542 |            11.301 |
| RootMomentUNCORRECTED |       119.672 |       52.889 |           -66.783 |
| SG37-2000-HP-SC       |      8556.15  |   -61759.6   |        -70315.8   |
| SG38-2250-LP-SC       |    -23612.4   |   -61705.2   |        -38092.8   |
| SG39-2250-HP-SC       |      7403.08  |   -61674     |        -69077.1   |

## Engineering Interpretation

The simultaneous changes in load, displacement,
root moment, and strain-gauge signals are consistent
with a major structural or test-system event.

Physical blade failure has not been independently
confirmed from the available analysis.

## Limitations

- Measurement units require technical documentation.
- The root moment channel is uncorrected.
- Constant sensor values may reflect instrumentation issues.
- The exact physical cause of the event remains unverified.
- The two tests have different recording durations.

## Analytical Tools

- Python
- Pandas
- NumPy
- Matplotlib
- SQLite
- Google Colab

## Portfolio Status

Engineering analysis, documentation, and fresh-runtime execution completed.
GitHub publication is the remaining step.
