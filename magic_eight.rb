require_relative 'data'
require 'pry'
require 'colorize'

def magic_eight

  puts "=======Welcome to the Magic Eight Ball==========".yellow
  puts "Ask any question and receive an answer, type exit to leave"

  question_loop
end

def secret_word
  puts "Soo, you would like to add another word ehh?".yellow
  puts "[1] Add a #{'noun'.light_blue}"
  puts "[2] Add a #{'verb'.light_red}"
  puts "[3] Back to the magic"
  input = STDIN.gets.to_i

while true
  case input
    when 1
      secret_input(@nouns)
    when 2
      secret_input(@verbs, 'Verb')
    when 3
      magic_eight
    else
      puts "You must want to add somthing, enter a valid command."
      secret_word
  end
end
secret_word
end

def secret_input(data, type = 'Noun')
  puts "What #{type.light_blue} would you like to add?"
  input = STDIN.gets.strip
  if data.include?(input.downcase)
    puts "That's already a #{type.light_blue}"
  else
    @nouns << input
    puts "You added #{input} to the list!"
  end
  secret_word
end

def print_all
  @sentence_template.each {|sentence| puts sentence}
end

def reset_all
  @verbs = @verbs_backup
  @nouns = @nouns_backup
  puts "All data has been reset to default"
  magic_eight
end


def question_loop
  input = STDIN.gets.strip
  random_sentence

  while true

    if input.downcase === "exit"
      puts "Goodbye!"
      exit 0
    elsif input.downcase === "secret_word"
      secret_word
    elsif input.downcase === "print_answers"
      print_all
      magic_eight
    elsif input.downcase === "reset_answers"
      reset_all
      magic_eight
    else
      question_loop
    end

  end
end

if ARGV.any?
  if ARGV.first.downcase === "secret_word"
    secret_word
  elsif ARGV.first.downcase === "print_answers"
    print_all
    magic_eight
  elsif ARGV.first.downcase === "reset_answers"
    reset_all
  else
    magic_eight
  end
else
  magic_eight
end
