DROP FUNCTION extract_first_name(TEXT) CASCADE;
DROP FUNCTION extract_last_name(TEXT) CASCADE;
DROP FUNCTION find_player(TEXT) CASCADE;
DROP FUNCTION map_ext_player(INTEGER) CASCADE;
DROP FUNCTION map_ext_tournament(TEXT) CASCADE;
DROP FUNCTION merge_tournament(TEXT, TEXT, TEXT, TEXT, BOOLEAN) CASCADE;
DROP FUNCTION merge_tournament_event(TEXT, SMALLINT, DATE, TEXT, TEXT, TEXT, TEXT, BOOLEAN, TEXT, SMALLINT, INTEGER) CASCADE;
DROP FUNCTION merge_player(INTEGER, TEXT, TEXT, SMALLINT, TEXT) CASCADE;
DROP FUNCTION load_player(INTEGER, TEXT, TEXT, DATE, TEXT, TEXT) CASCADE;
DROP FUNCTION load_ranking(DATE, INTEGER, INTEGER, INTEGER) CASCADE;
DROP FUNCTION load_ranking(DATE, TEXT, INTEGER, INTEGER) CASCADE;
DROP FUNCTION load_match(
	TEXT, SMALLINT, DATE, TEXT, TEXT, TEXT, TEXT, BOOLEAN, TEXT, SMALLINT, INTEGER, SMALLINT, DATE, TEXT, SMALLINT,
	INTEGER, SMALLINT, TEXT, INTEGER, INTEGER, REAL, TEXT, TEXT, SMALLINT, TEXT,
	INTEGER, SMALLINT, TEXT, INTEGER, INTEGER, REAL, TEXT, TEXT, SMALLINT, TEXT,
	TEXT, TEXT, SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT[], SMALLINT[], SMALLINT[], SMALLINT[], SMALLINT,
	SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT,
	SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT, SMALLINT
) CASCADE;
DROP FUNCTION find_players(TEXT) CASCADE;
DROP FUNCTION merge_match_prices(BIGINT, TEXT, REAL, REAL) CASCADE;
DROP FUNCTION load_match_prices(SMALLINT, TEXT, TEXT, DATE, TEXT, TEXT, TEXT, TEXT,
	REAL, REAL, REAL, REAL, REAL, REAL, REAL, REAL) CASCADE;
DROP FUNCTION set_tournament_map_properties(TEXT, INTEGER, INTEGER, INTEGER[], JSON) CASCADE;