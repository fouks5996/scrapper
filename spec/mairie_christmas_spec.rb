require_relative "../lib/mairie_christmas"

#----- VARIABLES -------
url = "https://www.annuaire-des-mairies.com/val-d-oise.html"

#----- TESTS -------
describe "the concat_url function" do
    it "should return count of concat_url function" do
        expect(concat_urls.count).to eq(185)
        expect((concat_urls.count) > 100).to eq(true)
    end
    it "should return if concat_url function include some city" do
        expect(concat_urls.include?("https://www.annuaire-des-mairies.com/95/vallangoujard.html")).to eq(true)
        expect(concat_urls.include?("https://www.annuaire-des-mairies.com/95/omerville.html")).to eq(true)
        expect(concat_urls.include?("https://www.annuaire-des-mairies.com/95/sagy.html")).to eq(true)
        expect(concat_urls.include?("https://www.annuaire-des-mairies.com/98/vallangoujard.html")).to eq(false)
    end
end


describe "the scrapping_town function" do
    it "should return count of concat_url function" do
        expect(scrapping_town(url).include?("/95/ronquerolles.html")).to eq(true)
    end
    it "should return count of concat_url function" do
        expect(scrapping_town(url).map {|x| x.length}[1]).to eq(17)
        expect(scrapping_town(url).map {|x| x.length}[12]).to eq(16)
        expect(scrapping_town(url).map {|x| x.length}[35]).to eq(14)
        expect(scrapping_town(url).map {|x| x.length}[9]).to eq(26)
    end
end