require 'rails_helper'
RSpec.describe ApplicationController::QuotesController do

    describe "GET quotes/change" do
        it "Quando pesquisa change deve retornar somente 1 frase" do
            json = JSON.parse(File.read("spec/fixtures/quotes.json"))
            expect(json["quotes"].size).to eql(1)
        end

        it "Quando pesquisa change o autor da frase retornada é Albert Einstein" do
            json = JSON.parse(File.read("spec/fixtures/quotes.json"))
            expect(json["quotes"][0]["author"]).to eql("Albert Einstein")
        end
    end
    
end