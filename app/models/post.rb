class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  belongs_to :user
  belongs_to :topic

  default_scope { order('rank DESC') }

  after_create :create_vote

  def up_votes
    votes.where(value: 1).count
  end

  def down_votes
    votes.where(value: -1).count
  end

  def points
    votes.sum(:value) 
    # up_votes - down_votes 
  end

  def update_rank
    age_in_days = (created_at - Time.new(1970,1,1)) / (60 * 60 * 24)
    new_rank = points + age_in_days # Wouldn't this mean that an older post would have more points than a newer post?? Why are we not Subtracting age_in_days from points?

    update_attribute(:rank, new_rank)
  end

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  # validates :topic, presence: true
  # validates :user, presence: true

  private

  def create_vote
    @vote = user.votes.create(value: 1, post: self)
  end
end
