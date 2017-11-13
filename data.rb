require 'pry'

def random_sentence
  @sentence_template = [
    "I see the #{@nouns.sample.light_blue} in your future",
    "You will #{@verbs.sample.light_red} the #{@nouns.sample.light_blue}",
    "Dont #{@verbs.sample.light_red} on mondays or tuesdays",
    "Forget your #{@nouns.sample.light_blue}, it is going to #{@verbs.sample.light_red}",
    "Its likely the #{@nouns.sample.light_blue}, will #{@verbs.sample.light_red}",
    "AHHH, #{@nouns.sample.light_blue}"
  ]
  puts @sentence_template.sample
end

@verbs = [
  "chew",
  "type",
  "encourage",
  "fill",
  "double",
  "roll",
  "wonder",
  "harm",
  'extend',
  "unfasten",
  "drop",
  "lock",
  "rob",
  "attract",
  "pour"
]
@nouns = [
  "tent",
  "food",
  "toad",
  "motion",
  "toothpaste",
  "value",
  "cat",
  "oranges",
  "circle",
  "competition",
  "stream",
  "fowl",
  "reading",
  "fork",
  "sun"
]
@nouns_backup = @nouns.clone
@verbs_backup = @verbs.clone
