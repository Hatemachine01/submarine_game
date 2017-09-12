class RecordsController < ApplicationController



def round_score
end

def global
@global = User.where("games_won >= ?", 1).order(games_won: :desc)
end


end

