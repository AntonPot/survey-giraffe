User.create(name: 'Steve',
            email: 'steve@apple.com',
            password: '12345')
User.create(name: 'Bill',
            email: 'bill@msc.com',
            password: '12345')

User.find(1).surveys.create(title: 'Weekly Retrospective')
Survey.find(1).questions.create(question: 'I feel like I learned a lot this week.')
Question.find(1).answers.create(answer: 'Agree')

User.find(2).responses.create(survey_id: 1)
Response.find(1).answered_questions.create(answer_id: 1)

