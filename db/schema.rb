Genre.create([
               { name: 'Калипсо', country: 'Тринидад и Тобаго', description: 'Стиль афро-карибской музыки, зародившийся в Тринидаде и Тобаго в начале-середине 19 века и распространившийся на остальные Карибские Антильские острова и Венесуэлу.', link: 'https://en.wikipedia.org/wiki/Calypso_music' },
               { name: 'Шансон', country: 'Франция', description: 'Французский песенный жанр, основанный на лирике, известный своими поэтичными, часто меланхоличными мелодиями и сложными текстами песен.', link: 'https://en.wikipedia.org/wiki/Chanson' },
               { name: 'Кантри', country: 'США', description: 'Жанр популярной музыки, зародившийся на юге Соединенных Штатов в начале 1920-х годов.', link: 'https://en.wikipedia.org/wiki/Country_music' },
               { name: 'Кумбия', country: 'Колумбия', description: 'Фольклорный жанр и танец из Колумбии и Панамы, основанный на смешанных музыкальных традициях Африки и коренных народов.', link: 'https://en.wikipedia.org/wiki/Cumbia' },
               { name: 'Электронная танцевальная музыка (EDM)', country: 'Разная', description: 'Широкий спектр жанров ударной электронной музыки, созданных в основном для ночных клубов, рейвов и фестивалей.', link: 'https://en.wikipedia.org/wiki/Electronic_dance_music' },
               { name: 'Фаду', country: 'Португалия', description: 'Музыкальный жанр, который берет свое начало в Лиссабоне в 1820-х годах и характеризуется печальными мелодиями и текстами песен.', link: 'https://en.wikipedia.org/wiki/Fado' },
               { name: 'Фламенко', country: 'Испания', description: 'Традиционный испанский вид искусства, который включает в себя пение, игру на гитаре, танцы и хлопки в ладоши.', link: 'https://en.wikipedia.org/wiki/Flamenco' },
               { name: 'Народная музыка', country: 'Разная', description: 'Традиционная музыка, которая берет свое начало в общей культуре и традициях общины или страны.', link: 'https://en.wikipedia.org/wiki/Folk_music' },
               { name: 'Гагаку', country: 'Япония', description: 'Традиционная музыка японского императорского двора, это один из старейших видов музыки в Японии.', link: 'https://en.wikipedia.org/wiki/Gagaku' },
               { name: 'Хай-лайф', country: 'Гана', description: 'Музыкальный жанр, зародившийся в Гане в начале 20-го века, сочетает в себе традиционные ритмы акана с западными инструментами.', link: 'https://en.wikipedia.org/wiki/Highlife' },
               { name: 'J-поп', country: 'Япония', description: 'Современная поп- и рок-музыка с сильным влиянием японской культуры.', link: 'https://en.wikipedia.org/wiki/J-pop' },
               { name: 'Джаз', country: 'США', description: 'Зародившийся на юге Соединенных Штатов, джаз известен своими свинговыми и синими нотами.', link: 'https://en.wikipedia.org/wiki/Jazz' },
               { name: 'K-поп', country: 'Южная Корея', description: 'Жанр популярной музыки с широким разнообразием аудиовизуальных элементов.', link: 'https://en.wikipedia.org/wiki/K-pop' },
               { name: 'Клезмер', country: 'Восточная Европа', description: 'Музыкальная традиция евреев-ашкеназов Восточной Европы с выразительными мелодиями.', link: 'https://en.wikipedia.org/wiki/Klezmer' },
               { name: 'Мариачи', country: 'Мексика', description: "Стиль музыки и выступления музыкальных групп с корнями в сельской местности Мексики.", link: "https://en.wikipedia.org/wiki/Mariachi" },
               { name: 'Полька', country: 'Центральная Европа', description: "Быстро развивающийся танец и жанр танцевальной музыки.", link:"https://en.wikipedia.org/wiki/Polka" },
               { name:'Поп', country:'США, Великобритания', description:'Зародившись как более мягкая альтернатива рок-н-роллу, поп-музыка характеризуется запоминающимися мелодиями.', link:'https://en.wikipedia.org/wiki/Pop_music'},
               { name:'Каввали', country:'Пакистан', description:'Форма суфийской исламской религиозной музыки с интенсивным вокальным стилем.', link:'https://en.wikipedia.org/wiki/Qawwali'},
               { name:'Регги', country:'Ямайка', description:'Музыкальный стиль с сильным ритмическим акцентом на внебитие.', link:'https://en.wikipedia.org/wiki/Reggae'},
               { name:'Сальса', country:'Карибы', description:'Популярный жанр танцевальной музыки, возникший из кубинского сына.', link:'https://en.wikipedia.org/wiki/Salsa_music'},
               { name:'Соукус', country:'Конго', description:'Жанр танцевальной музыки, возникший из кубинской румбы.', link:'https://en.wikipedia.org/wiki/Soukous'},
               { name:'Техно', country:'Германия', description:'Зародившееся в Детройте музыкальное направление с повторяющимися инструментами.', link:'https://en.wikipedia.org/wiki/Techno'},
               { name:'Зайдеко', country:'США', description:'Музыкальный жанр с влиянием блюза и ритм-энд-блюза.', link:'https://en.wikipedia.org/wiki/Zydeco'}
             ])

Legend.create([
                { name: 'Амалия Родригеш', genre: 'Фаду', era: '1940-е - 1990-е', country: 'Португалия', description: 'Известна как "Королева Фаду", её музыка часто отражала душу португальской культуры.', link: 'https://www.imdb.com/name/nm0735052/bio/' },
                { name: 'Авичи', genre: 'Электронная танцевальная музыка (EDM)', era: '2000-е - 2010-е', country: 'Швеция', description: 'Один из самых известных диджеев на сцене EDM, известен хитами "Levels" и "Wake Me Up".', link: 'https://en.wikipedia.org/wiki/Avicii' },
                { name: 'Боб Дилан', genre: 'Народная музыка', era: '1960-е - настоящее время', country: 'США', description: 'Влиятельная фигура в популярной музыке и культуре более пяти десятилетий, часто считается одним из величайших авторов песен всех времён.', link: 'https://www.bobdylan.com/' },
                { name: 'Боб Марли', genre: 'Регги', era: '1960-е - 1980-е', country: 'Ямайка', description: 'Пионер регги-музыки, известен смешением регги, ска и рокстеди в своих композициях.', link: 'https://www.bobmarley.com/' },
                { name: 'Брюс Спрингстин', genre: 'Рок', era: '1970-е - настоящее время', country: 'США', description: 'По прозвищу "Босс", его тексты часто касаются борьбы рабочего класса американцев.', link: 'https://brucespringsteen.net/' },
                { name: 'Карлос Вивес', genre: 'Кумбия', era: '1980-е - настоящее время', country: 'Колумбия', description: 'Современный пионер кумбии, смешивающий традиционную колумбийскую народную музыку с элементами попа и рока.', link: 'https://www.carlosvives.com/' },
                { name: 'Селия Крус', genre: 'Сальса', era: '1950-е - 2000-е', country: 'Куба', description: 'Известна как "Королева Сальсы", Крус одна из самых популярных исполнителей сальсы 20-го века.', link: 'https://celiacruz.com/' },
                { name: 'Сезария Эвора', genre: 'Морна', era: '1950-е - 2010-е', country: 'Кабо-Верде', description: 'Известна как "Королева Морны", Эвора была известна своим душевным голосом и выступлениями босиком.', link: 'https://www.cesaria-evora.com/' },
                { name: 'Клифтон Шенье', genre: 'Зыдеко', era: '1950-е - 1980-е', country: 'США', description: 'Часто называемый "Королём Зыдеко", Шенье внес значительный вклад в популяризацию этого креольского музыкального жанра.', link: 'https://en.wikipedia.org/wiki/Clifton_Chenier' },
                { name: 'Е. Т. Менса', genre: 'Хайлайф', era: '1950-е - 1970-е', country: 'Гана', description: 'Известен как "Король Хайлайфа", музыка Менса оказала большое влияние на развитие современной западноафриканской популярной музыки.', link: 'https://en.wikipedia.org/wiki/E._T._Mensah' },
                { name: 'Эдит Пиаф', genre: 'Шансон', era: '1930-е - 1960-е', country: 'Франция', description: 'Знаменитая французская кабаре-певица, автор песен и актриса, признанная национальной шансонеткой Франции.', link: 'https://en.wikipedia.org/wiki/%C3%89dith_Piaf' },
                { name: 'Фела Кути', genre: 'Афробит', era: '1960-е - 1990-е', country: 'Нигерия', description: 'Известен как пионер афробита, жанра, который сочетает традиционную нигерийскую музыку, джаз, хайлайф, фанк и вокальные речитативы.', link: 'https://felakuti.com/us' },
                { name: 'Франко Луамбо', genre: 'Сукус', era: '1950-е - 1980-е', country: 'Демократическая Республика Конго', description: 'Пионер конголезской музыкальной сцены, его инновационный подход к игре на гитаре и бит сукус оставили долгий след.', link: 'https://en.wikipedia.org/wiki/Franco_Luambo' },
                { name: 'Фрэнки Янкович', genre: 'Полька', era: '1940-е - 1990-е', country: 'США', description: 'Известен как "Король Польки Америки", Янкович сыграл важную роль в популяризации польки по всей США.', link: 'https://en.wikipedia.org/wiki/Frankie_Yankovic' },
                { name: 'Фредди Меркьюри', genre: 'Рок', era: '1970-е - 1990-е', country: 'Великобритания', description: 'Легендарный фронтмен группы Queen, известный своим четырёхоктавным вокальным диапазоном и энергичными сценическими выступлениями.', link: 'http://www.freddiemercury.com/en/' },
                { name: 'Грэйси Филдс', genre: 'Поп музыка', era: '1920-е - 1950-е', country: 'Великобритания', description: 'Пользовалась широкой популярностью как певица и актриса, известная своим выдающимся голосом и искренним исполнением.', link: 'https://graciemusic.com/' },
                { name: 'Джин Келли', genre: 'Бродвей/Холливуд', era: '1940-е - 1980-е', country: 'США', description: 'Легенда музыкального театра и кино, известен своим танцевальным мастерством и участием в классических фильмах-мюзиклах, таких как "Поющие под дождём".', link: 'https://www.smoothradio.com/features/gene-kelly-dancing-career-height-wife-net-worth/' },
                { name: 'Джими Хендрикс', genre: 'Рок', era: '1960-е', country: 'США', description: 'Считается одним из величайших гитаристов всех времён, он оказал значительное влияние на развитие рок-музыки.', link: 'https://www.jimihendrix.com/' },
                { name: 'Джон Леннон', genre: 'Рок', era: '1960-е - 1980-е', country: 'Великобритания', description: 'Соучредитель и один из ведущих авторов песен группы The Beatles, его музыка и активизм оказали долговременное влияние на мир.', link: 'https://johnlennon.com/' },
                { name: 'Кишор Кумар', genre: 'Болливудская музыка', era: '1940-е - 1980-е', country: 'Индия', description: 'Икона болливудской музыки, Кумар известен своим удивительным вокальным диапазоном и многочисленными хитами в индийских фильмах.', link: 'https://en.wikipedia.org/wiki/Kishore_Kumar' },
                { name: 'Лата Мангешкар', genre: 'Болливудская музыка', era: '1940-е - настоящее время', country: 'Индия', description: 'Одна из самых уважаемых и популярных индийских певиц, Мангешкар записала тысячи песен для индийского кино.', link: 'https://en.wikipedia.org/wiki/Lata_Mangeshkar' },
                { name: 'Мария Каллас', genre: 'Опера', era: '1940-е - 1970-е', country: 'США', description: 'Широко признанная как одна из величайших оперных певиц всех времён, Каллас была известна своими выразительными голосовыми данными и сценическим мастерством.', link: 'https://en.wikipedia.org/wiki/Maria_Callas' },
                { name: 'Майлс Дэвис', genre: 'Джаз', era: '1940-е - 1990-е', country: 'США', description: 'Икона джаза, Дэвис оказал значительное влияние на развитие современного джаза, участвуя в создании таких жанров, как кул-джаз и фьюжн.', link: 'https://www.milesdavis.com/' },
                { name: 'Мириам Макеба', genre: 'Африканская музыка', era: '1950-е - 2000-е', country: 'Южная Африка', description: 'Макеба, известная как "Мама Африка", была значимой фигурой в африканской музыке и политическом активизме, продвигая африканскую культуру и борьбу против апартеида.', link: 'https://www.miriammakeba.co.za/' },
                { name: 'Пэтси Клайн', genre: 'Кантри', era: '1950-е - 1960-е', country: 'США', description: 'Одна из первых женщин, достигших звёздного статуса в кантри-музыке, известна своим глубоким и эмоциональным голосом.', link: 'https://patsycline.com/' },
                { name: 'Рави Шанкар', genre: 'Индийская классическая музыка', era: '1940-е - 2010-е', country: 'Индия', description: 'Известный мастер игры на ситаре, Шанкар способствовал популяризации индийской классической музыки во всём мире и сотрудничал с множеством западных музыкантов.', link: 'https://en.wikipedia.org/wiki/Ravi_Shankar' },
                { name: 'Рэй Чарльз', genre: 'Соул', era: '1950-е - 2000-е', country: 'США', description: 'Легендарный музыкант, Чарльз оказал значительное влияние на развитие соула и ритм-н-блюза, известен своими многочисленными хитами и уникальным стилем исполнения.', link: 'https://www.raycharles.com/' },
                { name: 'Тина Тёрнер', genre: 'Рок/Поп', era: '1960-е - 2022-е', country: 'США', description: 'Известная как "Королева Рока", Тёрнер достигла международного успеха благодаря своим мощным вокальным данным и энергичным сценическим выступлениям.', link: 'https://tinaturnerofficial.com/' },
                { name: 'Юссу Н’Дур', genre: 'Мбалакс', era: '1970-е - настоящее время', country: 'Сенегал', description: 'Известен как один из величайших вокалистов Африки, Н’Дур внёс значительный вклад в развитие и популяризацию жанра mbalax.', link: 'https://youssoundour.com/' }
              ])
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_12_15_160333) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.text "description"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legends", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.string "era"
    t.string "country"
    t.text "description"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "subject"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end

