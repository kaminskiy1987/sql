SELECT community_id, (
  SELECT
  name
  FROM communities
  WHERE id = community_id) AS community_name,
COUNT(community_id) AS count
FROM users_communities
GROUP BY community_id;