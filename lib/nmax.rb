# frozen_string_literal: true

require "nmax/version"

module Nmax
  def self.run(n)
    limit = n.to_i
    return if limit <= 0

    text_input = input
    numbers = []

    text_input.each_line do |line|
      matches = line.scan(/\d{1,1000}/)
      next if matches.empty?

      matches.each do |match|
        numbers.push(match.to_i)
      end
    end
    numbers.uniq.sort.reverse.first(limit)
  end

  def self.input
    STDIN
  end
end
