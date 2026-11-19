
SELECT
    '225%' AS test_case,
    COUNT(*) AS records,
    MAX("Inboard Load") AS max_inboard_load,
    MAX("Outboard Load") AS max_outboard_load,
    MAX("RootMomentUNCORRECTED") AS max_root_moment
FROM test_225

UNION ALL

SELECT
    '250%' AS test_case,
    COUNT(*) AS records,
    MAX("Inboard Load"),
    MAX("Outboard Load"),
    MAX("RootMomentUNCORRECTED")
FROM test_250;
