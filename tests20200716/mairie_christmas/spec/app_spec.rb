require_relative '../lib/app'

describe "mairie_christmas" do
  it "finds e-mail address" do
    expect(main_function().select{|x| x.keys == ["VILLIERS LE BEL"]}[0]["VILLIERS LE BEL"]).to eq("secretariatgeneral@ville-villiers-le-bel.fr")
    expect(main_function().select{|x| x.keys == ["MONTMORENCY"]}[0]["MONTMORENCY"]).to eq("directiongenerale@ville-montmorency.fr")
    expect(main_function().select{|x| x.keys == ["WY DIT JOLI VILLAGE"]}[0]["WY DIT JOLI VILLAGE"]).to eq("mairie.wy-dit-joli-village@wanadoo.fr")
  end
end
  