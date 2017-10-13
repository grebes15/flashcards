User.delete_all
penn = User.create!(username: "penn", email: "penn@gmail.com", password: "123456")
thomas = User.create!(username: "thomas", email: "trav@gmail.com",  password: "123456")
david = User.create!(username: "david", email: "ds@gmail.com", password: "123456")
andres = User.create!(username: "andres", email: "pn@gmail.com", password: "123456")
chris = User.create!(username: "chris", email: "pdsen@gmail.com", password: "123456")
amber = User.create!(username: "amber", email: "asdf@gmail.com", password: "123456")
samory = User.create!(username: "samory", email: "samory@gmail.com", password: "123456")

Deck.delete_all
Deck.create! [{ title: 'sports', user_id: 1},
              { title: 'comics', user_id: 1},
              { title: 'math', user_id: 1},
              { title: 'movies', user_id: 1}]

Card.delete_all
Card.create! [{ :deck_id => 1, :question => 'Who won the 2004 NBA finals? (full team name)', :answer => 'detroit pistons'},
              { :deck_id => 1, :question => 'Which Manning brother is oldest? (Peyton or Eli)', :answer => 'peyton'},
              { :deck_id => 1, :question => 'How many NBA championship rings does Kobe have?', :answer => '5'},
              { :deck_id => 1, :question => 'How many NFL teams has Tom Brady played for?', :answer => '1'},
              { :deck_id => 1, :question => 'What sports did Michael Jordan play? (seperate with and)', :answer => 'basketball and baseball'},
              { :deck_id => 2, :question => 'Who is Spider-Man?', :answer => 'peter parker'},
              { :deck_id => 2, :question => 'What color is Green Lanterns ring?', :answer => 'green'},
              { :deck_id => 2, :question => 'Who is faster, The Flash or Superman?', :answer => 'the flash'},
              { :deck_id => 2, :question => 'What superhero has the real name of Oliver Queen?', :answer => 'green arrow'},
              { :deck_id => 2, :question => 'What Batman/Green Arrow villain wears an orange and black mask', :answer => 'deathstroke'},
              { :deck_id => 3, :question => '2+2', :answer => '4'},
              { :deck_id => 3, :question => '5*9', :answer => '45'},
              { :deck_id => 3, :question => '7/3', :answer => '9'},
              { :deck_id => 3, :question => 'sqrt of 64', :answer => '8'},
              { :deck_id => 3, :question => '-7+6', :answer => '-1'},
              { :deck_id => 4, :question => 'How many Godfather films are there?', :answer => '3'},
              { :deck_id => 4, :question => 'What Pixar film follows the adverntures of the Parr family?', :answer => 'the incredibles'},
              { :deck_id => 4, :question => 'Who is the lead in Castaway?', :answer => 'tom hanks'},
              { :deck_id => 4, :question => 'What Disney film features the song, Part of Your World', :answer => 'the little mermaid'},
              { :deck_id => 4, :question => 'Who directed the film, Me Him Her?', :answer => 'max landis'}]