# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mb1 = Masterbank.create([{name: 'master bank 1'},{description: 'la master bank 1 de dingue'},{image: 'http://caca.zoy.org/static/caca-masque.jpeg'}])#,{banks: bank1,bank2}])
mb2 = Masterbank.create([{name: 'master bank 2'},{description: 'la master bank 2 de ouf'},{image: 'http://perlbal.hi-pi.com/blog-images/113962/mn/129261027695.jpg'}])#,{banks: bank3}])

bank1 = Bank.create([{lat:'10'},{long:'10'},{image:'http://www.moufle.net/dessins/caca.jpg'},{name: 'office bank 1'},{description: 'la banque 1 qui ouvre tout le temps'},{masterbanks_id: mb1.id}])
bank2 = Bank.create([{lat:'20'},{long:'20'},{image:'http://auto.img.v4.skyrock.net/3137/77673137/pics/2987753941_1_5_EPXIIIBm.gif'},{name: 'office bank 2'},{description: 'la banque 2 qui ouvre tout le temps'},{masterbanks_id: mb1.id}])
bank3 = Bank.create([{lat:'30'},{long:'30'},{image:'http://auto.img.v4.skyrock.net/2849/83722849/pics/3091144053_1_5_VADaKSFW.jpg'},{name: 'office bank 3'},{description: 'la banque 3 qui ouvre tout le temps'},{masterbanks_id: mb2.id}])

#mb1.bank << [bank1,bank2]
#mb2.bank << [bank3]


