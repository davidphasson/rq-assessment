# First iteration of questions from "RI Assessment 8Questions.docx"

namespace :db do
  desc "Add questions to the database"
  task :add_questions => :environment do
  	questions = {
	# The Michael Scott Syndrome (Self-Awareness)
		[
			:text => "Do you intentionally ask others for honest feedback in order to enhance your own growth in your career and leadership endeavors?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Michael Scott Syndrome (Self-Awareness)"
		],
		[
			:text => "When you finish leading a meeting or end an important conversation, how consistently do you reflect on what you could have said and done better?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Michael Scott Syndrome (Self-Awareness)"
		],
		[
			:text => "Do you give trusted friends permission to help you identify and overcome the limitations, weaknesses, or deficits in your personal life?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Michael Scott Syndrome (Self-Awareness)"
		],
		[
			:text => "Do you practice self-examination in your life (i.e. designate a window of time to reflect and examine your motives, actions, and their effects)?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Michael Scott Syndrome (Self-Awareness)"
		],
		[
			:text => "Would the people who know you best (whether at work or in your personal life) describe you as someone who is open to their feedback and input?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Michael Scott Syndrome (Self-Awareness)"
		],
		[
			:text => "When someone who knows you well shares feedback or advice with you, do you find yourself wanting to retreat and feeling defensive OR do find yourself interested and open to the input?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Michael Scott Syndrome (Self-Awareness)"
		],
		[
			:text => "After a meeting, do you examine what went well and what didn’t, OR do you move on quickly to the next thing without reflection?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Michael Scott Syndrome (Self-Awareness)"
		],
		[
			:text => "Are you often surprised when others give you feedback (positive or negative) or do you usually have a good idea on how you are doing before they speak to you?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Michael Scott Syndrome (Self-Awareness)"
		],
	# The Story Collector
		[
			:text => "How often do you ask intentional and thoughtful questions in order to get to know others more deeply and personally?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Story Collector"
		],
		[
			:text => "When listening to others, does your attention tend to drift easily OR do you tend to find yourself engaged and interested in their story?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Story Collector"
		],
		[
			:text => "Do you see any context that you are in (social, work, etc.) as a medium to learn more about others through asking them questions?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Story Collector"
		],
		[
			:text => "Would people who know you best say that you are consistently interested in learning more about them as a person OR would they say that you are more interested in talking about yourself?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Story Collector"
		],
		[
			:text => "Do you tend to ask close-ended questions that don’t tend to foster a relational connection, OR do you ask open-ended questions that tend to draw out what makes a person distinct and interesting?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Story Collector"
		],
		[
			:text => "If someone asks you personal questions, do you tend to see it as invasive OR do you see it as a sign of interest and engagement in you?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Story Collector"
		],
		[
			:text => "When interacting with others, do you notice non-verbal cues that indicate they feel listened to and understood by you?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Story Collector"
		],
		[
			:text => "Would people in your life say that you consistently show interest in learning about who they are and what makes them unique?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Story Collector"
		],
	# The Energy Carrier
		[
			:text => "Do you find yourself fully engaged in the present interactions and moments that you’re in or do you often find yourself preoccupied with other things?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Energy Carrier"
		],
		[
			:text => "Would people who interact with you in a variety of contexts describe you more as focused and attentive OR more as distracted and preoccupied?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Energy Carrier"
		],
		[
			:text => "Is it difficult for you to remember the content of past conversations and interactions OR are you able to remember what stood out (the important details, underlying tone, significant conclusions, etc)?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Energy Carrier"
		],
		[
			:text => "When you try to change the tone of any relational context, do your efforts tend to go unnoticed OR do your efforts tend to create and change the tone of the room that you’re seeking?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Energy Carrier"
		],
		[
			:text => "Do you change the energy in a room and given relational context when called for, OR do you find that it is often difficult and too intangible to do it?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Energy Carrier"
		],
		[
			:text => "Do people look to you to carry the relational energy in work settings and leadership contexts OR do others tend to look to someone else for the relational energy?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Energy Carrier"
		],
		[
			:text => "When you enter a room, do you have the ability to change the room dynamics and enhance the tone because of your presence and what you contribute to the conversation?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Energy Carrier"
		],
		[
			:text => "In ordinary conversations of life, how consistently do you remain fully engaged in those moments?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Energy Carrier"
		],
	# "The Compelling Relator"
		[
			:text => "Do people tend to listen to you well when you talk OR do people seem to have short attention spans and fail to listen well consistently to you?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Compelling Relator"
		],
		[
			:text => "Do you express what you feel is relevant to the situation even when it has the potential to be offensive and controversial OR do you prefer to refrain from expressing that strong emotions that you feel in order to maintain harmony?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Compelling Relator"
		],
		[
			:text => "When communicating with others on an interpersonal level, do you adapt what you say to your audience so it is more relatable and relevant to them (whether it’s an individual or a group)?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Compelling Relator"
		],
		[
			:text => "Is \"how you communicate your message\" as critical as the \"the message itself?\"",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Compelling Relator"
		],
		[
			:text => "How strong is your ambition and passion to bring change in the world around you?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Compelling Relator"
		],
		[
			:text => "Would people describe you more as non-enthusiastic about life and disengaged OR passionate and proactive?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Compelling Relator"
		],
		[
			:text => "Do you care more about maintaining harmony and not upsetting people, OR do you care more about speaking up boldly to challenge the status quo in a way that honors the people involved?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Compelling Relator"
		],
		[
			:text => "In conversations, do you believe the burden falls more on others to be interested in you OR on you to become interesting to others?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Compelling Relator"
		],

	# "The Conversational Futurist"
		[
			:text => "When in a conversation, do you tend to find yourself falling behind and trying to catch up OR do you keep up and even find yourself leading people forward in dialogue?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Conversational Futurist"
		],
		[
			:text => "In dialoguing with others, do you find yourself articulating what’s already been said, OR do you find yourself striving to say something new that changes the direction of the conversation and moves it forward?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Conversational Futurist"
		],
		[
			:text => "When in dialogue, do you see your role more as an agent of change OR do you see your role more as being polite and agreeable?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Conversational Futurist"
		],
		[
			:text => "How often are you able to recognize the underlying assumption of a conversation, that which is the emotional undertone of what’s being said at face value?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Conversational Futurist"
		],
		[
			:text => "How effective are you at introducing timeless truths to people in a way that helps them discover the truth in a new way?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Conversational Futurist"
		],
		[
			:text => "Once you have clarity on where a conversation should go, are you assertive and effective at leading it there?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Conversational Futurist"
		],
		[
			:text => "Do you find yourself leading conversations or conversations leading you?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Conversational Futurist"
		],
		[
			:text => "Do you believe that remaining perceptive to the spiritual and emotional temperature of those people you dialogue with is critical to moving a conversation forward?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Conversational Futurist"
		],


	# "The Likeable Hero"
		[
			:text => "Is being accessible to others more of a value in your life OR more of an inconvenience?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Likeable Hero"
		],
		[
			:text => "Would people describe you as accessible and easy to talk to OR would people describe you as intimidating and difficult to approach?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Likeable Hero"
		],
		[
			:text => "Do the people who work for you (or volunteer on teams you lead) end up being long-term relationships OR do you notice that the majority of them end up being short-term relationships?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Likeable Hero"
		],
		[
			:text => "Do the majority of the people on your teams (or the employees who work for you) demonstrate loyalty and support OR are they disconnected and unmotivated?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Likeable Hero"
		],
		[
			:text => "Would people who work with you say you have a higher value for efficiency OR a higher value for relationship?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Likeable Hero"
		],
		[
			:text => "Do you believe warmth and kindness are optional leadership qualities, OR are they necessary leadership virtues?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Likeable Hero"
		],
		[
			:text => "Do you find it easier to win people’s trust OR to push past the resistance you encounter?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Likeable Hero"
		],
		[
			:text => "Are you able to function with both an optimistic, enthusiastic outlook, as well as maintain a critically minded posture that pushes others to improve?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Likeable Hero"
		],


	# "The Disproportionate Investor"
		[
			:text => "Of the people you invest in most in your relational spheres, do they also consistently invest in other people?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Disproportionate Investor"
		],
		[
			:text => "When making a decision as to who to invest in, do you put more weight on people’s needs OR on their potential and willingness to give back what they’ve received?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Disproportionate Investor"
		],
		[
			:text => "Of the five to six people whom you invest in most, do you consider them sacrificial and generous in spirit?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Disproportionate Investor"
		],
		[
			:text => "Do you believe the people you mentor and invest in will multiply the impact of your investment?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Disproportionate Investor"
		],
		[
			:text => "When you notice a continuing refusal to grow and change in someone whom you’re mentoring or coaching, do you stop spending time with them because you see your investment as ineffective and wasted?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Disproportionate Investor"
		],
		[
			:text => "Do you have specific criteria when choosing whom to mentor OR do you base it primarily on your availability?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Disproportionate Investor"
		],
		[
			:text => "In the people whom you are intentionally trying to develop, have they selected you OR have you selected them?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Disproportionate Investor"
		],
		[
			:text => "Do you feel that the people you invest in receive whatever time and energy you offer them as a gift and accept it with gratitude OR do you notice that the more you give of your time and energy the more demanding they become?",
			:upper_title => "All the time",
			:lower_title => "Nah, dog",
			:category_title => "The Disproportionate Investor"
		]
  	}
  	questions.each do |q|
  		Question.create!(q)
  	end
  end
end
