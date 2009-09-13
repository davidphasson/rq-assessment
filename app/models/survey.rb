class Survey < ActiveRecord::Base
  has_many :responses, :dependent => :destroy

  accepts_nested_attributes_for :responses

  # Straight scale percentage
  def normalized_score
    total = 0;
    possible = 0;
    self.responses.each do |r|
      total += r.value;
      possible += 10;
    end
    pctg = (total.to_f/possible.to_f)*100

    # Set this for list views and calculations
    self.total_score = pctg.to_i
    self.save

    return pctg.to_i
  end

  # Normalized IQ style score (100 mean/15 stddev)
  def std_rq
    # Guesses for averages for now:
    source_mean = 50.0;
    source_stddev = 10.0;

    std_rq = ((self.total_score - source_mean)/source_stddev)*15.0 + 100.0;

    # Set this for list views and calculations
    self.rq_score = std_rq.to_i
    self.save

    return std_rq.to_i
  end

  # Return array for big dot chart
  def scatter
    plot = Array.new
    # Todo - there is probably a tricky map function to do this
    Survey.all.each do |s|
      1..100.each do |x|
        if(s.total_score == x)
          plot[x-1] += 1
        end
      end
    end
    return plot
  end
        

end
