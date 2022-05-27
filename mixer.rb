#!/usr/bin/env ruby

class Mixer
    def initialize
        # read contents of ingredients.list
        @ingredients = File.readlines("ingredients.list")

        @ingredients.map! { |ingredient| ingredient.strip }
        # puts "[DEBUG] ingredients: #{@ingredients}"
    end

    def choose_ingredient
        # get a random ingredient from the list
        ingredient = @ingredients.sample

        # remove chosen ingredient from the list so we don't choose it again
        @ingredients.delete(ingredient)
    end

    def mix
        puts "Mixing..."

        # storing the results in case we need them later
        @genre = choose_ingredient
        @plot = choose_ingredient
        @characters = choose_ingredient
        @theme = choose_ingredient

        puts "------------------"
        puts "GENRE: #{@genre}"
        puts "PLOT: #{@plot}"
        puts "CHARACTERS: #{@characters}"
        puts "THEME: #{@theme}"
        puts "------------------"

        puts "Done!"
    end
end

# initialize object
Mixer.new().mix