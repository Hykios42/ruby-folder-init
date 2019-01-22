# 1. Créer un fichier Gemfile contenant les Gems de THP
def gemfile

file = File.open('Gemfile', 'a+')
file.puts('source "https://rubygems.org"')
file.puts("ruby '2.5.1'")
file.puts("gem 'rspec'")
file.puts("gem 'dotenv'")
file.puts("gem 'nokogiri'")
file.puts("gem 'watir'")
file.puts("gem 'pry'")
file.puts("gem 'rubocop'")
file.close
	
end

#2. Bundle install
def bundle
	system("bundle install")
end


#3 initialiser Rspec
def rspec
	system("rspec --init")
end



#4 Créer les folders
def folder
	system("mkdir lib")
	system("mkdir lib/app")
	system("mkdir lib/views")
	system("mkdir db")
end

#5 Créer un fichier app.rb dans le dossier lib
def app
	file = File.open('app.rb', 'a+')
	file.puts("require 'bundler'")
	file.puts("Bundler.require")
	file.puts("$:.unshift File.expand_path('./../lib', __FILE__)")
	file.close
end


#6 Créer un fichier app_spec.rb dans le dossier spec
def app_spec
	system("touch spec/app_spec.rb")
end

#7 créer fichier .env et .gitignore contenant ".env"
def gitignore
	system("touch .env")
	file = File.open('.gitignore', 'a+')
	file.puts('.env')
	file.close	
end

#8 Git le dossier complet avec comme message du commit "initalisation de "nom du projet"
def git
	system("git add .")
	system("git commit -m 'first commit init project folder'")
	system("git push origin master")
	
end

#9 message de confirmation
def control
	puts "\n"
	puts "-----------------------------------------"
	puts "| ✅ le dossier est prêt à être utilisé |"
	puts "-----------------------------------------"
	
end

#ruby /Users/arthurbenoit/Desktop/tout/GIT/ruby-folder-init/lib/script.rb


# méthodes qui contrôle le programme
def perform

	folder
	gitignore
	gemfile
	bundle
	rspec
	app
	git
	control
end

perform