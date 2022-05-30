SELECT pst_time, MOD(pst_time + 15, 24) AS dong_8_qiong_qu_time, count
FROM (
  SELECT EXTRACT(HOUR FROM TO_TIMESTAMP(created_utc)) AS pst_time,
         COUNT(*) AS count
  FROM dfs.`/tmp/user_comment.json`
  GROUP BY 1
) t
ORDER BY 2;

结果:
+----------+----------------------+-------+
| pst_time | dong_8_qiong_qu_time | count |
+----------+----------------------+-------+
| 9        | 0                    | 55    |
| 10       | 1                    | 54    |
| 11       | 2                    | 49    |
| 12       | 3                    | 16    |
| 13       | 4                    | 14    |
| 14       | 5                    | 5     |
| 16       | 7                    | 1     |
| 17       | 8                    | 22    |
| 18       | 9                    | 107   |
| 19       | 10                   | 142   |
| 20       | 11                   | 155   |
| 21       | 12                   | 192   |
| 22       | 13                   | 202   |
| 23       | 14                   | 158   |
| 0        | 15                   | 160   |
| 1        | 16                   | 122   |
| 2        | 17                   | 145   |
| 3        | 18                   | 136   |
| 4        | 19                   | 132   |
| 5        | 20                   | 130   |
| 6        | 21                   | 148   |
| 7        | 22                   | 128   |
| 8        | 23                   | 83    |
+----------+----------------------+-------+
