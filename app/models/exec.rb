class Exec < ActiveRecord::Base
  belongs_to :user
  has_many :meetings

  def self.alphabetize_array
    self.alphabetize.map {|exec| [exec[:name], exec[:id]]}
  end

  def self.alphabetize
    self.all.sort_by{ |exec| exec.name }
  end

end
