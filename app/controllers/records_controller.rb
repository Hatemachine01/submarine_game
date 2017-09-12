class RecordsController < ApplicationController



def round_score
end

def global

@global = User.all.order(games_won: :desc)

end


end
