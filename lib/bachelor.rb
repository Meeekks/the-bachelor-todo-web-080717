def get_first_name_of_season_winner(data, season)
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |stats|
        if stats["status"] == "Winner"
          return stats["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
      contestants.each do |stats|
        if stats["occupation"] == occupation
          return stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, contestants|
      contestants.each do |stats|
        if stats["hometown"] == hometown
          counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
      contestants.each do |stats|
        if stats["hometown"] == hometown
          return stats["occupation"]
      end
    end
  end
end
#
# def get_average_age_for_season(data, season)
#   num_of_cont = 0
#   age_total = 0
#   data.each do |seasons, contestants|
#     if seasons = season
#       contestants.each do |stats|
#         num_of_cont += 1
#         age_total += stats["age"].to_i
#       end
#     end
#   end
#   average = age_total.to_f / num_of_cont.to_f
#   average.to_s[3].to_i >= 5 ? average.ceil : average.to_i
# end

def get_average_age_for_season(data, season)
  num_of_cont = 0
  age_total = 0
    data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |cont_hash|
        num_of_cont += 1
        age_total += cont_hash["age"].to_i
      end
    end
  end
  average = age_total.to_f / num_of_cont.to_f
  average.to_s[3].to_i >= 5 ? average.ceil : average.to_i
end
