# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
    @candidates.each do |candidate|
      if candidate[:id] == id
        return candidate
      end
    end
  end
  
  def experienced?(candidate)
    # Your code Here
    if candidate[:years_of_experience] >= 2
      return true
    end

    return false
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    qc = []

    @candidates.each do |candidate|
      if candidate[:years_of_experience] > 0 &&
        candidate[:github_points] > 99 &&
        (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
        (Date.today - candidate[:date_applied]).to_i < 15 &&
        candidate[:age] > 17
        qc.push(candidate)
      end
    end
    return qc
  end
  
  # More methods will go below
def ordered_by_qualifications(candidates)
  @candidates.sort_by do |candidate|
    [-candidate[:years_of_experience], -candidate[:github_points]]
  end
end