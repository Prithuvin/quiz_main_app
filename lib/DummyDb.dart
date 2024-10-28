class DummyDb {
  static List categoryList = [
    {"questionname": "Sports", "questionimage": "Assets/images/sport.png"},
    {"questionname": "Chemistry", "questionimage": "Assets/images/chem.png"},
    {"questionname": "Mathematics", "questionimage": "Assets/images/maths.png"},
    {"questionname": "History", "questionimage": "Assets/images/history.png"},
    {"questionname": "Biology", "questionimage": "Assets/images/biology.png"},
    {
      "questionname": "Geography",
      "questionimage": "Assets/images/geography.png"
    }
  ];

  static List SportList = [
    {
      "question": "Which country hosted the 2022 FIFA World Cup?",
      "options": ["Russia", "Qatar", "Brazil", "Japan"],
      "answer index": 1,
    },
       {
      "question": "What is the national sport of Canada?",
      "options": ["Baseball", "Soccer", "Lacrosse", "Hockey"],
      "answer index": 2,
    },
    {
      "question": "What is the length of a basketball court in feet?",
      "options": ["94", "90", "100", "85"],
      "answer index": 0,
    },
    {
      "question": "Which sport is known as 'the beautiful game'?",
      "options": ["Soccer", "Basketball", "Tennis", "Rugby"],
      "answer index": 0,
    },
    {
      "question": "How many sets are played in a standard tennis match?",
      "options": ["1", "2", "3", "5"],
      "answer index": 2,
    },
    {
      "question": "Which sport is the most popular worldwide?",
      "options": ["Baseball", "Soccer", "Cricket", "Basketball"],
      "answer index": 1,
    },
  ];

  static List chemistryList = [
    {
      "question": "What is the chemical symbol for gold?",
      "options": ["Au", "Ag", "Pb", "Fe"],
      "answer index": 0,
    },
     {
      "question": "What is the chemical symbol for water?",
      "options": ["H2", "O2", "H2O", "CO2"],
      "answer index": 2,
    },
    {
      "question": "What gas do humans exhale?",
      "options": ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
      "answer index": 1,
    },
    {
      "question": "What is the pH value of stomach acid?",
      "options": ["1", "3", "5", "7"],
      "answer index": 0,
    },
    {
      "question": "Which element is a noble gas?",
      "options": ["Oxygen", "Argon", "Nitrogen", "Hydrogen"],
      "answer index": 1,
    },
    {
      "question": "What is the primary component of natural gas?",
      "options": ["Methane", "Ethane", "Propane", "Butane"],
      "answer index": 0,
    },
  ];

  static List mathematicsList = [
    {
      "question": "What is the value of 2^5?",
      "options": ["8", "16", "32", "64"],
      "answer index": 1,
    },
      {
      "question": "What is the value of π (pi) approximately?",
      "options": ["2.14", "3.14", "3.41", "2.71"],
      "answer index": 1
    },
    {
      "question": "What is the square root of 100?",
      "options": ["8", "9", "10", "11"],
      "answer index": 2,
    },
    {
      "question": "What is the result of 12 x 12?",
      "options": ["120", "144", "132", "156"],
      "answer index": 1,
    },
    {
      "question": "What is the value of 15 squared?",
      "options": ["225", "2250", "150", "300"],
      "answer index": 0,
    },
    {
      "question": "What is 25% of 200?",
      "options": ["50", "25", "40", "60"],
      "answer index": 0,
    },
  ];

  static List historyList = [
    {
      "question": "Who was the first female Prime Minister of the UK?",
      "options": [
        "Margaret Thatcher",
        "Theresa May",
        "Angela Merkel",
        "Indira Gandhi"
      ],
      "answer index": 0,
    },
      {
      "question": "Who was known as the 'Iron Lady'?",
      "options": [
        "Margaret Thatcher",
        "Angela Merkel",
        "Golda Meir",
        "Indira Gandhi"
      ],
      "answer index": 0
    },
    {
      "question": "In which year did World War I begin?",
      "options": ["1914", "1912", "1916", "1918"],
      "answer index": 0,
    },
    {
      "question": "Who was the first man in space?",
      "options": [
        "Neil Armstrong",
        "Yuri Gagarin",
        "Buzz Aldrin",
        "John Glenn"
      ],
      "answer index": 1,
    },
    {
      "question": "What ancient civilization built the Colosseum?",
      "options": ["Greeks", "Romans", "Egyptians", "Minoans"],
      "answer index": 1,
    },
    {
      "question": "Who wrote the Declaration of Independence?",
      "options": [
        "George Washington",
        "Benjamin Franklin",
        "Thomas Jefferson",
        "John Adams"
      ],
      "answer index": 2,
    },
  ];

  static List biologyList = [
    {
      "question": "What is the process by which cells divide?",
      "options": ["Mitosis", "Meiosis", "Fission", "Fertilization"],
      "answer index": 0,
    },
    {
      "question": "What part of the cell contains the genetic material?",
      "options": ["Cytoplasm", "Ribosome", "Nucleus", "Mitochondria"],
      "answer index": 2,
    },
      {
      "question": "What is the powerhouse of the cell?",
      "options": ["Nucleus", "Ribosome", "Mitochondria", "Chloroplast"],
      "answer index": 2
    },
    {
      "question": "What is the main function of the chloroplast?",
      "options": ["Respiration", "Photosynthesis", "Digestion", "Reproduction"],
      "answer index": 1,
    },
    {
      "question": "Which organ is responsible for detoxification in the body?",
      "options": ["Liver", "Kidney", "Heart", "Lungs"],
      "answer index": 0,
    },
    {
      "question": "What type of blood cells fight infections?",
      "options": [
        "Red blood cells",
        "White blood cells",
        "Platelets",
        "Plasma"
      ],
      "answer index": 1,
    },
  ];

  static List geographyList = [
    {
      "question": "Which country has the largest land area?",
      "options": ["Canada", "Russia", "China", "USA"],
      "answer index": 1,
    },
       {
      "question": "Which river is the longest in the world?",
      "options": ["Amazon", "Nile", "Yangtze", "Mississippi"],
      "answer index": 1
    },
    {
      "question": "Which ocean is the largest?",
      "options": ["Atlantic", "Indian", "Arctic", "Pacific"],
      "answer index": 3,
    },
    {
      "question": "What is the capital city of Japan?",
      "options": ["Tokyo", "Beijing", "Seoul", "Bangkok"],
      "answer index": 0,
    },
    {
      "question": "Which desert is the largest in the world?",
      "options": ["Gobi", "Sahara", "Kalahari", "Arabian"],
      "answer index": 1,
    },
    {
      "question": "Which continent is known as the 'Dark Continent'?",
      "options": ["Africa", "Asia", "Australia", "South America"],
      "answer index": 0,
    },
  ];
}
