require "simonn/version"

module Simonn

  def self.get_read_args(table)
    puts "How would you like data returned: (all, by query, single)"
    response = STDIN.gets.chomp

    case response.downcase
    when "all"
      QueryBuilder.build_read_query(table)
    when "by query"
      puts "Under Construction"
    when "single"
      puts "Please enter the id for the #{table} object:"
      id = STDIN.gets.chomp
      QueryBuilder.build_read_query(table, {id: id})
    else
      puts "Unrecognized response '#{response}': please enter 'all', 'single', or 'by query'"
    end
  end

  def self.get_create_args(table)
  end

  def self.get_update_args(table)
  end

  def self.get_destroy_args(table)
  end

end

class QueryBuilder

  def self.build_read_query(table, db_args={})
  end

end

class Splitter

  def self.prep_args(args)
    args.split(",")
  end

end
