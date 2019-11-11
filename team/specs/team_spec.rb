require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../team")

class TestTeam < MiniTest::Test

  def test_can_create_team_object
    new_team = Team.new("Astralis", ["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], "zonic")
  end

  def test_get_team_name
    new_team = Team.new("Astralis", ["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], "zonic")
    assert_equal("Astralis", new_team.team_name)
  end

  def test_get_players
    new_team = Team.new("Astralis", ["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], "zonic")
    assert_equal(["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], new_team.players)
  end

  def test_get_coach
    new_team = Team.new("Astralis", ["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], "zonic")
    assert_equal("zonic", new_team.coach)
  end

  def test_set_coach
    new_team = Team.new("Astralis", ["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], "zonic")
    new_team.coach = "fnatic"
    assert_equal("fnatic", new_team.coach)
  end

  def test_add_new_player
    new_team = Team.new("Astralis", ["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], "zonic")
    # assert_equal(["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk", "Shroud"], new_team.add_new_player("Shroud"))
    assert_equal(6, new_team.add_new_player("Shroud").length)
  end

  def test_search_for_player_found
    new_team = Team.new("Astralis", ["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], "zonic")
    assert_equal(true, new_team.search_for_player)
  end

  def test_get_points
    new_team = Team.new("Astralis", ["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], "zonic")
    assert_equal(0, new_team.points)
  end

  def test_match_result
    new_team = Team.new("Astralis", ["dev1ce", "dupreeh", "Xyp9x", "Gla1ve", "Magisk"], "zonic")
    assert_equal(3, new_team.match_result("win"))
  end

end
