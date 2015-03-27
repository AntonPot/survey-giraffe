User.create(name: 'Steve',
            email: 'steve@apple.com',
            password: '12345')
User.create(name: 'Bill',
            email: 'bill@msc.com',
            password: '12345')
# Steve's Survey
User.find(1).surveys.create(title: 'Weekly Retrospective')
# Q1
Survey.find(1).questions.create(question: 'I feel like I learned a lot this week.')
Question.find(1).answers.create(answer: 'Strongly Agree')
Question.find(1).answers.create(answer: 'Agree')
Question.find(1).answers.create(answer: 'Neutral')
Question.find(1).answers.create(answer: 'Disagree')
Question.find(1).answers.create(answer: 'Strongly Disagree')
# Q2
Survey.find(1).questions.create(question: 'I understand how I am doing with respect to the learning competencies.')
Question.find(2).answers.create(answer: 'Strongly Agree')
Question.find(2).answers.create(answer: 'Agree')
Question.find(2).answers.create(answer: 'Neutral')
Question.find(2).answers.create(answer: 'Disagree')
Question.find(2).answers.create(answer: 'Strongly Disagree')
 # Q3
Survey.find(1).questions.create(question: 'How was the pace of the curriculum for you this week?')
Question.find(3).answers.create(answer: 'A little too slow')
Question.find(3).answers.create(answer: 'A good pace, stay on course')
Question.find(3).answers.create(answer: 'A little too fast')
Question.find(3).answers.create(answer: 'Too fast, please slow down')
Question.find(3).answers.create(answer: 'Strongly Disagree')
 # Q4
Survey.find(1).questions.create(question: 'I got the personal attention I needed this week.')
Question.find(4).answers.create(answer: 'I got attention from my teachers AND peers')
Question.find(4).answers.create(answer: 'I got attention from my teachers')
Question.find(4).answers.create(answer: 'I got attention from my peers')
Question.find(4).answers.create(answer: 'I did not get enough attention')
 # Q5
Survey.find(1).questions.create(question: 'I gave the personal attention I needed to give this week.')
Question.find(5).answers.create(answer: 'I gave attention to my teachers AND peers')
Question.find(5).answers.create(answer: 'I gave attention to my teachers')
Question.find(5).answers.create(answer: 'I gave attention to my peers')
Question.find(5).answers.create(answer: 'I did not give enough attention')
 # Q6
Survey.find(1).questions.create(question: 'I practiced giving and receiving feedback this week.')
Question.find(6).answers.create(answer: 'I practiced enough and found it valuable')
Question.find(6).answers.create(answer: 'I did NOT practice enough but would find it valuable')
Question.find(6).answers.create(answer: 'I practiced enough but did NOT find it valuable')
Question.find(6).answers.create(answer: 'I did NOT practice enough and would NOT find it valuable')
# Q7
Survey.find(1).questions.create(question: 'Engineering Empathy:consider your experiences during the EE deep dive this week as well as the 15 minute practice sessions. I am personally benefitting from Engineering Empathy.')
Question.find(7).answers.create(answer: 'Strongly Agree')
Question.find(7).answers.create(answer: 'Agree')
Question.find(7).answers.create(answer: 'Neutral')
Question.find(7).answers.create(answer: 'Disagree')
Question.find(7).answers.create(answer: 'Strongly Disagree')
# Q8
Survey.find(1).questions.create(question: 'My cohort is benefitting (ie, culturally) from Engineering Empathy.')
Question.find(8).answers.create(answer: 'Strongly Agree')
Question.find(8).answers.create(answer: 'Agree')
Question.find(8).answers.create(answer: 'Neutral')
Question.find(8).answers.create(answer: 'Disagree')
Question.find(8).answers.create(answer: 'Strongly Disagree')
# Q9
Survey.find(1).questions.create(question: 'Overall consider the entirety of your experience at DBC over the past week.')
Question.find(9).answers.create(answer: 'I enjoyed myself this week.')
Question.find(9).answers.create(answer: 'Strongly Agree')
Question.find(9).answers.create(answer: 'Agree')
Question.find(9).answers.create(answer: 'Neutral')
Question.find(9).answers.create(answer: 'Disagree')
Question.find(9).answers.create(answer: 'Strongly Disagree')
# Q10
Survey.find(1).questions.create(question: 'I feel like I worked harder this week than I did last week.')
Question.find(10).answers.create(answer: 'Strongly Agree')
Question.find(10).answers.create(answer: 'Agree')
Question.find(10).answers.create(answer: 'Neutral')
Question.find(10).answers.create(answer: 'Disagree')
Question.find(10).answers.create(answer: 'Strongly Disagree')
# Q11
Survey.find(1).questions.create(question: 'I was satisfied with my overall experience at DBC this week.')
Question.find(11).answers.create(answer: 'Strongly Agree')
Question.find(11).answers.create(answer: 'Agree')
Question.find(11).answers.create(answer: 'Neutral')
Question.find(11).answers.create(answer: 'Disagree')
Question.find(11).answers.create(answer: 'Strongly Disagree')
# Bill's Response 1 is our first response and our responses are all good.
User.find(2).responses.create(survey_id: 1)
# Q1
Question.find(1).answers.first.answered_questions.create(response_id: 1)
# Q2
Question.find(2).answers.first.answered_questions.create(response_id: 1)
# Q3
Question.find(3).answers.first.answered_questions.create(response_id: 1)
# Q4
Question.find(4).answers.first.answered_questions.create(response_id: 1)
# Q5
Question.find(5).answers.first.answered_questions.create(response_id: 1)
# Q6
Question.find(6).answers.first.answered_questions.create(response_id: 1)
# Q7
Question.find(7).answers.first.answered_questions.create(response_id: 1)
# Q8
Question.find(8).answers.first.answered_questions.create(response_id: 1)
# Q9
Question.find(9).answers.first.answered_questions.create(response_id: 1)
# Q10
Question.find(10).answers.first.answered_questions.create(response_id: 1)
# Q11
Question.find(11).answers.first.answered_questions.create(response_id: 1)






