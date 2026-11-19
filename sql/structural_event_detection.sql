
WITH measurements AS (
    SELECT
        elapsed_seconds,
        "Inboard Load" AS inboard_load,
        "Outboard Load" AS outboard_load,
        "RootMomentUNCORRECTED" AS root_moment,

        LAG("Inboard Load") OVER (
            ORDER BY elapsed_seconds
        ) AS previous_inboard_load,

        LAG("Outboard Load") OVER (
            ORDER BY elapsed_seconds
        ) AS previous_outboard_load,

        LAG("RootMomentUNCORRECTED") OVER (
            ORDER BY elapsed_seconds
        ) AS previous_root_moment

    FROM test_250
),
changes AS (
    SELECT
        elapsed_seconds,
        inboard_load - previous_inboard_load
            AS inboard_change,
        outboard_load - previous_outboard_load
            AS outboard_change,
        root_moment - previous_root_moment
            AS root_moment_change
    FROM measurements
)
SELECT *
FROM changes
WHERE inboard_change IS NOT NULL
ORDER BY inboard_change ASC
LIMIT 10;
