# Dir["./lib/classes/*.rb"].each { |file| require file }

Dir["./lib/**/*.rb"].each { |file| require file }
