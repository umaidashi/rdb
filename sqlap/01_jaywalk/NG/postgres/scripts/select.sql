-- チームメンバーを取得
SELECT
  m.name as members
FROM
  teams t
  LEFT JOIN members m on m.id = ANY(string_to_array(t.member_id, ',')::INT[])
WHERE
  t.id = 1;

-- メンバーが所属するチームを取得
SELECT
  t.name as teams
FROM
  members m
  LEFT JOIN teams t on m.id = ANY(string_to_array(t.member_id, ',')::INT[])
WHERE
  m.id = 1;
