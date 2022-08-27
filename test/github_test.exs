defmodule GitHubTest do
  use ExUnit.Case
  doctest Diaspora
  alias GitHub.Users

  test "intersection of a list" do
    some_follows = ["compermisos", "Miuler", "dima767", "aalmiray", "thegeekinside", "chochos",
      "domix", "rugi", "khreez", "andresaquino", "jeduan", "jbovet", "hy1228",
      "chillicoder", "ta-b0t", "IsraelBuitronD", "Markitox", "FerHarris", "felohdez",
      "draco17", "sunnygleason", "MachinesAreUs", "abadongutierrez", "rcahuich",
      "lesthack", "cogitovsmachina", "alopmar", "respergu", "josuemb",
      "rvazquezglez", "glaforhge", "3rckDJ"]

    other_follows = ["shanesveller", "neodevelop", "esin", "RobertDober", "isra", "rodrigues",
      "ivanhoe", "dviramontes", "3rckDJ", "sleipnir", "philss", "frankely", "herminiotorres",
      "sescobb27", "xexuy", "glaforhge", "HiroNakamura", "thisiscetin", "dkisai", "Rachc",
      "julitiux", "sohjiro", "jstoledano", "ruckysolis", "honey-speaks-tech",
      "ladaewoo", "ochococo", "egjimenezg", "miquecg", "Yukaii", "mxarc",
      "junior-vs"]

    common_follows = ["3rckDJ", "glaforhge"]

    assert Users.intersect_lists(some_follows, other_follows) == common_follows
  end
end
