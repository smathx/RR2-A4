class Profile < ActiveRecord::Base
  belongs_to :user

  validates :gender, inclusion: { in: %w( male female ) }

  validate :name_not_both_null, :anything_but_sue

  def name_not_both_null
  	if first_name.nil? && last_name.nil?
  		errors.add(:first_name, "first and last names cannot both be empty")
  	end
  end

  def anything_but_sue
    if gender == "male" && first_name == "Sue"
      errors.add(:first_name, "anything but Sue!")
  	end
  end

  def self.get_all_profiles(min_year, max_year)
    Profile.where("birth_year between ? and ?", min_year, max_year).order('birth_year asc')
  end
end
