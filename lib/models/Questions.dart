class Question {
  final int id, answer;
  final String question;
  final List<String> options;
  final String category;
  final String? figure;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options,
      required this.category,
      this.figure});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "What is the maximum altitude you can fly a sUAS under Part 107 regulations?",
    "options": ["500 feet AGL", "400 feet AGL", "600 feet AGL", "300 feet AGL"],
    "answer_index": 1
  },
  {
    "id": 2,
    "question":
        "Which document must be readily accessible by the remote pilot during sUAS operations?",
    "options": [
      "Aircraft logbooks",
      "Remote pilot certificate",
      "Aircraft registration",
      "Maintenance logs"
    ],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Under what conditions can you fly a sUAS at night?",
    "options": [
      "With a waiver from the FAA",
      "With a strobe light visible from 3 miles",
      "During civil twilight only",
      "Night operations are prohibited under Part 107"
    ],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question":
        "What must a remote pilot do if they deviate from Part 107 regulations during an emergency?",
    "options": [
      "File a report with the FAA within 10 days",
      "Take no further action",
      "File a detailed report upon request by the FAA",
      "Notify local law enforcement"
    ],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
        "What is the minimum visibility requirement for sUAS operations?",
    "options": [
      "1 statute mile",
      "3 statute miles",
      "5 statute miles",
      "10 statute miles"
    ],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "How often must a remote pilot complete recurrent training?",
    "options": [
      "Every 6 months",
      "Every 12 months",
      "Every 24 months",
      "Every 36 months"
    ],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question":
        "What is required to operate a sUAS within 30 minutes after sunset?",
    "options": [
      "FAA authorization",
      "Anti-collision lights visible for 3 statute miles",
      "Visual observer",
      "Strobe lights visible for 1 statute mile"
    ],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question":
        "What action should be taken if a remote pilot experiences a flyaway?",
    "options": [
      "Attempt to regain control immediately",
      "Report the incident to the FAA within 10 days",
      "Notify local authorities",
      "File an accident report with the NTSB"
    ],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "What is the maximum ground speed for a sUAS under Part 107?",
    "options": ["80 knots", "87 knots", "100 knots", "120 knots"],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question":
        "Who is responsible for ensuring a sUAS is in a condition for safe operation?",
    "options": [
      "The owner of the sUAS",
      "The visual observer",
      "The remote pilot in command",
      "The person manipulating the controls"
    ],
    "answer_index": 2,
  },
  {
    "id": 11,
    "question":
        "Which class of airspace requires prior authorization from ATC to operate a sUAS?",
    "options": ["Class G", "Class E", "Class C", "Class F"],
    "answer_index": 2,
  },
  {
    "id": 12,
    "question":
        "What is the height limit for flying a sUAS in Class G airspace?",
    "options": ["200 feet AGL", "300 feet AGL", "400 feet AGL", "500 feet AGL"],
    "answer_index": 2,
  },
  {
    "id": 13,
    "question": "What does VLOS stand for?",
    "options": [
      "Visual Line of Sight",
      "Vertical Line of Sight",
      "Variable Line of Sight",
      "Visual Line of Service"
    ],
    "answer_index": 0,
  },
  {
    "id": 14,
    "question":
        "Which airspace is most likely to contain heavy commercial air traffic and requires specific authorization for sUAS operations?",
    "options": ["Class A", "Class B", "Class C", "Class D"],
    "answer_index": 1,
  },
  {
    "id": 15,
    "question":
        "What should a remote pilot do if they must operate a sUAS near an airport in uncontrolled airspace?",
    "options": [
      "Notify the airport",
      "Obtain ATC authorization",
      "Avoid the traffic pattern and runways",
      "Fly below 100 feet AGL"
    ],
    "answer_index": 2,
  },
  {
    "id": 16,
    "question":
        "What is the minimum weather visibility required for sUAS operations?",
    "options": ["1 mile", "2 miles", "3 miles", "5 miles"],
    "answer_index": 2,
  },
  {
    "id": 17,
    "question":
        "Which type of weather report provides current surface weather conditions?",
    "options": ["TAF", "METAR", "SIGMET", "PIREP"],
    "answer_index": 1,
  },
  {
    "id": 18,
    "question":
        "What effect does high density altitude have on sUAS performance?",
    "options": [
      "Increases lift",
      "Decreases lift",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
  },
  {
    "id": 19,
    "question":
        "Which weather phenomenon is particularly hazardous to sUAS operations due to sudden and severe wind shifts?",
    "options": ["Microbursts", "Fog", "Rain showers", "Clear air turbulence"],
    "answer_index": 0,
  },
  {
    "id": 20,
    "question":
        "When planning a flight, which weather source provides a forecast for a specific airport?",
    "options": ["METAR", "TAF", "NOTAM", "SIGMET"],
    "answer_index": 1,
  },
  {
    "id": 21,
    "question": "What is the effect of a forward center of gravity on a sUAS?",
    "options": [
      "Increased stability",
      "Decreased stability",
      "Increased lift",
      "Decreased lift"
    ],
    "answer_index": 0,
  },
  {
    "id": 22,
    "question":
        "Which factor affects the performance of a sUAS during takeoff?",
    "options": [
      "Wind direction",
      "Air temperature",
      "Air pressure",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 23,
    "question": "What is the primary concern when loading a sUAS?",
    "options": [
      "Aesthetics",
      "Weight distribution",
      "Color coordination",
      "Ease of assembly"
    ],
    "answer_index": 1,
  },
  {
    "id": 24,
    "question": "How does humidity affect sUAS performance?",
    "options": [
      "Increases performance",
      "Decreases performance",
      "No effect",
      "Only affects camera quality"
    ],
    "answer_index": 1,
  },
  {
    "id": 25,
    "question":
        "What should be checked before each flight to ensure proper balance and stability of the sUAS?",
    "options": [
      "Battery levels",
      "Weather conditions",
      "Weight and balance",
      "Propeller tightness"
    ],
    "answer_index": 2,
  },
  {
    "id": 26,
    "question":
        "Which of the following is required to be on board the sUAS during operations?",
    "options": [
      "Remote pilot certificate",
      "Aircraft registration",
      "Maintenance logs",
      "Insurance documents"
    ],
    "answer_index": 1,
  },
  {
    "id": 27,
    "question":
        "What is the required action if a sUAS experiences a loss of GPS signal during flight?",
    "options": [
      "Continue flight as planned",
      "Land as soon as possible",
      "Fly in manual mode",
      "Notify the FAA"
    ],
    "answer_index": 1,
  },
  {
    "id": 28,
    "question":
        "What should a remote pilot do before starting any flight operation?",
    "options": [
      "Check the weather",
      "Inspect the sUAS",
      "Plan the flight path",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 29,
    "question": "How can a remote pilot mitigate risks during sUAS operations?",
    "options": [
      "By maintaining VLOS",
      "Using a visual observer",
      "Conducting pre-flight checks",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 30,
    "question":
        "What is the maximum blood alcohol concentration allowed for a remote pilot during sUAS operations?",
    "options": ["0.04%", "0.08%", "0.10%", "0.02%"],
    "answer_index": 0,
  },
  {
    "id": 31,
    "question":
        "Who is responsible for informing the participants about emergency procedures?",
    "options": [
      "Visual observer",
      "Remote pilot in command",
      "Person manipulating the controls",
      "Local authorities"
    ],
    "answer_index": 1,
  },
  {
    "id": 32,
    "question":
        "What is the primary purpose of a visual observer in sUAS operations?",
    "options": [
      "To maintain VLOS",
      "To communicate with ATC",
      "To operate the controls",
      "To manage the flight logs"
    ],
    "answer_index": 0,
  },
  {
    "id": 33,
    "question":
        "When is it necessary to file a report with the FAA after an accident?",
    "options": [
      "Within 24 hours",
      "Within 48 hours",
      "Within 10 days",
      "Immediately"
    ],
    "answer_index": 2,
  },
  {
    "id": 34,
    "question": "What must be included in an accident report to the FAA?",
    "options": [
      "Weather conditions",
      "Details of the accident",
      "Pilot’s certificate number",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 35,
    "question":
        "What is required for a remote pilot to operate in Class B airspace?",
    "options": [
      "A special license",
      "ATC authorization",
      "A visual observer",
      "Permission from the local airport authority"
    ],
    "answer_index": 1,
  },
  {
    "id": 36,
    "question":
        "What action should a remote pilot take if a person is injured during sUAS operations?",
    "options": [
      "Continue the flight",
      "Land the sUAS immediately",
      "Report the injury to the FAA within 10 days",
      "Notify local emergency services"
    ],
    "answer_index": 1,
  },
  {
    "id": 37,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "To ensure the safety of the operation",
      "To operate the controls",
      "To manage the flight logs",
      "To maintain VLOS"
    ],
    "answer_index": 0,
  },
  {
    "id": 38,
    "question": "What is the role of the FAA in sUAS operations?",
    "options": [
      "To regulate and oversee sUAS operations",
      "To provide flight training",
      "To issue insurance",
      "To conduct flight operations"
    ],
    "answer_index": 0,
  },
  {
    "id": 39,
    "question":
        "What should a remote pilot do if they encounter a hazardous situation during flight?",
    "options": [
      "Continue the flight",
      "Report it to the FAA",
      "Land immediately",
      "Notify local authorities"
    ],
    "answer_index": 2,
  },
  {
    "id": 40,
    "question":
        "What is the minimum age requirement to obtain a remote pilot certificate?",
    "options": ["14 years", "16 years", "18 years", "21 years"],
    "answer_index": 1,
  },
  {
    "id": 41,
    "question": "What is required to operate a sUAS from a moving vehicle?",
    "options": [
      "ATC authorization",
      "Visual observer",
      "Waiver from the FAA",
      "Daylight operations only"
    ],
    "answer_index": 2,
  },
  {
    "id": 42,
    "question":
        "When operating in Class D airspace, what is the maximum altitude you can fly a sUAS?",
    "options": ["200 feet AGL", "300 feet AGL", "400 feet AGL", "500 feet AGL"],
    "answer_index": 2,
  },
  {
    "id": 43,
    "question":
        "Which of the following is a hazardous operation under Part 107?",
    "options": [
      "Flying over people",
      "Flying within VLOS",
      "Flying with a visual observer",
      "Flying in uncontrolled airspace"
    ],
    "answer_index": 0,
  },
  {
    "id": 44,
    "question":
        "What must a remote pilot do before operating in restricted airspace?",
    "options": [
      "Obtain permission from the controlling agency",
      "Notify local law enforcement",
      "Submit a flight plan to the FAA",
      "Ensure the sUAS is registered"
    ],
    "answer_index": 0,
  },
  {
    "id": 45,
    "question":
        "How can a remote pilot obtain authorization to fly in controlled airspace?",
    "options": [
      "By submitting a request to the FAA",
      "By contacting local ATC",
      "By using a visual observer",
      "By filing a NOTAM"
    ],
    "answer_index": 0,
  },
  {
    "id": 46,
    "question": "What should a remote pilot do in the event of a flyaway?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Notify the FAA",
      "Land immediately"
    ],
    "answer_index": 1,
  },
  {
    "id": 47,
    "question":
        "How should a remote pilot respond to a low battery warning during flight?",
    "options": [
      "Continue the flight",
      "Land as soon as possible",
      "Return to home position",
      "Ignore the warning"
    ],
    "answer_index": 1,
  },
  {
    "id": 48,
    "question": "What is the primary consideration in an emergency situation?",
    "options": [
      "Safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
  },
  {
    "id": 49,
    "question":
        "What should a remote pilot do if they lose visual contact with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain visual contact",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 1,
  },
  {
    "id": 50,
    "question":
        "What is required if a remote pilot needs to deviate from Part 107 regulations during an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
  },
  {
    "id": 51,
    "question": "What should be included in a pre-flight inspection of a sUAS?",
    "options": [
      "Check the battery levels",
      "Inspect the propellers",
      "Verify GPS signal",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 52,
    "question": "How often should a sUAS be inspected for maintenance?",
    "options": [
      "Before every flight",
      "Once a month",
      "Every six months",
      "Annually"
    ],
    "answer_index": 0,
  },
  {
    "id": 53,
    "question":
        "Who is responsible for maintaining the sUAS in a condition for safe operation?",
    "options": [
      "The owner",
      "The visual observer",
      "The remote pilot in command",
      "The manufacturer"
    ],
    "answer_index": 2,
  },
  {
    "id": 54,
    "question": "What is the purpose of keeping maintenance logs for a sUAS?",
    "options": [
      "To track flight hours",
      "To ensure compliance with FAA regulations",
      "To monitor battery performance",
      "To record inspections and repairs"
    ],
    "answer_index": 3,
  },
  {
    "id": 55,
    "question": "When should a remote pilot replace a damaged propeller?",
    "options": [
      "Before the next flight",
      "After 10 flight hours",
      "Only if it affects performance",
      "During the annual inspection"
    ],
    "answer_index": 0,
  },
  {
    "id": 56,
    "question":
        "What is the primary goal of risk management in sUAS operations?",
    "options": [
      "To minimize operational costs",
      "To maximize flight duration",
      "To ensure safety of the operation",
      "To comply with FAA regulations"
    ],
    "answer_index": 2,
  },
  {
    "id": 57,
    "question":
        "Which tool can be used to identify potential hazards in sUAS operations?",
    "options": [
      "Pre-flight checklist",
      "Weather briefing",
      "Risk assessment matrix",
      "Maintenance log"
    ],
    "answer_index": 2,
  },
  {
    "id": 58,
    "question":
        "What should a remote pilot do to mitigate risks during a flight?",
    "options": [
      "Maintain VLOS",
      "Use a visual observer",
      "Conduct pre-flight checks",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 59,
    "question":
        "How can a remote pilot ensure compliance with see-and-avoid requirements?",
    "options": [
      "Use binoculars",
      "Fly in controlled airspace",
      "Maintain situational awareness",
      "Use a first-person view camera"
    ],
    "answer_index": 2,
  },
  {
    "id": 60,
    "question":
        "What is the recommended action if a remote pilot identifies a potential hazard during flight?",
    "options": [
      "Continue the flight",
      "Report it to the FAA",
      "Land immediately",
      "Notify local authorities"
    ],
    "answer_index": 2,
  },
  {
    "id": 61,
    "question":
        "What effect can dehydration have on a remote pilot’s performance?",
    "options": [
      "Improved focus",
      "Impaired judgment",
      "Increased energy",
      "Enhanced vision"
    ],
    "answer_index": 1,
  },
  {
    "id": 62,
    "question":
        "What should a remote pilot do to prevent fatigue during operations?",
    "options": [
      "Take regular breaks",
      "Drink caffeinated beverages",
      "Fly shorter missions",
      "Use automated flight modes"
    ],
    "answer_index": 0,
  },
  {
    "id": 63,
    "question":
        "Which physiological factor can affect a remote pilot’s ability to operate a sUAS?",
    "options": ["Stress", "Hunger", "Fitness level", "All of the above"],
    "answer_index": 3,
  },
  {
    "id": 64,
    "question":
        "How can a remote pilot mitigate the effects of heat stress during operations?",
    "options": [
      "Stay hydrated",
      "Wear lightweight clothing",
      "Take breaks in shaded areas",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 65,
    "question":
        "What is the recommended action if a remote pilot feels ill before a flight?",
    "options": [
      "Proceed with the flight",
      "Delegate control to another pilot",
      "Cancel the flight",
      "Use automated flight modes"
    ],
    "answer_index": 2,
  },
  {
    "id": 66,
    "question":
        "What is the purpose of the phonetic alphabet in aviation communication?",
    "options": [
      "To simplify communication",
      "To avoid misunderstandings",
      "To standardize communication",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 67,
    "question":
        "Which communication procedure should be followed when operating near a controlled airport?",
    "options": [
      "Contact ATC before flight",
      "Monitor the Common Traffic Advisory Frequency (CTAF)",
      "Announce intentions on the appropriate frequency",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 68,
    "question":
        "What should a remote pilot do if they experience radio communication failure during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Return to the home position",
      "Notify the FAA"
    ],
    "answer_index": 1,
  },
  {
    "id": 69,
    "question": "What is the primary purpose of ATIS?",
    "options": [
      "To provide weather information",
      "To relay NOTAMs",
      "To communicate with ATC",
      "To provide traffic advisories"
    ],
    "answer_index": 0,
  },
  {
    "id": 70,
    "question":
        "How can a remote pilot enhance situational awareness during flight?",
    "options": [
      "Use a visual observer",
      "Monitor ATC communications",
      "Keep a lookout for other aircraft",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 71,
    "question":
        "What is required to legally operate a sUAS for commercial purposes?",
    "options": [
      "FAA authorization",
      "Remote pilot certificate",
      "Insurance coverage",
      "Local government approval"
    ],
    "answer_index": 1,
  },
  {
    "id": 72,
    "question":
        "What are the consequences of falsifying a remote pilot certificate?",
    "options": [
      "Temporary suspension",
      "Permanent revocation",
      "Civil penalties",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 73,
    "question":
        "What should a remote pilot do if they witness unsafe sUAS operations by another pilot?",
    "options": [
      "Report it to the FAA",
      "Confront the pilot",
      "Ignore the behavior",
      "Document the incident"
    ],
    "answer_index": 0,
  },
  {
    "id": 74,
    "question":
        "How can a remote pilot ensure compliance with privacy laws during sUAS operations?",
    "options": [
      "Avoid flying over private property",
      "Obtain consent from property owners",
      "Follow local regulations",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 75,
    "question": "What is the primary ethical consideration in sUAS operations?",
    "options": [
      "Maximizing profit",
      "Ensuring public safety",
      "Minimizing operational costs",
      "Enhancing flight performance"
    ],
    "answer_index": 1,
  },
  {
    "id": 76,
    "question":
        "What is required to operate a sUAS beyond visual line of sight (BVLOS)?",
    "options": [
      "ATC authorization",
      "Waiver from the FAA",
      "Visual observer",
      "Advanced pilot certificate"
    ],
    "answer_index": 1,
  },
  {
    "id": 77,
    "question":
        "Which of the following operations would require a waiver under Part 107?",
    "options": [
      "Night operations",
      "Flying over people",
      "Flying in controlled airspace",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 78,
    "question":
        "How can a remote pilot apply for a waiver to operate beyond Part 107 regulations?",
    "options": [
      "Submit a request through the FAA website",
      "Contact local ATC",
      "File a NOTAM",
      "Submit a written request to the FAA"
    ],
    "answer_index": 0,
  },
  {
    "id": 79,
    "question":
        "What is the maximum allowable weight for a sUAS under Part 107?",
    "options": ["25 lbs", "50 lbs", "55 lbs", "75 lbs"],
    "answer_index": 2,
  },
  {
    "id": 80,
    "question":
        "Which of the following is a requirement for operating multiple sUAS simultaneously?",
    "options": [
      "Visual observers for each sUAS",
      "Waiver from the FAA",
      "Advanced pilot certificate",
      "ATC authorization"
    ],
    "answer_index": 1,
  },
  {
    "id": 81,
    "question": "What is the purpose of a preflight inspection?",
    "options": [
      "To ensure the sUAS is in safe operating condition",
      "To check battery levels",
      "To verify GPS signal",
      "All of the above"
    ],
    "answer_index": 0,
  },
  {
    "id": 82,
    "question":
        "What should a remote pilot do if the preflight inspection reveals a defect in the sUAS?",
    "options": [
      "Proceed with the flight",
      "Repair the defect before flying",
      "Notify the FAA",
      "Use a backup sUAS"
    ],
    "answer_index": 1,
  },
  {
    "id": 83,
    "question": "What is included in a preflight briefing for sUAS operations?",
    "options": [
      "Weather conditions",
      "Flight path",
      "Emergency procedures",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 84,
    "question": "What is the primary goal of preflight planning?",
    "options": [
      "To ensure a safe and successful flight",
      "To maximize flight duration",
      "To minimize operational costs",
      "To comply with FAA regulations"
    ],
    "answer_index": 0,
  },
  {
    "id": 85,
    "question":
        "What should a remote pilot do to ensure the safety of non-participants during sUAS operations?",
    "options": [
      "Fly at a high altitude",
      "Use a visual observer",
      "Keep non-participants clear of the operational area",
      "Announce the flight plan to local authorities"
    ],
    "answer_index": 2,
  },
  {
    "id": 86,
    "question": "What is the primary security concern in sUAS operations?",
    "options": [
      "Unauthorized access to the sUAS",
      "Theft of the sUAS",
      "Interference with other aircraft",
      "Unauthorized data capture"
    ],
    "answer_index": 0,
  },
  {
    "id": 87,
    "question": "How can a remote pilot secure the sUAS during operations?",
    "options": [
      "Use encryption for data transmission",
      "Implement access controls",
      "Monitor the flight area",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 88,
    "question":
        "What should a remote pilot do if they suspect interference with the sUAS control link?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Report it to the FAA",
      "Change the control frequency"
    ],
    "answer_index": 1,
  },
  {
    "id": 89,
    "question":
        "Which of the following is a recommended practice for ensuring data security in sUAS operations?",
    "options": [
      "Regular software updates",
      "Using a secure communication link",
      "Encrypting data storage",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 90,
    "question":
        "What is the recommended action if a remote pilot identifies a security breach during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Report it to the FAA",
      "Notify local authorities"
    ],
    "answer_index": 1,
  },
  {
    "id": 91,
    "question":
        "What is the purpose of keeping detailed flight logs for sUAS operations?",
    "options": [
      "To track flight hours",
      "To ensure compliance with FAA regulations",
      "To monitor sUAS performance",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 92,
    "question":
        "How long should a remote pilot retain maintenance records for the sUAS?",
    "options": ["6 months", "1 year", "2 years", "5 years"],
    "answer_index": 1,
  },
  {
    "id": 93,
    "question": "What information should be included in a flight log?",
    "options": [
      "Date and time of flight",
      "Flight duration",
      "Location of flight",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 94,
    "question":
        "What is the primary purpose of recording sUAS maintenance activities?",
    "options": [
      "To track maintenance costs",
      "To ensure the sUAS is in safe operating condition",
      "To monitor battery performance",
      "To comply with insurance requirements"
    ],
    "answer_index": 1,
  },
  {
    "id": 95,
    "question": "When should a remote pilot update the sUAS maintenance log?",
    "options": [
      "After every flight",
      "After each maintenance activity",
      "Monthly",
      "Annually"
    ],
    "answer_index": 1,
  },
  {
    "id": 96,
    "question":
        "What should a remote pilot do to respect privacy during sUAS operations?",
    "options": [
      "Avoid flying over private property without permission",
      "Inform people in the vicinity of the flight",
      "Follow local privacy laws",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 97,
    "question":
        "What is the ethical consideration when capturing images or videos with a sUAS?",
    "options": [
      "Ensure the subjects are aware and have given consent",
      "Avoid capturing sensitive information",
      "Respect the privacy of individuals",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 98,
    "question":
        "How can a remote pilot demonstrate ethical behavior in sUAS operations?",
    "options": [
      "By ensuring public safety",
      "By following all regulations",
      "By respecting privacy rights",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 99,
    "question":
        "What is the consequence of violating privacy laws during sUAS operations?",
    "options": [
      "Fines and penalties",
      "Suspension of remote pilot certificate",
      "Legal action",
      "All of the above"
    ],
    "answer_index": 3,
  },
  {
    "id": 100,
    "question":
        "What should a remote pilot do if they inadvertently capture private information during a flight?",
    "options": [
      "Delete the information immediately",
      "Report it to the FAA",
      "Notify the affected individuals",
      "All of the above"
    ],
    "answer_index": 0,
  }
];

const List regulations_data = [
  {
    "id": 1,
    "question":
        "What is the maximum allowable altitude for sUAS operations under Part 107?",
    "options": ["500 feet AGL", "400 feet AGL", "300 feet AGL", "200 feet AGL"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question": "What is required to operate a sUAS in Class B airspace?",
    "options": [
      "Permission from the local airport authority",
      "A special license",
      "ATC authorization",
      "A visual observer"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question":
        "What is the minimum visibility required for sUAS operations under Part 107?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question":
        "What is the minimum distance a sUAS must maintain from clouds under Part 107?",
    "options": [
      "500 feet below and 2,000 feet horizontally",
      "700 feet below and 1,500 feet horizontally",
      "1,000 feet below and 1 mile horizontally",
      "500 feet below and 1,000 feet horizontally"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "What is the maximum groundspeed allowed for sUAS operations under Part 107?",
    "options": ["87 knots", "100 knots", "120 knots", "140 knots"],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question":
        "What is the minimum age requirement for a remote pilot certificate under Part 107?",
    "options": ["14 years old", "16 years old", "18 years old", "21 years old"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "How long is a remote pilot certificate valid before it needs to be renewed?",
    "options": ["6 months", "12 months", "24 months", "36 months"],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question": "What is the maximum weight limit for a sUAS under Part 107?",
    "options": ["25 pounds", "35 pounds", "45 pounds", "55 pounds"],
    "answer_index": 3,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question": "What should a remote pilot do if they experience a flyaway?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Land immediately",
      "Notify the FAA within 10 days"
    ],
    "answer_index": 3,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What is the minimum time period a remote pilot must abstain from alcohol consumption before operating a sUAS?",
    "options": ["8 hours", "12 hours", "16 hours", "24 hours"],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 11,
    "question":
        "What is required if a remote pilot wishes to deviate from Part 107 regulations in an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question": "What is the purpose of a NOTAM?",
    "options": [
      "To inform pilots of potential hazards",
      "To provide weather updates",
      "To announce air traffic control changes",
      "To notify pilots of regulatory changes"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining communication with ATC",
      "Monitoring weather conditions"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "What is the maximum allowable blood alcohol concentration (BAC) for a remote pilot operating a sUAS?",
    "options": ["0.02%", "0.04%", "0.08%", "0.10%"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question":
        "What is the minimum distance a sUAS must maintain from a person not directly participating in the operation?",
    "options": ["100 feet", "200 feet", "300 feet", "400 feet"],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question": "What is required to operate a sUAS at night under Part 107?",
    "options": [
      "A waiver from the FAA",
      "Special night vision equipment",
      "A visual observer",
      "A minimum of 3 hours of night flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question": "What is the minimum visibility required for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question":
        "What should a remote pilot do if they experience a communication failure?",
    "options": [
      "Continue the flight as planned",
      "Attempt to regain communication",
      "Land immediately",
      "Notify the FAA"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "What is the primary purpose of the FAA's Part 107 regulations?",
    "options": [
      "To ensure the safety of sUAS operations",
      "To limit the number of sUAS in the air",
      "To provide a framework for commercial sUAS operations",
      "To restrict sUAS operations near airports"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question": "What is required if a sUAS causes serious injury to a person?",
    "options": [
      "Continue the flight",
      "Attempt to provide first aid",
      "Notify local authorities",
      "Report the incident to the FAA within 10 days"
    ],
    "answer_index": 3,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 21,
    "question": "What is the maximum groundspeed allowed for sUAS operations?",
    "options": ["87 knots", "100 knots", "120 knots", "140 knots"],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question":
        "What is the purpose of a Certificate of Waiver or Authorization (COA)?",
    "options": [
      "To allow deviation from certain regulatory requirements",
      "To provide weather updates",
      "To inform pilots of potential hazards",
      "To announce air traffic control changes"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 23,
    "question":
        "What is the minimum age requirement to obtain a remote pilot certificate under Part 107?",
    "options": ["14 years old", "16 years old", "18 years old", "21 years old"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question": "What is required to operate a sUAS over a populated area?",
    "options": [
      "A waiver from the FAA",
      "Special insurance",
      "A visual observer",
      "A minimum of 10 hours of flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining communication with ATC",
      "Monitoring weather conditions"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question":
        "What is required to operate a sUAS beyond visual line of sight (BVLOS)?",
    "options": [
      "A waiver from the FAA",
      "Special long-range equipment",
      "A visual observer",
      "A minimum of 50 hours of flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question": "What is the maximum allowable altitude for sUAS operations?",
    "options": ["500 feet AGL", "400 feet AGL", "300 feet AGL", "200 feet AGL"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question": "What is required to operate a sUAS in Class D airspace?",
    "options": [
      "Permission from the local airport authority",
      "A special license",
      "ATC authorization",
      "A visual observer"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question":
        "What is the minimum distance a sUAS must maintain from a person not directly participating in the operation?",
    "options": ["100 feet", "200 feet", "300 feet", "400 feet"],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question": "What is required to operate a sUAS at night under Part 107?",
    "options": [
      "A waiver from the FAA",
      "Special night vision equipment",
      "A visual observer",
      "A minimum of 3 hours of night flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 47,
    "question":
        "What is the minimum distance a sUAS must maintain from a person not directly participating in the operation?",
    "options": ["100 feet", "200 feet", "300 feet", "400 feet"],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 48,
    "question": "What is required to operate a sUAS in Class B airspace?",
    "options": [
      "Permission from the local airport authority",
      "A special license",
      "ATC authorization",
      "A visual observer"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 49,
    "question":
        "What is required to operate a sUAS beyond visual line of sight (BVLOS)?",
    "options": [
      "A waiver from the FAA",
      "Special long-range equipment",
      "A visual observer",
      "A minimum of 50 hours of flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 50,
    "question":
        "What is the minimum age requirement for a remote pilot certificate under Part 107?",
    "options": ["14 years old", "16 years old", "18 years old", "21 years old"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 51,
    "question":
        "How long is a remote pilot certificate valid before it needs to be renewed?",
    "options": ["6 months", "12 months", "24 months", "36 months"],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 52,
    "question":
        "What is required if a remote pilot wishes to deviate from Part 107 regulations in an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 53,
    "question": "What is required to operate a sUAS over a populated area?",
    "options": [
      "A waiver from the FAA",
      "Special insurance",
      "A visual observer",
      "A minimum of 10 hours of flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 54,
    "question":
        "What is the minimum time period a remote pilot must abstain from alcohol consumption before operating a sUAS?",
    "options": ["8 hours", "12 hours", "16 hours", "24 hours"],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 55,
    "question":
        "What is the purpose of a Certificate of Waiver or Authorization (COA)?",
    "options": [
      "To allow deviation from certain regulatory requirements",
      "To provide weather updates",
      "To inform pilots of potential hazards",
      "To announce air traffic control changes"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 56,
    "question":
        "What is the maximum groundspeed allowed for sUAS operations under Part 107?",
    "options": ["87 knots", "100 knots", "120 knots", "140 knots"],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 57,
    "question": "What should a remote pilot do if they experience a flyaway?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Land immediately",
      "Notify the FAA within 10 days"
    ],
    "answer_index": 3,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 58,
    "question":
        "What is the minimum visibility required for sUAS operations under Part 107?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 59,
    "question":
        "What is the maximum allowable altitude for sUAS operations under Part 107?",
    "options": ["500 feet AGL", "400 feet AGL", "300 feet AGL", "200 feet AGL"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 60,
    "question": "What is required to operate a sUAS in Class D airspace?",
    "options": [
      "Permission from the local airport authority",
      "A special license",
      "ATC authorization",
      "A visual observer"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 61,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining communication with ATC",
      "Monitoring weather conditions"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 62,
    "question": "What is required to operate a sUAS in Class C airspace?",
    "options": [
      "Permission from the local airport authority",
      "A special license",
      "ATC authorization",
      "A visual observer"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 63,
    "question":
        "What is the minimum age requirement to obtain a remote pilot certificate under Part 107?",
    "options": ["14 years old", "16 years old", "18 years old", "21 years old"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 64,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining communication with ATC",
      "Monitoring weather conditions"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 65,
    "question":
        "What is required to operate a sUAS beyond visual line of sight (BVLOS)?",
    "options": [
      "A waiver from the FAA",
      "Special long-range equipment",
      "A visual observer",
      "A minimum of 50 hours of flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 66,
    "question":
        "What is required if a remote pilot wishes to deviate from Part 107 regulations in an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 67,
    "question":
        "What is the maximum allowable blood alcohol concentration (BAC) for a remote pilot operating a sUAS?",
    "options": ["0.02%", "0.04%", "0.08%", "0.10%"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 68,
    "question": "What is the minimum visibility required for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 69,
    "question": "What is the maximum weight limit for a sUAS under Part 107?",
    "options": ["25 pounds", "35 pounds", "45 pounds", "55 pounds"],
    "answer_index": 3,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 70,
    "question": "What is required to operate a sUAS at night under Part 107?",
    "options": [
      "A waiver from the FAA",
      "Special night vision equipment",
      "A visual observer",
      "A minimum of 3 hours of night flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 71,
    "question": "What is required to operate a sUAS over a populated area?",
    "options": [
      "A waiver from the FAA",
      "Special insurance",
      "A visual observer",
      "A minimum of 10 hours of flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 72,
    "question": "What is the maximum allowable altitude for sUAS operations?",
    "options": ["500 feet AGL", "400 feet AGL", "300 feet AGL", "200 feet AGL"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 73,
    "question": "What is required to operate a sUAS in controlled airspace?",
    "options": [
      "ATC authorization",
      "A special license",
      "A visual observer",
      "Permission from the local airport authority"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 74,
    "question": "What is required to operate a sUAS in Class B airspace?",
    "options": [
      "Permission from the local airport authority",
      "A special license",
      "ATC authorization",
      "A visual observer"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 75,
    "question":
        "What is the minimum distance a sUAS must maintain from clouds?",
    "options": [
      "500 feet below and 2,000 feet horizontally",
      "700 feet below and 1,500 feet horizontally",
      "1,000 feet below and 1 mile horizontally",
      "500 feet below and 1,000 feet horizontally"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 76,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining communication with ATC",
      "Monitoring weather conditions"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 77,
    "question":
        "What is the minimum time period a remote pilot must abstain from alcohol consumption before operating a sUAS?",
    "options": ["8 hours", "12 hours", "16 hours", "24 hours"],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 78,
    "question":
        "What is the primary purpose of the FAA's Part 107 regulations?",
    "options": [
      "To ensure the safety of sUAS operations",
      "To limit the number of sUAS in the air",
      "To provide a framework for commercial sUAS operations",
      "To restrict sUAS operations near airports"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 79,
    "question":
        "What is the maximum allowable blood alcohol concentration (BAC) for a remote pilot operating a sUAS?",
    "options": ["0.02%", "0.04%", "0.08%", "0.10%"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 80,
    "question":
        "What is the minimum distance a sUAS must maintain from a person not directly participating in the operation?",
    "options": ["100 feet", "200 feet", "300 feet", "400 feet"],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 81,
    "question":
        "What is required if a remote pilot wishes to deviate from Part 107 regulations in an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 82,
    "question": "What is required to operate a sUAS at night under Part 107?",
    "options": [
      "A waiver from the FAA",
      "Special night vision equipment",
      "A visual observer",
      "A minimum of 3 hours of night flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 83,
    "question": "What is the minimum visibility required for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 84,
    "question": "What is required to operate a sUAS in Class C airspace?",
    "options": [
      "Permission from the local airport authority",
      "A special license",
      "ATC authorization",
      "A visual observer"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 85,
    "question": "What is the maximum allowable altitude for sUAS operations?",
    "options": ["500 feet AGL", "400 feet AGL", "300 feet AGL", "200 feet AGL"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 86,
    "question":
        "What is the minimum age requirement to obtain a remote pilot certificate under Part 107?",
    "options": ["14 years old", "16 years old", "18 years old", "21 years old"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 87,
    "question":
        "What is required to operate a sUAS beyond visual line of sight (BVLOS)?",
    "options": [
      "A waiver from the FAA",
      "Special long-range equipment",
      "A visual observer",
      "A minimum of 50 hours of flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 88,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining communication with ATC",
      "Monitoring weather conditions"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 89,
    "question":
        "What is the maximum allowable blood alcohol concentration (BAC) for a remote pilot operating a sUAS?",
    "options": ["0.02%", "0.04%", "0.08%", "0.10%"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 90,
    "question":
        "What is required if a remote pilot wishes to deviate from Part 107 regulations in an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 91,
    "question":
        "What is the maximum allowable altitude for sUAS operations under Part 107?",
    "options": ["500 feet AGL", "400 feet AGL", "300 feet AGL", "200 feet AGL"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 92,
    "question": "What is required to operate a sUAS in Class D airspace?",
    "options": [
      "Permission from the local airport authority",
      "A special license",
      "ATC authorization",
      "A visual observer"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 93,
    "question": "What is the minimum visibility required for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 94,
    "question": "What is the maximum groundspeed allowed for sUAS operations?",
    "options": ["87 knots", "100 knots", "120 knots", "140 knots"],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 95,
    "question":
        "What is the minimum distance a sUAS must maintain from clouds?",
    "options": [
      "500 feet below and 2,000 feet horizontally",
      "700 feet below and 1,500 feet horizontally",
      "1,000 feet below and 1 mile horizontally",
      "500 feet below and 1,000 feet horizontally"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 96,
    "question":
        "What is the minimum age requirement to obtain a remote pilot certificate under Part 107?",
    "options": ["14 years old", "16 years old", "18 years old", "21 years old"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 97,
    "question": "What is required to operate a sUAS over a populated area?",
    "options": [
      "A waiver from the FAA",
      "Special insurance",
      "A visual observer",
      "A minimum of 10 hours of flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 98,
    "question":
        "What is the maximum allowable blood alcohol concentration (BAC) for a remote pilot operating a sUAS?",
    "options": ["0.02%", "0.04%", "0.08%", "0.10%"],
    "answer_index": 1,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 99,
    "question": "What is required to operate a sUAS at night under Part 107?",
    "options": [
      "A waiver from the FAA",
      "Special night vision equipment",
      "A visual observer",
      "A minimum of 3 hours of night flying experience"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  },
  {
    "id": 100,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining communication with ATC",
      "Monitoring weather conditions"
    ],
    "answer_index": 0,
    "category": "Regulations",
    "figure": null,
    "area": null
  }
];

const List loading_and_performance_data = [
  {
    "id": 1,
    "question": "What is the maximum ground speed for a sUAS under Part 107?",
    "options": ["80 knots", "87 knots", "100 knots", "120 knots"],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question": "What is the effect of a forward center of gravity on a sUAS?",
    "options": [
      "Increased stability",
      "Decreased stability",
      "Increased lift",
      "Decreased lift"
    ],
    "answer_index": 0,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question":
        "Which factor affects the performance of a sUAS during takeoff?",
    "options": [
      "Wind direction",
      "Air temperature",
      "Air pressure",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question": "How does humidity affect sUAS performance?",
    "options": [
      "Increases performance",
      "Decreases performance",
      "No effect",
      "Only affects camera quality"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "What should be checked before each flight to ensure proper balance and stability of the sUAS?",
    "options": [
      "Battery levels",
      "Weather conditions",
      "Weight and balance",
      "Propeller tightness"
    ],
    "answer_index": 2,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question":
        "What is the primary factor that determines the performance of a sUAS during flight?",
    "options": [
      "Altitude",
      "Weather conditions",
      "Weight and balance",
      "Battery level"
    ],
    "answer_index": 3,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What effect does high density altitude have on sUAS performance?",
    "options": [
      "Increases lift",
      "Decreases lift",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question":
        "Which weather phenomenon is particularly hazardous to sUAS operations due to sudden and severe wind shifts?",
    "options": ["Microbursts", "Fog", "Rain showers", "Clear air turbulence"],
    "answer_index": 0,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question":
        "What effect can high temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What is the maximum takeoff weight allowed for a sUAS under Part 107?",
    "options": ["25 pounds", "35 pounds", "45 pounds", "55 pounds"],
    "answer_index": 3,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question": "What is the effect of a rearward center of gravity on a sUAS?",
    "options": [
      "Increased stability",
      "Decreased stability",
      "Increased lift",
      "Decreased lift"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "Which factor has the greatest impact on the flight time of a sUAS?",
    "options": [
      "Wind speed",
      "Air temperature",
      "Weight and balance",
      "Battery capacity"
    ],
    "answer_index": 3,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What is the purpose of checking the weight and balance of a sUAS before flight?",
    "options": [
      "To ensure safe and stable flight",
      "To increase flight speed",
      "To decrease battery usage",
      "To comply with FAA regulations"
    ],
    "answer_index": 0,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "How can a remote pilot mitigate the effects of high-density altitude on sUAS performance?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Increase speed",
      "Decrease battery usage"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question":
        "What is the recommended action if a remote pilot notices a decrease in sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Land as soon as possible",
      "Continue the flight"
    ],
    "answer_index": 2,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question":
        "What effect can cold temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question": "How does wind affect the performance of a sUAS during flight?",
    "options": [
      "Increases stability",
      "Decreases stability",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question": "What is the purpose of pre-flight checks for a sUAS?",
    "options": [
      "To ensure the sUAS is in safe operating condition",
      "To increase flight speed",
      "To decrease battery usage",
      "To comply with FAA regulations"
    ],
    "answer_index": 0,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "How can a remote pilot reduce the impact of wind on sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Fly in the direction of the wind",
      "Fly in the opposite direction of the wind",
      "Land as soon as possible"
    ],
    "answer_index": 3,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question":
        "What is the recommended action if a remote pilot notices a decrease in battery performance during flight?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Land as soon as possible",
      "Continue the flight"
    ],
    "answer_index": 2,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 21,
    "question":
        "What is the maximum allowable weight of a sUAS, including everything on board or attached, at takeoff under Part 107?",
    "options": ["25 pounds", "35 pounds", "45 pounds", "55 pounds"],
    "answer_index": 3,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question":
        "What is the effect of high-density altitude on sUAS performance?",
    "options": [
      "Increases lift",
      "Decreases lift",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 23,
    "question":
        "What is the purpose of checking the weight and balance of a sUAS before flight?",
    "options": [
      "To ensure safe and stable flight",
      "To increase flight speed",
      "To decrease battery usage",
      "To comply with FAA regulations"
    ],
    "answer_index": 0,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question":
        "How can a remote pilot mitigate the effects of high-density altitude on sUAS performance?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Increase speed",
      "Decrease battery usage"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question":
        "What is the recommended action if a remote pilot notices a decrease in sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Land as soon as possible",
      "Continue the flight"
    ],
    "answer_index": 2,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question":
        "What effect can cold temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question": "How does wind affect the performance of a sUAS during flight?",
    "options": [
      "Increases stability",
      "Decreases stability",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question": "What is the purpose of pre-flight checks for a sUAS?",
    "options": [
      "To ensure the sUAS is in safe operating condition",
      "To increase flight speed",
      "To decrease battery usage",
      "To comply with FAA regulations"
    ],
    "answer_index": 0,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question":
        "How can a remote pilot reduce the impact of wind on sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Fly in the direction of the wind",
      "Fly in the opposite direction of the wind",
      "Land as soon as possible"
    ],
    "answer_index": 3,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question":
        "What is the recommended action if a remote pilot notices a decrease in battery performance during flight?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Land as soon as possible",
      "Continue the flight"
    ],
    "answer_index": 2,
    "category": "Loading and Performance",
    "figure": null,
    "area": null
  }
];

const List operations_and_procedures_data = [
  {
    "id": 1,
    "question": "Under what conditions can you fly a sUAS at night?",
    "options": [
      "With a waiver from the FAA",
      "With a strobe light visible from 3 miles",
      "During civil twilight only",
      "Night operations are prohibited under Part 107"
    ],
    "answer_index": 0,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question":
        "What is required to operate a sUAS within 30 minutes after sunset?",
    "options": [
      "FAA authorization",
      "Anti-collision lights visible for 3 statute miles",
      "Visual observer",
      "Strobe lights visible for 1 statute mile"
    ],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question":
        "What action should be taken if a remote pilot experiences a flyaway?",
    "options": [
      "Attempt to regain control immediately",
      "Report the incident to the FAA within 10 days",
      "Notify local authorities",
      "File an accident report with the NTSB"
    ],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question":
        "What is the required action if a sUAS experiences a loss of GPS signal during flight?",
    "options": [
      "Continue flight as planned",
      "Land as soon as possible",
      "Fly in manual mode",
      "Notify the FAA"
    ],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "What should a remote pilot do before starting any flight operation?",
    "options": [
      "Check the weather",
      "Inspect the sUAS",
      "Plan the flight path",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question": "How can a remote pilot mitigate risks during sUAS operations?",
    "options": [
      "By maintaining VLOS",
      "Using a visual observer",
      "Conducting pre-flight checks",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "To ensure the safety of the operation",
      "To operate the controls",
      "To manage the flight logs",
      "To maintain VLOS"
    ],
    "answer_index": 0,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question":
        "Who is responsible for informing the participants about emergency procedures?",
    "options": [
      "Visual observer",
      "Remote pilot in command",
      "Person manipulating the controls",
      "Local authorities"
    ],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question": "What is the purpose of a visual observer in sUAS operations?",
    "options": [
      "To maintain VLOS",
      "To communicate with ATC",
      "To operate the controls",
      "To manage the flight logs"
    ],
    "answer_index": 0,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "When is it necessary to file a report with the FAA after an accident?",
    "options": [
      "Within 24 hours",
      "Within 48 hours",
      "Within 10 days",
      "Immediately"
    ],
    "answer_index": 2,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question": "What must be included in an accident report to the FAA?",
    "options": [
      "Weather conditions",
      "Details of the accident",
      "Pilot’s certificate number",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "What is required for a remote pilot to operate in Class B airspace?",
    "options": [
      "A special license",
      "ATC authorization",
      "A visual observer",
      "Permission from the local airport authority"
    ],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What action should a remote pilot take if a person is injured during sUAS operations?",
    "options": [
      "Continue the flight",
      "Land the sUAS immediately",
      "Report the injury to the FAA within 10 days",
      "Notify local emergency services"
    ],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question": "What is required to operate a sUAS from a moving vehicle?",
    "options": [
      "ATC authorization",
      "Visual observer",
      "Waiver from the FAA",
      "Daylight operations only"
    ],
    "answer_index": 2,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question": "What is the maximum altitude for a sUAS under Part 107?",
    "options": ["500 feet AGL", "400 feet AGL", "600 feet AGL", "300 feet AGL"],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question":
        "What is the required action if a sUAS experiences a flyaway during flight?",
    "options": [
      "Continue the flight",
      "Land as soon as possible",
      "Report the incident to the FAA within 10 days",
      "Notify local authorities"
    ],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question": "What is the primary consideration in an emergency situation?",
    "options": [
      "Safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question":
        "What should a remote pilot do if they lose visual contact with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain visual contact",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "What is required if a remote pilot needs to deviate from Part 107 regulations during an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question": "What should be included in a pre-flight inspection of a sUAS?",
    "options": [
      "Check the battery levels",
      "Inspect the propellers",
      "Verify GPS signal",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 21,
    "question": "How often should a sUAS be inspected for maintenance?",
    "options": [
      "Before every flight",
      "Once a month",
      "Every six months",
      "Annually"
    ],
    "answer_index": 0,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question":
        "Who is responsible for maintaining the sUAS in a condition for safe operation?",
    "options": [
      "The owner",
      "The visual observer",
      "The remote pilot in command",
      "The manufacturer"
    ],
    "answer_index": 2,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 23,
    "question": "What is the purpose of keeping maintenance logs for a sUAS?",
    "options": [
      "To track flight hours",
      "To ensure compliance with FAA regulations",
      "To monitor battery performance",
      "To record inspections and repairs"
    ],
    "answer_index": 3,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question": "When should a remote pilot replace a damaged propeller?",
    "options": [
      "Before the next flight",
      "After 10 flight hours",
      "Only if it affects performance",
      "During the annual inspection"
    ],
    "answer_index": 0,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question":
        "What is the primary goal of risk management in sUAS operations?",
    "options": [
      "To minimize operational costs",
      "To maximize flight duration",
      "To ensure safety of the operation",
      "To comply with FAA regulations"
    ],
    "answer_index": 2,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question":
        "Which tool can be used to identify potential hazards in sUAS operations?",
    "options": [
      "Pre-flight checklist",
      "Weather briefing",
      "Risk assessment matrix",
      "Maintenance log"
    ],
    "answer_index": 2,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question":
        "What should a remote pilot do to mitigate risks during a flight?",
    "options": [
      "Maintain VLOS",
      "Use a visual observer",
      "Conduct pre-flight checks",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question":
        "How can a remote pilot ensure compliance with see-and-avoid requirements?",
    "options": [
      "Use binoculars",
      "Fly in controlled airspace",
      "Maintain situational awareness",
      "Use a first-person view camera"
    ],
    "answer_index": 2,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question":
        "What is the recommended action if a remote pilot identifies a potential hazard during flight?",
    "options": [
      "Continue the flight",
      "Report it to the FAA",
      "Land immediately",
      "Notify local authorities"
    ],
    "answer_index": 2,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question":
        "What is required to legally operate a sUAS for commercial purposes?",
    "options": [
      "FAA authorization",
      "Remote pilot certificate",
      "Insurance coverage",
      "Local government approval"
    ],
    "answer_index": 1,
    "category": "Operations and Procedures",
    "figure": null,
    "area": null
  }
];

const List weather_data = [
  {
    "id": 1,
    "question":
        "What is the minimum visibility requirement for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question": "How does humidity affect sUAS performance?",
    "options": [
      "Increases performance",
      "Decreases performance",
      "No effect",
      "Only affects camera quality"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question":
        "What type of weather phenomenon is particularly hazardous to sUAS operations due to sudden and severe wind shifts?",
    "options": ["Microbursts", "Fog", "Rain showers", "Clear air turbulence"],
    "answer_index": 0,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question":
        "What effect can high temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "What is the required minimum distance from clouds for sUAS operations?",
    "options": [
      "500 feet below and 2,000 feet horizontally",
      "700 feet below and 1,500 feet horizontally",
      "1,000 feet below and 1 mile horizontally",
      "There is no minimum distance required"
    ],
    "answer_index": 0,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question":
        "What is the effect of high-density altitude on sUAS performance?",
    "options": [
      "Increases lift",
      "Decreases lift",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What effect can cold temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question":
        "What is the primary hazard associated with operating a sUAS in icing conditions?",
    "options": [
      "Loss of lift",
      "Increased battery efficiency",
      "Improved flight performance",
      "No effect"
    ],
    "answer_index": 0,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question":
        "How can a remote pilot obtain weather information before a flight?",
    "options": [
      "Check the METAR reports",
      "Use a weather app",
      "Contact a flight service station",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What type of weather is most likely to be associated with a temperature inversion?",
    "options": [
      "Clear skies and calm winds",
      "Thunderstorms",
      "Heavy rainfall",
      "Turbulence"
    ],
    "answer_index": 0,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question":
        "What is the recommended action if a remote pilot encounters unexpected weather during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Contact ATC",
      "Change the flight path"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "What is the primary consideration when planning a sUAS flight in mountainous terrain?",
    "options": [
      "Altitude",
      "Weather conditions",
      "Weight and balance",
      "Battery level"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question": "What is the effect of humidity on sUAS performance?",
    "options": [
      "Increases performance",
      "Decreases performance",
      "No effect",
      "Only affects camera quality"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "What is the primary hazard associated with operating a sUAS in fog?",
    "options": [
      "Loss of lift",
      "Reduced visibility",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question":
        "How can a remote pilot determine the stability of the atmosphere?",
    "options": [
      "By checking the weather forecast",
      "By observing cloud types",
      "By monitoring temperature changes",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question":
        "What type of weather is typically associated with a low-pressure system?",
    "options": [
      "Clear skies",
      "Stormy weather",
      "Calm winds",
      "Dry conditions"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question":
        "What is the primary hazard associated with operating a sUAS in a thunderstorm?",
    "options": [
      "Loss of lift",
      "Lightning strikes",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question":
        "What is the primary hazard associated with operating a sUAS in strong winds?",
    "options": [
      "Loss of lift",
      "Turbulence",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "What is the recommended action if a remote pilot encounters turbulence during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Contact ATC",
      "Change the flight path"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question":
        "How can a remote pilot ensure compliance with weather requirements during sUAS operations?",
    "options": [
      "By checking weather reports",
      "By monitoring weather conditions",
      "By adhering to weather minimums",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 21,
    "question":
        "What is the primary hazard associated with operating a sUAS in rain?",
    "options": [
      "Loss of lift",
      "Reduced visibility",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question":
        "What is the effect of high-density altitude on sUAS performance?",
    "options": [
      "Increases lift",
      "Decreases lift",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 23,
    "question":
        "What type of weather phenomenon is particularly hazardous to sUAS operations due to sudden and severe wind shifts?",
    "options": ["Microbursts", "Fog", "Rain showers", "Clear air turbulence"],
    "answer_index": 0,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question":
        "How can a remote pilot determine the stability of the atmosphere?",
    "options": [
      "By checking the weather forecast",
      "By observing cloud types",
      "By monitoring temperature changes",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question":
        "What is the primary hazard associated with operating a sUAS in icing conditions?",
    "options": [
      "Loss of lift",
      "Increased battery efficiency",
      "Improved flight performance",
      "No effect"
    ],
    "answer_index": 0,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question":
        "What effect can cold temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question":
        "What is the minimum visibility requirement for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question":
        "What type of weather is most likely to be associated with a temperature inversion?",
    "options": [
      "Clear skies and calm winds",
      "Thunderstorms",
      "Heavy rainfall",
      "Turbulence"
    ],
    "answer_index": 0,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question":
        "What is the primary consideration when planning a sUAS flight in mountainous terrain?",
    "options": [
      "Altitude",
      "Weather conditions",
      "Weight and balance",
      "Battery level"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question":
        "What is the recommended action if a remote pilot encounters unexpected weather during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Contact ATC",
      "Change the flight path"
    ],
    "answer_index": 1,
    "category": "Weather",
    "figure": null,
    "area": null
  }
];

const List risk_management_data = [
  {
    "id": 1,
    "question": "How can a remote pilot mitigate risks during sUAS operations?",
    "options": [
      "By maintaining VLOS",
      "Using a visual observer",
      "Conducting pre-flight checks",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question":
        "What is the primary goal of risk management in sUAS operations?",
    "options": [
      "To minimize operational costs",
      "To maximize flight duration",
      "To ensure safety of the operation",
      "To comply with FAA regulations"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question":
        "Which tool can be used to identify potential hazards in sUAS operations?",
    "options": [
      "Pre-flight checklist",
      "Weather briefing",
      "Risk assessment matrix",
      "Maintenance log"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question":
        "What should a remote pilot do to mitigate risks during a flight?",
    "options": [
      "Maintain VLOS",
      "Use a visual observer",
      "Conduct pre-flight checks",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "How can a remote pilot ensure compliance with see-and-avoid requirements?",
    "options": [
      "Use binoculars",
      "Fly in controlled airspace",
      "Maintain situational awareness",
      "Use a first-person view camera"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question":
        "What is the recommended action if a remote pilot identifies a potential hazard during flight?",
    "options": [
      "Continue the flight",
      "Report it to the FAA",
      "Land immediately",
      "Notify local authorities"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What is required to legally operate a sUAS for commercial purposes?",
    "options": [
      "FAA authorization",
      "Remote pilot certificate",
      "Insurance coverage",
      "Local government approval"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question": "What is the primary consideration in an emergency situation?",
    "options": [
      "Safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question":
        "What should a remote pilot do if they lose visual contact with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain visual contact",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What is the required action if a sUAS experiences a flyaway during flight?",
    "options": [
      "Continue the flight",
      "Land as soon as possible",
      "Report the incident to the FAA within 10 days",
      "Notify local authorities"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 11,
    "question": "What must be included in an accident report to the FAA?",
    "options": [
      "Weather conditions",
      "Details of the accident",
      "Pilot’s certificate number",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "What is required for a remote pilot to operate in Class B airspace?",
    "options": [
      "A special license",
      "ATC authorization",
      "A visual observer",
      "Permission from the local airport authority"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What action should a remote pilot take if a person is injured during sUAS operations?",
    "options": [
      "Continue the flight",
      "Land the sUAS immediately",
      "Report the injury to the FAA within 10 days",
      "Notify local emergency services"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question": "What is required to operate a sUAS from a moving vehicle?",
    "options": [
      "ATC authorization",
      "Visual observer",
      "Waiver from the FAA",
      "Daylight operations only"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question": "What is the maximum altitude for a sUAS under Part 107?",
    "options": ["500 feet AGL", "400 feet AGL", "600 feet AGL", "300 feet AGL"],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question":
        "What is the primary responsibility of the remote pilot in command?",
    "options": [
      "To ensure the safety of the operation",
      "To operate the controls",
      "To manage the flight logs",
      "To maintain VLOS"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question":
        "Who is responsible for informing the participants about emergency procedures?",
    "options": [
      "Visual observer",
      "Remote pilot in command",
      "Person manipulating the controls",
      "Local authorities"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question":
        "What is the primary hazard associated with operating a sUAS in strong winds?",
    "options": [
      "Loss of lift",
      "Turbulence",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "What is the recommended action if a remote pilot encounters turbulence during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Contact ATC",
      "Change the flight path"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question":
        "How can a remote pilot ensure compliance with weather requirements during sUAS operations?",
    "options": [
      "By checking weather reports",
      "By monitoring weather conditions",
      "By adhering to weather minimums",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 21,
    "question":
        "What is the primary hazard associated with operating a sUAS in rain?",
    "options": [
      "Loss of lift",
      "Reduced visibility",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question":
        "What is the primary goal of risk management in sUAS operations?",
    "options": [
      "To minimize operational costs",
      "To maximize flight duration",
      "To ensure safety of the operation",
      "To comply with FAA regulations"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 23,
    "question":
        "What type of weather phenomenon is particularly hazardous to sUAS operations due to sudden and severe wind shifts?",
    "options": ["Microbursts", "Fog", "Rain showers", "Clear air turbulence"],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question":
        "How can a remote pilot determine the stability of the atmosphere?",
    "options": [
      "By checking the weather forecast",
      "By observing cloud types",
      "By monitoring temperature changes",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question":
        "What is the primary hazard associated with operating a sUAS in icing conditions?",
    "options": [
      "Loss of lift",
      "Increased battery efficiency",
      "Improved flight performance",
      "No effect"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question":
        "What effect can cold temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question":
        "What is the minimum visibility requirement for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question":
        "What type of weather is most likely to be associated with a temperature inversion?",
    "options": [
      "Clear skies and calm winds",
      "Thunderstorms",
      "Heavy rainfall",
      "Turbulence"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question":
        "What is the primary consideration when planning a sUAS flight in mountainous terrain?",
    "options": [
      "Altitude",
      "Weather conditions",
      "Weight and balance",
      "Battery level"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question":
        "What is the recommended action if a remote pilot encounters unexpected weather during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Contact ATC",
      "Change the flight path"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 31,
    "question": "How often should a sUAS be inspected for maintenance?",
    "options": [
      "Before every flight",
      "Once a month",
      "Every six months",
      "Annually"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 32,
    "question":
        "Who is responsible for maintaining the sUAS in a condition for safe operation?",
    "options": [
      "The owner",
      "The visual observer",
      "The remote pilot in command",
      "The manufacturer"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 33,
    "question": "What is the purpose of keeping maintenance logs for a sUAS?",
    "options": [
      "To track flight hours",
      "To ensure compliance with FAA regulations",
      "To monitor battery performance",
      "To record inspections and repairs"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 34,
    "question": "When should a remote pilot replace a damaged propeller?",
    "options": [
      "Before the next flight",
      "After 10 flight hours",
      "Only if it affects performance",
      "During the annual inspection"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 35,
    "question":
        "What is the recommended action if a remote pilot notices a decrease in sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Land as soon as possible",
      "Continue the flight"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 36,
    "question":
        "How can a remote pilot reduce the impact of wind on sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Fly in the direction of the wind",
      "Fly in the opposite direction of the wind",
      "Land as soon as possible"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 37,
    "question": "What is the purpose of pre-flight checks for a sUAS?",
    "options": [
      "To ensure the sUAS is in safe operating condition",
      "To increase flight speed",
      "To decrease battery usage",
      "To comply with FAA regulations"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 38,
    "question": "How does wind affect the performance of a sUAS during flight?",
    "options": [
      "Increases stability",
      "Decreases stability",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 39,
    "question":
        "What effect can cold temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 40,
    "question":
        "What is the purpose of checking the weight and balance of a sUAS before flight?",
    "options": [
      "To ensure safe and stable flight",
      "To increase flight speed",
      "To decrease battery usage",
      "To comply with FAA regulations"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 41,
    "question":
        "Which factor has the greatest impact on the flight time of a sUAS?",
    "options": [
      "Wind speed",
      "Air temperature",
      "Weight and balance",
      "Battery capacity"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 42,
    "question": "What is the effect of a rearward center of gravity on a sUAS?",
    "options": [
      "Increased stability",
      "Decreased stability",
      "Increased lift",
      "Decreased lift"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 43,
    "question":
        "What is the maximum takeoff weight allowed for a sUAS under Part 107?",
    "options": ["25 pounds", "35 pounds", "45 pounds", "55 pounds"],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 44,
    "question":
        "What effect can high temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 45,
    "question":
        "Which weather phenomenon is particularly hazardous to sUAS operations due to sudden and severe wind shifts?",
    "options": ["Microbursts", "Fog", "Rain showers", "Clear air turbulence"],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 46,
    "question":
        "What should be checked before each flight to ensure proper balance and stability of the sUAS?",
    "options": [
      "Battery levels",
      "Weather conditions",
      "Weight and balance",
      "Propeller tightness"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 47,
    "question":
        "What is the primary factor that determines the performance of a sUAS during flight?",
    "options": [
      "Altitude",
      "Weather conditions",
      "Weight and balance",
      "Battery level"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 48,
    "question": "How does humidity affect sUAS performance?",
    "options": [
      "Increases performance",
      "Decreases performance",
      "No effect",
      "Only affects camera quality"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 49,
    "question":
        "Which factor affects the performance of a sUAS during takeoff?",
    "options": [
      "Wind direction",
      "Air temperature",
      "Air pressure",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 50,
    "question": "What is the effect of a forward center of gravity on a sUAS?",
    "options": [
      "Increased stability",
      "Decreased stability",
      "Increased lift",
      "Decreased lift"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 51,
    "question": "What is the maximum ground speed for a sUAS under Part 107?",
    "options": ["80 knots", "87 knots", "100 knots", "120 knots"],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 52,
    "question":
        "Who is responsible for ensuring a sUAS is in safe operating condition before flight?",
    "options": [
      "The owner of the sUAS",
      "The visual observer",
      "The remote pilot in command",
      "The person manipulating the controls"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 53,
    "question":
        "What document must a Remote Pilot in Command (RPIC) have during sUAS operations?",
    "options": [
      "Aircraft logbooks",
      "Remote pilot certificate",
      "Aircraft registration",
      "Maintenance logs"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 54,
    "question":
        "What is the primary goal of risk management in sUAS operations?",
    "options": [
      "To minimize operational costs",
      "To maximize flight duration",
      "To ensure safety of the operation",
      "To comply with FAA regulations"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 55,
    "question":
        "How can a remote pilot ensure compliance with see-and-avoid requirements?",
    "options": [
      "Use binoculars",
      "Fly in controlled airspace",
      "Maintain situational awareness",
      "Use a first-person view camera"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 56,
    "question":
        "What is required to legally operate a sUAS for commercial purposes?",
    "options": [
      "FAA authorization",
      "Remote pilot certificate",
      "Insurance coverage",
      "Local government approval"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 57,
    "question":
        "What action should a remote pilot take if a person is injured during sUAS operations?",
    "options": [
      "Continue the flight",
      "Land the sUAS immediately",
      "Report the injury to the FAA within 10 days",
      "Notify local emergency services"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 58,
    "question":
        "What effect does high density altitude have on sUAS performance?",
    "options": [
      "Increases lift",
      "Decreases lift",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 59,
    "question":
        "What effect can high temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 60,
    "question":
        "What is the primary hazard associated with operating a sUAS in icing conditions?",
    "options": [
      "Loss of lift",
      "Increased battery efficiency",
      "Improved flight performance",
      "No effect"
    ],
    "answer_index": 0,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 61,
    "question":
        "What should be checked before each flight to ensure proper balance and stability of the sUAS?",
    "options": [
      "Battery levels",
      "Weather conditions",
      "Weight and balance",
      "Propeller tightness"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 62,
    "question":
        "What is the effect of high-density altitude on sUAS performance?",
    "options": [
      "Increases lift",
      "Decreases lift",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 63,
    "question":
        "What effect can cold temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 64,
    "question":
        "How can a remote pilot reduce the impact of wind on sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Fly in the direction of the wind",
      "Fly in the opposite direction of the wind",
      "Land as soon as possible"
    ],
    "answer_index": 3,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 65,
    "question": "How does wind affect the performance of a sUAS during flight?",
    "options": [
      "Increases stability",
      "Decreases stability",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Risk Management",
    "figure": null,
    "area": null
  },
  {
    "id": 66,
    "question":
        "What is the recommended action if a remote pilot identifies a potential hazard during flight?",
    "options": [
      "Continue the flight",
      "Report it to the FAA",
      "Land immediately",
      "Notify local authorities"
    ],
    "answer_index": 2,
    "category": "Risk Management",
    "figure": null,
    "area": null
  }
];

const List airspace_weather_minimums_charts_data = [
  {
    "id": 1,
    "question":
        "What is the maximum altitude you can fly a sUAS under Part 107 regulations?",
    "options": ["500 feet AGL", "400 feet AGL", "600 feet AGL", "300 feet AGL"],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question": "What is the required minimum visibility for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question":
        "What is the minimum distance you must maintain from clouds during sUAS operations?",
    "options": [
      "500 feet below and 1,000 feet horizontally",
      "700 feet below and 1,500 feet horizontally",
      "1,000 feet below and 1 mile horizontally",
      "500 feet below and 2,000 feet horizontally"
    ],
    "answer_index": 3,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question":
        "What does a dashed magenta line on a sectional chart indicate? (Refer to Figure 23)",
    "options": [
      "Class B airspace",
      "Class C airspace",
      "Class D airspace",
      "Class E airspace"
    ],
    "answer_index": 3,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig23.jpg",
    "area": 1
  },
  {
    "id": 5,
    "question": "What is required to operate a sUAS in Class B airspace?",
    "options": [
      "A special license",
      "ATC authorization",
      "A visual observer",
      "Permission from the local airport authority"
    ],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question": "Which class of airspace is not depicted on sectional charts?",
    "options": ["Class B", "Class C", "Class D", "Class G"],
    "answer_index": 3,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What type of weather is typically associated with a cold front?",
    "options": ["Clear skies", "Stable air", "Thunderstorms", "High humidity"],
    "answer_index": 3,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": 3
  },
  {
    "id": 8,
    "question":
        "What is the standard temperature lapse rate in the troposphere?",
    "options": [
      "2°C per 1,000 feet",
      "2°C per 1,000 meters",
      "6.5°C per 1,000 feet",
      "6.5°C per 1,000 meters"
    ],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question":
        "What type of airspace is depicted by a solid blue line on a sectional chart?",
    "options": [
      "Class B airspace",
      "Class C airspace",
      "Class D airspace",
      "Class E airspace"
    ],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig12.jpg",
    "area": 5
  },
  {
    "id": 10,
    "question": "What are the basic VFR weather minimums for Class D airspace?",
    "options": [
      "1 statute mile visibility, clear of clouds",
      "3 statute miles visibility, 500 feet below, 1,000 feet above, and 2,000 feet horizontal distance from clouds",
      "5 statute miles visibility, clear of clouds",
      "3 statute miles visibility, 1,000 feet above, 2,000 feet horizontal distance from clouds"
    ],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question":
        "What type of weather phenomenon is particularly hazardous to sUAS operations due to sudden and severe wind shifts?",
    "options": ["Microbursts", "Fog", "Rain showers", "Clear air turbulence"],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "What is the minimum distance from clouds required for sUAS operations?",
    "options": [
      "500 feet below and 2,000 feet horizontally",
      "700 feet below and 1,500 feet horizontally",
      "1,000 feet below and 1 mile horizontally",
      "There is no minimum distance required"
    ],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What type of weather is most likely to be associated with a temperature inversion?",
    "options": [
      "Clear skies and calm winds",
      "Thunderstorms",
      "Heavy rainfall",
      "Turbulence"
    ],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "What is the required action if a remote pilot observes a fast-moving cold front approaching the operational area?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Report it to ATC",
      "Monitor the situation"
    ],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": 6
  },
  {
    "id": 15,
    "question":
        "Which airspace class is depicted by a dashed blue line on sectional charts? (Refer to Figure 34)",
    "options": ["Class B", "Class C", "Class D", "Class E"],
    "answer_index": 2,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig34.jpg",
    "area": 7
  },
  {
    "id": 16,
    "question":
        "What is the minimum flight visibility for sUAS operations in Class G airspace below 1,200 feet AGL?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question":
        "What is the standard temperature lapse rate in the troposphere?",
    "options": [
      "2°C per 1,000 feet",
      "2°C per 1,000 meters",
      "6.5°C per 1,000 feet",
      "6.5°C per 1,000 meters"
    ],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question":
        "What is the maximum speed allowed for sUAS operations in Class C airspace?",
    "options": ["100 knots", "120 knots", "150 knots", "200 knots"],
    "answer_index": 3,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "What does a magenta vignette on a sectional chart represent? (Refer to Figure 9)",
    "options": [
      "Class B airspace",
      "Class C airspace",
      "Class D airspace",
      "Class E airspace starting at 700 feet AGL"
    ],
    "answer_index": 3,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig9.jpg",
    "area": 8
  },
  {
    "id": 20,
    "question":
        "Which airspace is represented by a solid magenta line on sectional charts?  (Refer to Figure 25)",
    "options": ["Class B", "Class C", "Class D", "Class E"],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig25.jpg",
    "area": 9
  },
  // Add more questions as needed to reach 100
  {
    "id": 21,
    "question": "What is the required minimum visibility for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question":
        "What type of airspace is depicted by a solid blue line on a sectional chart?  (Refer to Figure 12)",
    "options": [
      "Class B airspace",
      "Class C airspace",
      "Class D airspace",
      "Class E airspace"
    ],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig12.jpg",
    "area": 10
  },
  {
    "id": 23,
    "question":
        "What is the minimum distance from clouds required for sUAS operations?",
    "options": [
      "500 feet below and 2,000 feet horizontally",
      "700 feet below and 1,500 feet horizontally",
      "1,000 feet below and 1 mile horizontally",
      "There is no minimum distance required"
    ],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question":
        "What type of weather is most likely to be associated with a temperature inversion?",
    "options": [
      "Clear skies and calm winds",
      "Thunderstorms",
      "Heavy rainfall",
      "Turbulence"
    ],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question":
        "What is the primary hazard associated with operating a sUAS in strong winds?",
    "options": [
      "Loss of lift",
      "Turbulence",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question":
        "What is the primary hazard associated with operating a sUAS in rain?",
    "options": [
      "Loss of lift",
      "Reduced visibility",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question":
        "What is the primary hazard associated with operating a sUAS in fog?",
    "options": [
      "Loss of lift",
      "Reduced visibility",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question":
        "What type of weather phenomenon is particularly hazardous to sUAS operations due to sudden and severe wind shifts?",
    "options": ["Microbursts", "Fog", "Rain showers", "Clear air turbulence"],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question": "What is the effect of humidity on sUAS performance?",
    "options": [
      "Increases performance",
      "Decreases performance",
      "No effect",
      "Only affects camera quality"
    ],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question":
        "What is the required action if a remote pilot observes a fast-moving cold front approaching the operational area?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Report it to ATC",
      "Monitor the situation"
    ],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": null,
    "area": 11
  },
  {
    "id": 31,
    "question":
        "What does a dashed magenta line on a sectional chart indicate? (Refer to Figure 23)",
    "options": [
      "Class B airspace",
      "Class C airspace",
      "Class D airspace",
      "Class E airspace"
    ],
    "answer_index": 3,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig23.jpg",
    "area": 1
  },
  {
    "id": 32,
    "question":
        "What type of airspace is depicted by a solid blue line on a sectional chart? (Refer to Figure 24)",
    "options": [
      "Class A airspace",
      "Class B airspace",
      "Class C airspace",
      "Class D airspace"
    ],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig24.jpg",
    "area": 2
  },
  {
    "id": 33,
    "question":
        "While monitoring the Cooperstown CTAF you hear an aircraft announce that they are midfield left downwind to RWY 13. Where would the aircraft be relative to the runway? (Refer to Figure 26, area 2)",
    "options": ["East", "South", "West"],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig26.jpg",
    "area": 2
  },
  {
    "id": 34,
    "question":
        "What class of airspace is associated with the extensions to the SIOUX GATEWAY/COL DAY (SUX) Airport class D airspace? (Refer to Figure 78)",
    "options": ["Class B airspace", "Class C airspace", "Class E airspace"],
    "answer_index": 2,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig78.jpg",
    "area": null
  },
  {
    "id": 35,
    "question":
        "What is the required flight visibility for a remote pilot operating an unmanned aircraft near the Pender airport? (Refer to Figure 78)",
    "options": ["2 statute miles", "3 statute miles", "4 statute miles"],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig78.jpg",
    "area": null
  },
  {
    "id": 36,
    "question":
        "What’s the minimum altitude/lowest elevation of the area depicted by the blue line labeled V71? (Refer to Figure 76)",
    "options": ["700 ft. AGL", "1,200 ft. AGL", "3,500 ft. AGL"],
    "answer_index": 1,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig76.jpg",
    "area": null
  },
  {
    "id": 37,
    "question":
        "What type of military flight operations should a pilot expect along IR644 in the Devil’s Lake West MOA? (Refer to Figure 21)",
    "options": [
      "IFR training flights above 1,500 feet AGL at speeds in excess of 250 knots",
      "VFR training flights above 1,500 feet AGL at speeds less than 250 knots",
      "Instrument training flights below 1,500 feet AGL at speeds in excess of 150 knots"
    ],
    "answer_index": 0,
    "category": "Airspace, Weather Minimums, and Charts",
    "figure": "Fig21.jpg",
    "area": null
  }
];

const List emergency_procedures_data = [
  {
    "id": 1,
    "question":
        "What is the first action a remote pilot should take in an emergency situation?",
    "options": [
      "Notify ATC",
      "Land immediately",
      "Continue the flight",
      "Contact local authorities"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question":
        "What should a remote pilot do if the sUAS experiences a loss of GPS signal?",
    "options": [
      "Continue flight as planned",
      "Land as soon as possible",
      "Fly in manual mode",
      "Notify the FAA"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question":
        "What action should be taken if a remote pilot loses visual line of sight with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain visual contact",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question":
        "What is the recommended action if a remote pilot experiences a flyaway?",
    "options": [
      "Attempt to regain control immediately",
      "Report the incident to the FAA within 10 days",
      "Notify local authorities",
      "File an accident report with the NTSB"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "What is required if a remote pilot needs to deviate from Part 107 regulations during an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question":
        "What should a remote pilot do if they experience a medical event during sUAS operations?",
    "options": [
      "Continue the flight",
      "Report the event to the FAA",
      "Land immediately",
      "Contact local authorities"
    ],
    "answer_index": 2,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What action should a remote pilot take if the sUAS has a collision with a person?",
    "options": [
      "File a report with the FAA within 10 days",
      "Take no further action",
      "Notify local law enforcement",
      "Report the incident to the nearest ATC"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question": "What is the first priority in an emergency situation?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question":
        "Who is responsible for managing the response to an emergency situation during sUAS operations?",
    "options": [
      "The visual observer",
      "The remote pilot in command",
      "The person manipulating the controls",
      "Local authorities"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What should a remote pilot do if they experience a loss of control with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question":
        "What is the required action if a sUAS experiences a flyaway during flight?",
    "options": [
      "Continue the flight",
      "Land as soon as possible",
      "Report the incident to the FAA within 10 days",
      "Notify local authorities"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "What should a remote pilot do if the sUAS experiences a battery failure during flight?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What is the required action if a remote pilot loses communication with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain communication",
      "Land immediately",
      "Notify the FAA"
    ],
    "answer_index": 2,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "What should a remote pilot do if they encounter unexpected weather during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Change the flight path",
      "Contact ATC"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question":
        "What is the primary consideration when responding to an emergency situation?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question":
        "What action should a remote pilot take if a person is injured during sUAS operations?",
    "options": [
      "Continue the flight",
      "Land the sUAS immediately",
      "Report the injury to the FAA within 10 days",
      "Notify local emergency services"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question":
        "What should a remote pilot do if the sUAS encounters a bird strike?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Change the flight path",
      "Contact ATC"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question":
        "What is required if a remote pilot needs to deviate from Part 107 regulations during an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "What is the primary responsibility of the remote pilot in command during an emergency?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question":
        "What action should a remote pilot take if the sUAS has a collision with a person?",
    "options": [
      "File a report with the FAA within 10 days",
      "Take no further action",
      "Notify local law enforcement",
      "Report the incident to the nearest ATC"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 21,
    "question":
        "What is the first action a remote pilot should take in an emergency situation?",
    "options": [
      "Notify ATC",
      "Land immediately",
      "Continue the flight",
      "Contact local authorities"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question":
        "What should a remote pilot do if the sUAS experiences a loss of GPS signal?",
    "options": [
      "Continue flight as planned",
      "Land as soon as possible",
      "Fly in manual mode",
      "Notify the FAA"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 23,
    "question":
        "What action should be taken if a remote pilot loses visual line of sight with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain visual contact",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question":
        "What is the recommended action if a remote pilot experiences a flyaway?",
    "options": [
      "Attempt to regain control immediately",
      "Report the incident to the FAA within 10 days",
      "Notify local authorities",
      "File an accident report with the NTSB"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question":
        "What is required if a remote pilot needs to deviate from Part 107 regulations during an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question":
        "What should a remote pilot do if they experience a medical event during sUAS operations?",
    "options": [
      "Continue the flight",
      "Report the event to the FAA",
      "Land immediately",
      "Contact local authorities"
    ],
    "answer_index": 2,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question":
        "What action should a remote pilot take if the sUAS has a collision with a person?",
    "options": [
      "File a report with the FAA within 10 days",
      "Take no further action",
      "Notify local law enforcement",
      "Report the incident to the nearest ATC"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question": "What is the first priority in an emergency situation?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question":
        "Who is responsible for managing the response to an emergency situation during sUAS operations?",
    "options": [
      "The visual observer",
      "The remote pilot in command",
      "The person manipulating the controls",
      "Local authorities"
    ],
    "answer_index": 1,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question":
        "What should a remote pilot do if they experience a loss of control with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Emergency Procedures",
    "figure": null,
    "area": null
  },
  // Continue adding more questions until reaching 100
];

const List aeronautical_decision_making_data = [
  {
    "id": 1,
    "question":
        "What is the first step in the DECIDE model of aeronautical decision-making?",
    "options": [
      "Detect a change needing attention",
      "Estimate the significance of the change",
      "Choose a desirable outcome",
      "Identify actions to control the change"
    ],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question":
        "What is the purpose of the 3P model in aeronautical decision-making?",
    "options": [
      "To predict potential problems",
      "To prevent poor performance",
      "To perceive, process, and perform",
      "To plan, prepare, and prevent"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question": "What does the 'I' in the IMSAFE checklist stand for?",
    "options": ["Illness", "Injury", "Incapacitation", "Inexperience"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question": "Which factor is NOT part of the 5P checklist?",
    "options": ["Plan", "Pilot", "Plane", "Pressure"],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "What is the primary objective of aeronautical decision-making?",
    "options": [
      "To ensure compliance with regulations",
      "To complete the flight safely",
      "To maximize efficiency",
      "To minimize fuel consumption"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question": "What does the 'E' in the DECIDE model stand for?",
    "options": [
      "Evaluate the outcome",
      "Estimate the significance",
      "Execute a plan",
      "Examine the options"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question": "What is the primary purpose of the PAVE checklist?",
    "options": [
      "To assess pre-flight preparation",
      "To evaluate in-flight performance",
      "To identify risks",
      "To ensure regulatory compliance"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question": "What does the 'S' in the IMSAFE checklist stand for?",
    "options": ["Stress", "Sleep", "Safety", "Skill"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question": "Which model is commonly used for risk management in aviation?",
    "options": [
      "DECIDE model",
      "IMSAFE checklist",
      "PAVE checklist",
      "3P model"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What is the final step in the 3P model of aeronautical decision-making?",
    "options": ["Perceive", "Process", "Perform", "Plan"],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 11,
    "question": "What does the 'V' in the PAVE checklist stand for?",
    "options": ["Vehicle", "Visibility", "Volume", "Validation"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question": "What does the 'M' in the IMSAFE checklist stand for?",
    "options": ["Medication", "Motivation", "Maintenance", "Mission"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question": "What is the primary purpose of the 5P checklist?",
    "options": [
      "To evaluate in-flight performance",
      "To identify risks",
      "To assess pre-flight preparation",
      "To ensure regulatory compliance"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question": "What does the 'A' in the PAVE checklist stand for?",
    "options": ["Aircraft", "Altitude", "Attitude", "Assessment"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question":
        "Which model focuses on perceiving, processing, and performing?",
    "options": [
      "DECIDE model",
      "IMSAFE checklist",
      "PAVE checklist",
      "3P model"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question": "What is the primary goal of the DECIDE model?",
    "options": [
      "To minimize fuel consumption",
      "To maximize efficiency",
      "To ensure safety of the flight",
      "To ensure compliance with regulations"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question": "What does the 'P' in the 5P checklist stand for?",
    "options": ["Pilot", "Plan", "Plane", "All of the above"],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question":
        "What is the primary consideration in aeronautical decision-making?",
    "options": ["Efficiency", "Safety", "Cost", "Speed"],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "Which checklist helps pilots assess their own fitness for flight?",
    "options": [
      "IMSAFE checklist",
      "PAVE checklist",
      "DECIDE model",
      "5P checklist"
    ],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question": "What does the 'A' in the DECIDE model stand for?",
    "options": [
      "Assess the situation",
      "Avoid risks",
      "Act to mitigate risks",
      "Achieve a safe outcome"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 21,
    "question":
        "Which model is used for making aeronautical decisions during a flight?",
    "options": [
      "IMSAFE checklist",
      "PAVE checklist",
      "3P model",
      "5P checklist"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question": "What does the 'P' in the PAVE checklist stand for?",
    "options": ["Pilot", "Plan", "Procedure", "Path"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 23,
    "question": "Which checklist helps pilots evaluate external pressures?",
    "options": [
      "IMSAFE checklist",
      "PAVE checklist",
      "DECIDE model",
      "5P checklist"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question": "What is the primary goal of risk management in aviation?",
    "options": [
      "To ensure regulatory compliance",
      "To maximize efficiency",
      "To minimize risks",
      "To complete the flight safely"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question": "What does the 'D' in the DECIDE model stand for?",
    "options": [
      "Determine the risks",
      "Decide on an action",
      "Detect a change",
      "Develop a plan"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question":
        "What is the purpose of the PAVE checklist in aeronautical decision-making?",
    "options": [
      "To ensure regulatory compliance",
      "To evaluate in-flight performance",
      "To identify risks",
      "To assess pre-flight preparation"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question":
        "What is the primary objective of aeronautical decision-making?",
    "options": [
      "To ensure compliance with regulations",
      "To complete the flight safely",
      "To maximize efficiency",
      "To minimize fuel consumption"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question": "Which factor is NOT part of the 5P checklist?",
    "options": ["Plan", "Pilot", "Plane", "Pressure"],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question": "What does the 'E' in the DECIDE model stand for?",
    "options": [
      "Evaluate the outcome",
      "Estimate the significance",
      "Execute a plan",
      "Examine the options"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question":
        "What is the purpose of the 3P model in aeronautical decision-making?",
    "options": [
      "To predict potential problems",
      "To prevent poor performance",
      "To perceive, process, and perform",
      "To plan, prepare, and prevent"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 31,
    "question":
        "What is the first step in the DECIDE model of aeronautical decision-making?",
    "options": [
      "Detect a change needing attention",
      "Estimate the significance of the change",
      "Choose a desirable outcome",
      "Identify actions to control the change"
    ],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 32,
    "question": "What is the primary purpose of the PAVE checklist?",
    "options": [
      "To assess pre-flight preparation",
      "To evaluate in-flight performance",
      "To identify risks",
      "To ensure regulatory compliance"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 33,
    "question": "What does the 'S' in the IMSAFE checklist stand for?",
    "options": ["Stress", "Sleep", "Safety", "Skill"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 34,
    "question":
        "What is the primary objective of aeronautical decision-making?",
    "options": [
      "To ensure compliance with regulations",
      "To complete the flight safely",
      "To maximize efficiency",
      "To minimize fuel consumption"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 35,
    "question":
        "Which checklist helps pilots assess their own fitness for flight?",
    "options": [
      "IMSAFE checklist",
      "PAVE checklist",
      "DECIDE model",
      "5P checklist"
    ],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 36,
    "question": "What does the 'P' in the PAVE checklist stand for?",
    "options": ["Pilot", "Plan", "Procedure", "Path"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 37,
    "question":
        "What is the final step in the 3P model of aeronautical decision-making?",
    "options": ["Perceive", "Process", "Perform", "Plan"],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 38,
    "question":
        "Which model focuses on perceiving, processing, and performing?",
    "options": [
      "DECIDE model",
      "IMSAFE checklist",
      "PAVE checklist",
      "3P model"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 39,
    "question":
        "What is the primary consideration in aeronautical decision-making?",
    "options": ["Efficiency", "Safety", "Cost", "Speed"],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 40,
    "question": "What is the primary goal of the DECIDE model?",
    "options": [
      "To minimize fuel consumption",
      "To maximize efficiency",
      "To ensure safety of the flight",
      "To ensure compliance with regulations"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 41,
    "question": "What does the 'V' in the PAVE checklist stand for?",
    "options": ["Vehicle", "Visibility", "Volume", "Validation"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 42,
    "question": "What does the 'M' in the IMSAFE checklist stand for?",
    "options": ["Medication", "Motivation", "Maintenance", "Mission"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 43,
    "question": "Which checklist helps pilots evaluate external pressures?",
    "options": [
      "IMSAFE checklist",
      "PAVE checklist",
      "DECIDE model",
      "5P checklist"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 44,
    "question": "What does the 'A' in the PAVE checklist stand for?",
    "options": ["Aircraft", "Altitude", "Attitude", "Assessment"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 45,
    "question":
        "What is the primary consideration in aeronautical decision-making?",
    "options": ["Efficiency", "Safety", "Cost", "Speed"],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 46,
    "question":
        "Which model is used for making aeronautical decisions during a flight?",
    "options": [
      "IMSAFE checklist",
      "PAVE checklist",
      "3P model",
      "5P checklist"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 47,
    "question": "What is the primary goal of risk management in aviation?",
    "options": [
      "To ensure regulatory compliance",
      "To maximize efficiency",
      "To minimize risks",
      "To complete the flight safely"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 48,
    "question": "What is the primary purpose of the 5P checklist?",
    "options": [
      "To evaluate in-flight performance",
      "To identify risks",
      "To assess pre-flight preparation",
      "To ensure regulatory compliance"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 49,
    "question":
        "Which checklist helps pilots assess their own fitness for flight?",
    "options": [
      "IMSAFE checklist",
      "PAVE checklist",
      "DECIDE model",
      "5P checklist"
    ],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 50,
    "question": "What is the primary purpose of the PAVE checklist?",
    "options": [
      "To assess pre-flight preparation",
      "To evaluate in-flight performance",
      "To identify risks",
      "To ensure regulatory compliance"
    ],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 51,
    "question": "What does the 'E' in the DECIDE model stand for?",
    "options": [
      "Evaluate the outcome",
      "Estimate the significance",
      "Execute a plan",
      "Examine the options"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 52,
    "question": "What does the 'S' in the IMSAFE checklist stand for?",
    "options": ["Stress", "Sleep", "Safety", "Skill"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 53,
    "question": "Which model is commonly used for risk management in aviation?",
    "options": [
      "DECIDE model",
      "IMSAFE checklist",
      "PAVE checklist",
      "3P model"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 54,
    "question": "What does the 'V' in the PAVE checklist stand for?",
    "options": ["Vehicle", "Visibility", "Volume", "Validation"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 55,
    "question":
        "What is the final step in the 3P model of aeronautical decision-making?",
    "options": ["Perceive", "Process", "Perform", "Plan"],
    "answer_index": 2,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 56,
    "question":
        "What is the primary objective of aeronautical decision-making?",
    "options": [
      "To ensure compliance with regulations",
      "To complete the flight safely",
      "To maximize efficiency",
      "To minimize fuel consumption"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 57,
    "question":
        "What is the first step in the DECIDE model of aeronautical decision-making?",
    "options": [
      "Detect a change needing attention",
      "Estimate the significance of the change",
      "Choose a desirable outcome",
      "Identify actions to control the change"
    ],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 58,
    "question": "What does the 'E' in the DECIDE model stand for?",
    "options": [
      "Evaluate the outcome",
      "Estimate the significance",
      "Execute a plan",
      "Examine the options"
    ],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 59,
    "question":
        "What is the primary consideration in aeronautical decision-making?",
    "options": ["Efficiency", "Safety", "Cost", "Speed"],
    "answer_index": 1,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 60,
    "question": "What does the 'P' in the 5P checklist stand for?",
    "options": ["Pilot", "Plan", "Plane", "All of the above"],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 61,
    "question":
        "Which model focuses on perceiving, processing, and performing?",
    "options": [
      "DECIDE model",
      "IMSAFE checklist",
      "PAVE checklist",
      "3P model"
    ],
    "answer_index": 3,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  },
  {
    "id": 62,
    "question": "What does the 'M' in the IMSAFE checklist stand for?",
    "options": ["Medication", "Motivation", "Maintenance", "Mission"],
    "answer_index": 0,
    "category": "Aeronautical Decision-Making",
    "figure": null,
    "area": null
  }
];

const List operations_data = [
  {
    "id": 1,
    "question":
        "What is the maximum altitude allowed for sUAS operations under Part 107?",
    "options": ["500 feet AGL", "400 feet AGL", "300 feet AGL", "200 feet AGL"],
    "answer_index": 1,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question": "What is required to operate a sUAS in Class B airspace?",
    "options": [
      "Permission from the local airport authority",
      "A special license",
      "ATC authorization",
      "A visual observer"
    ],
    "answer_index": 2,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question": "What is the minimum visibility required for sUAS operations?",
    "options": [
      "1 statute mile",
      "2 statute miles",
      "3 statute miles",
      "5 statute miles"
    ],
    "answer_index": 2,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question":
        "What is the minimum distance a sUAS must maintain from clouds?",
    "options": [
      "500 feet below and 2,000 feet horizontally",
      "700 feet below and 1,500 feet horizontally",
      "1,000 feet below and 1 mile horizontally",
      "500 feet below and 1,000 feet horizontally"
    ],
    "answer_index": 0,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "When is a remote pilot required to perform a preflight inspection?",
    "options": [
      "Before the first flight of the day",
      "Before each flight",
      "Once a week",
      "Once a month"
    ],
    "answer_index": 1,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question":
        "Who is responsible for ensuring the sUAS is in a safe operating condition before flight?",
    "options": [
      "The visual observer",
      "The owner of the sUAS",
      "The remote pilot in command",
      "The person manipulating the controls"
    ],
    "answer_index": 2,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What should a remote pilot do if they experience a loss of GPS signal?",
    "options": [
      "Continue the flight as planned",
      "Fly in manual mode",
      "Land as soon as possible",
      "Notify the FAA"
    ],
    "answer_index": 2,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question":
        "What is the maximum speed allowed for sUAS operations under Part 107?",
    "options": ["80 knots", "100 knots", "120 knots", "87 knots"],
    "answer_index": 3,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question": "What is the minimum age to obtain a Remote Pilot Certificate?",
    "options": ["16 years old", "18 years old", "21 years old", "25 years old"],
    "answer_index": 0,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question": "What is the purpose of the NOTAM system?",
    "options": [
      "To provide weather information",
      "To notify pilots of airspace restrictions",
      "To manage air traffic",
      "To communicate with ATC"
    ],
    "answer_index": 1,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question":
        "What must a remote pilot do if a person is injured during sUAS operations?",
    "options": [
      "Continue the flight",
      "Land the sUAS immediately",
      "Report the injury to the FAA within 10 days",
      "Notify local emergency services"
    ],
    "answer_index": 1,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "What should a remote pilot do if the sUAS experiences a battery failure during flight?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What action should be taken if a remote pilot loses visual line of sight with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain visual contact",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "What is the required action if a remote pilot loses communication with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain communication",
      "Land immediately",
      "Notify the FAA"
    ],
    "answer_index": 2,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question":
        "What should a remote pilot do if they encounter unexpected weather during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Change the flight path",
      "Contact ATC"
    ],
    "answer_index": 1,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question":
        "What is the primary consideration when responding to an emergency situation?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question":
        "What action should a remote pilot take if a person is injured during sUAS operations?",
    "options": [
      "Continue the flight",
      "Land the sUAS immediately",
      "Report the injury to the FAA within 10 days",
      "Notify local emergency services"
    ],
    "answer_index": 1,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question":
        "What should a remote pilot do if the sUAS encounters a bird strike?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Change the flight path",
      "Contact ATC"
    ],
    "answer_index": 1,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "What is required if a remote pilot needs to deviate from Part 107 regulations during an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question":
        "What is the primary responsibility of the remote pilot in command during an emergency?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Operations",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
];

const List performance_and_limitations_data = [
  {
    "id": 1,
    "question":
        "What is the maximum takeoff weight allowed for a sUAS under Part 107?",
    "options": ["25 pounds", "35 pounds", "45 pounds", "55 pounds"],
    "answer_index": 3,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question":
        "What effect does high density altitude have on sUAS performance?",
    "options": [
      "Increases lift",
      "Decreases lift",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question":
        "What effect can high temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question":
        "What is the primary hazard associated with operating a sUAS in icing conditions?",
    "options": [
      "Loss of lift",
      "Increased battery efficiency",
      "Improved flight performance",
      "No effect"
    ],
    "answer_index": 0,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question": "What is the effect of a forward center of gravity on a sUAS?",
    "options": [
      "Increased stability",
      "Decreased stability",
      "Increased lift",
      "Decreased lift"
    ],
    "answer_index": 0,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question": "What is the effect of a rearward center of gravity on a sUAS?",
    "options": [
      "Increased stability",
      "Decreased stability",
      "Increased lift",
      "Decreased lift"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What is the recommended action if a remote pilot notices a decrease in sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Land as soon as possible",
      "Continue the flight"
    ],
    "answer_index": 2,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question":
        "What is the primary factor that determines the performance of a sUAS during flight?",
    "options": [
      "Altitude",
      "Weather conditions",
      "Weight and balance",
      "Battery level"
    ],
    "answer_index": 3,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question": "What factor affects the performance of a sUAS during takeoff?",
    "options": [
      "Wind direction",
      "Air temperature",
      "Air pressure",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question": "What effect does humidity have on sUAS performance?",
    "options": [
      "Increases performance",
      "Decreases performance",
      "No effect",
      "Only affects camera quality"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question":
        "What should be checked before each flight to ensure proper balance and stability of the sUAS?",
    "options": [
      "Battery levels",
      "Weather conditions",
      "Weight and balance",
      "Propeller tightness"
    ],
    "answer_index": 2,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "What is the primary hazard associated with operating a sUAS in strong winds?",
    "options": [
      "Loss of lift",
      "Turbulence",
      "Improved flight performance",
      "Increased battery efficiency"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What is the effect of high-density altitude on sUAS performance?",
    "options": [
      "Increases lift",
      "Decreases lift",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "What effect can cold temperatures have on sUAS battery performance?",
    "options": [
      "Increases battery efficiency",
      "Decreases battery efficiency",
      "No effect",
      "Increases flight time"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question": "How does wind affect the performance of a sUAS during flight?",
    "options": [
      "Increases stability",
      "Decreases stability",
      "No effect",
      "Increases battery efficiency"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question": "What is the maximum ground speed for a sUAS under Part 107?",
    "options": ["80 knots", "87 knots", "100 knots", "120 knots"],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question":
        "What is the primary consideration when operating a sUAS in high temperatures?",
    "options": [
      "Increased lift",
      "Decreased battery performance",
      "No effect",
      "Increased flight time"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question": "What is the effect of a rearward center of gravity on a sUAS?",
    "options": [
      "Increased stability",
      "Decreased stability",
      "Increased lift",
      "Decreased lift"
    ],
    "answer_index": 1,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "What is the primary factor affecting sUAS performance during climb?",
    "options": [
      "Altitude",
      "Weather conditions",
      "Weight and balance",
      "Battery level"
    ],
    "answer_index": 2,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question": "What is the maximum weight allowed for a sUAS under Part 107?",
    "options": ["25 pounds", "35 pounds", "45 pounds", "55 pounds"],
    "answer_index": 3,
    "category": "Performance and Limitations",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
];

const List maintenance_and_inspections_data = [
  {
    "id": 1,
    "question": "How often should a sUAS be inspected for maintenance?",
    "options": [
      "Before every flight",
      "Once a month",
      "Every six months",
      "Annually"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question":
        "Who is responsible for maintaining the sUAS in a condition for safe operation?",
    "options": [
      "The owner",
      "The visual observer",
      "The remote pilot in command",
      "The manufacturer"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question": "What is the purpose of keeping maintenance logs for a sUAS?",
    "options": [
      "To track flight hours",
      "To ensure compliance with FAA regulations",
      "To monitor battery performance",
      "To record inspections and repairs"
    ],
    "answer_index": 3,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question": "When should a remote pilot replace a damaged propeller?",
    "options": [
      "Before the next flight",
      "After 10 flight hours",
      "Only if it affects performance",
      "During the annual inspection"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "What is the recommended action if a remote pilot notices a decrease in sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Land as soon as possible",
      "Continue the flight"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question": "What is the purpose of pre-flight checks for a sUAS?",
    "options": [
      "To ensure the sUAS is in safe operating condition",
      "To increase flight speed",
      "To decrease battery usage",
      "To comply with FAA regulations"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What should be checked before each flight to ensure proper balance and stability of the sUAS?",
    "options": [
      "Battery levels",
      "Weather conditions",
      "Weight and balance",
      "Propeller tightness"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question":
        "Who is responsible for ensuring a sUAS is in safe operating condition before flight?",
    "options": [
      "The owner of the sUAS",
      "The visual observer",
      "The remote pilot in command",
      "The person manipulating the controls"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question":
        "What is required for a remote pilot to operate a sUAS in Class B airspace?",
    "options": [
      "A special license",
      "ATC authorization",
      "A visual observer",
      "Permission from the local airport authority"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What should a remote pilot do if the sUAS experiences a battery failure during flight?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question": "How often should propellers be checked for damage or wear?",
    "options": [
      "Before every flight",
      "After 10 flight hours",
      "Once a month",
      "During annual inspection"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "What should be done if a sUAS battery shows signs of swelling or damage?",
    "options": [
      "Continue using it until performance degrades",
      "Store it in a cool place",
      "Dispose of it following manufacturer guidelines",
      "Recharge it immediately"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What is a critical component to inspect for cracks or damage before a flight?",
    "options": ["Propellers", "Landing gear", "Camera", "GPS unit"],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "How can a remote pilot ensure the longevity of sUAS batteries?",
    "options": [
      "Store at full charge",
      "Discharge completely before storage",
      "Store in a cool, dry place",
      "Keep exposed to sunlight"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question":
        "What is the recommended action if a remote pilot detects unusual vibrations during flight?",
    "options": [
      "Continue the flight",
      "Land immediately and inspect",
      "Adjust the flight controls",
      "Increase altitude"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question": "Why is it important to keep a maintenance log for sUAS?",
    "options": [
      "For tax purposes",
      "To track battery life",
      "To record maintenance and repairs",
      "For insurance claims"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question":
        "What action should be taken if a motor is found to be overheating?",
    "options": [
      "Continue the flight",
      "Replace the motor",
      "Allow it to cool down",
      "Increase flight speed"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question": "What is the purpose of a pre-flight inspection?",
    "options": [
      "To ensure the sUAS is in safe operating condition",
      "To increase flight speed",
      "To comply with weather conditions",
      "To maximize battery efficiency"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question": "When should a remote pilot replace a worn-out motor?",
    "options": [
      "Before the next flight",
      "After 10 flight hours",
      "Only if it affects performance",
      "During the annual inspection"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question": "How often should firmware updates be checked and installed?",
    "options": [
      "Before every flight",
      "After 10 flight hours",
      "As recommended by the manufacturer",
      "Once a year"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 21,
    "question":
        "What should be included in a maintenance log entry after an inspection?",
    "options": [
      "Flight time",
      "Battery levels",
      "Details of inspection and any repairs",
      "Weather conditions"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question":
        "Why is it important to perform regular firmware updates on a sUAS?",
    "options": [
      "To ensure compliance with regulations",
      "To improve flight performance",
      "To access new features and fixes",
      "To reset all settings"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 23,
    "question": "What should be done if a sUAS has been exposed to moisture?",
    "options": [
      "Continue to use as normal",
      "Dry thoroughly and check for any damage",
      "Replace the battery immediately",
      "Store in a dry place for 24 hours"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question":
        "What is a common sign that a sUAS motor may need maintenance or replacement?",
    "options": [
      "Smooth operation",
      "Increased noise or vibration",
      "Improved battery life",
      "Decreased flight time"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question": "How often should the sUAS camera and sensors be cleaned?",
    "options": [
      "After every flight",
      "Once a week",
      "As needed based on usage conditions",
      "Once a year"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question":
        "What is the purpose of checking propeller tightness before flight?",
    "options": [
      "To increase speed",
      "To decrease battery usage",
      "To ensure safe operation",
      "To comply with FAA regulations"
    ],
    "answer_index": 3,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question":
        "What is the recommended action if a remote pilot identifies a potential hazard during a pre-flight inspection?",
    "options": [
      "Continue the flight",
      "Report it to the FAA",
      "Address and resolve the hazard before flight",
      "Notify local authorities"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question":
        "What should be done if the sUAS propellers show signs of wear?",
    "options": [
      "Continue to use until they fail",
      "Replace them immediately",
      "Check them after each flight",
      "Clean them thoroughly"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question": "How can a remote pilot reduce the wear on sUAS propellers?",
    "options": [
      "Fly at higher altitudes",
      "Avoid flying in sandy or dusty conditions",
      "Fly in manual mode",
      "Use propeller guards"
    ],
    "answer_index": 3,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question":
        "What is the importance of balancing the weight of a sUAS before flight?",
    "options": [
      "To increase flight time",
      "To improve stability and control",
      "To comply with FAA regulations",
      "To reduce battery usage"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 31,
    "question": "What should be included in a post-flight inspection?",
    "options": [
      "Check for any damage",
      "Record battery usage",
      "Evaluate flight performance",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 32,
    "question":
        "What is the recommended action if a remote pilot notices a decrease in sUAS performance during flight?",
    "options": [
      "Increase altitude",
      "Decrease weight",
      "Land as soon as possible",
      "Continue the flight"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 33,
    "question":
        "Why is it important to keep firmware and software updated on a sUAS?",
    "options": [
      "To comply with FAA regulations",
      "To improve battery life",
      "To enhance performance and fix bugs",
      "To reset all settings"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 34,
    "question": "How often should a sUAS be inspected for maintenance?",
    "options": [
      "Before every flight",
      "Once a month",
      "Every six months",
      "Annually"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 35,
    "question":
        "What should be checked before each flight to ensure proper balance and stability of the sUAS?",
    "options": [
      "Battery levels",
      "Weather conditions",
      "Weight and balance",
      "Propeller tightness"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 36,
    "question": "What is the purpose of pre-flight checks for a sUAS?",
    "options": [
      "To ensure the sUAS is in safe operating condition",
      "To increase flight speed",
      "To decrease battery usage",
      "To comply with FAA regulations"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 37,
    "question": "What is the purpose of keeping maintenance logs for a sUAS?",
    "options": [
      "To track flight hours",
      "To ensure compliance with FAA regulations",
      "To monitor battery performance",
      "To record inspections and repairs"
    ],
    "answer_index": 3,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 38,
    "question":
        "How can a remote pilot ensure the longevity of sUAS batteries?",
    "options": [
      "Store at full charge",
      "Discharge completely before storage",
      "Store in a cool, dry place",
      "Keep exposed to sunlight"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 39,
    "question": "How often should the sUAS camera and sensors be cleaned?",
    "options": [
      "After every flight",
      "Once a week",
      "As needed based on usage conditions",
      "Once a year"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 40,
    "question":
        "What action should be taken if a motor is found to be overheating?",
    "options": [
      "Continue the flight",
      "Replace the motor",
      "Allow it to cool down",
      "Increase flight speed"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 41,
    "question":
        "What is the importance of balancing the weight of a sUAS before flight?",
    "options": [
      "To increase flight time",
      "To improve stability and control",
      "To comply with FAA regulations",
      "To reduce battery usage"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 42,
    "question":
        "What should be done if a sUAS battery shows signs of swelling or damage?",
    "options": [
      "Continue using it until performance degrades",
      "Store it in a cool place",
      "Dispose of it following manufacturer guidelines",
      "Recharge it immediately"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 43,
    "question":
        "What is a critical component to inspect for cracks or damage before a flight?",
    "options": ["Propellers", "Landing gear", "Camera", "GPS unit"],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 44,
    "question":
        "What should a remote pilot do if they experience a loss of GPS signal?",
    "options": [
      "Continue flight as planned",
      "Land as soon as possible",
      "Fly in manual mode",
      "Notify the FAA"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 45,
    "question":
        "What should a remote pilot do if the sUAS experiences a battery failure during flight?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 46,
    "question": "How often should firmware updates be checked and installed?",
    "options": [
      "Before every flight",
      "After 10 flight hours",
      "As recommended by the manufacturer",
      "Once a year"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 47,
    "question":
        "What should be done if the sUAS propellers show signs of wear?",
    "options": [
      "Continue to use until they fail",
      "Replace them immediately",
      "Check them after each flight",
      "Clean them thoroughly"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 48,
    "question": "How can a remote pilot reduce the wear on sUAS propellers?",
    "options": [
      "Fly at higher altitudes",
      "Avoid flying in sandy or dusty conditions",
      "Fly in manual mode",
      "Use propeller guards"
    ],
    "answer_index": 3,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 49,
    "question": "What is the purpose of a pre-flight inspection?",
    "options": [
      "To ensure the sUAS is in safe operating condition",
      "To increase flight speed",
      "To comply with weather conditions",
      "To maximize battery efficiency"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 50,
    "question":
        "What is required if a remote pilot needs to deviate from Part 107 regulations during an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 51,
    "question":
        "What should a remote pilot do if they encounter unexpected weather during flight?",
    "options": [
      "Continue the flight",
      "Land immediately",
      "Change the flight path",
      "Contact ATC"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 52,
    "question":
        "What action should a remote pilot take if the sUAS has a collision with a person?",
    "options": [
      "File a report with the FAA within 10 days",
      "Take no further action",
      "Notify local law enforcement",
      "Report the incident to the nearest ATC"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 53,
    "question": "What is the first priority in an emergency situation?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 54,
    "question":
        "Who is responsible for managing the response to an emergency situation during sUAS operations?",
    "options": [
      "The visual observer",
      "The remote pilot in command",
      "The person manipulating the controls",
      "Local authorities"
    ],
    "answer_index": 1,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 55,
    "question":
        "What should a remote pilot do if they experience a loss of control with the sUAS?",
    "options": [
      "Continue the flight",
      "Attempt to regain control",
      "Land immediately",
      "Notify ATC"
    ],
    "answer_index": 2,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 56,
    "question":
        "What is the primary consideration when responding to an emergency situation?",
    "options": [
      "Ensuring the safety of the operation",
      "Completing the flight",
      "Maintaining VLOS",
      "Communicating with ATC"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  },
  {
    "id": 57,
    "question":
        "What is required if a remote pilot needs to deviate from Part 107 regulations during an emergency?",
    "options": [
      "File a report with the FAA",
      "Notify local authorities",
      "Submit a waiver request",
      "Take no further action"
    ],
    "answer_index": 0,
    "category": "Maintenance and Inspections",
    "figure": null,
    "area": null
  }
];

const List airport_operations_data = [
  {
    "id": 1,
    "question": "What is the primary purpose of an airport traffic pattern?",
    "options": [
      "To increase runway capacity",
      "To provide a standard path for arriving and departing aircraft",
      "To reduce noise pollution",
      "To ensure separation between helicopters and airplanes"
    ],
    "answer_index": 1,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question": "What does a segmented circle at an airport indicate?",
    "options": [
      "Wind direction",
      "Runway length",
      "Traffic pattern direction",
      "Airport elevation"
    ],
    "answer_index": 2,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question": "What is the purpose of a windsock at an airport?",
    "options": [
      "To indicate wind speed",
      "To indicate wind direction",
      "To indicate runway length",
      "To indicate traffic pattern direction"
    ],
    "answer_index": 1,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question":
        "What should a remote pilot do before operating near an airport?",
    "options": [
      "Check the airport's NOTAMs",
      "Obtain ATC authorization if required",
      "Monitor airport frequencies",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question":
        "What is the typical altitude for a traffic pattern at a non-towered airport?",
    "options": [
      "500 feet AGL",
      "800 feet AGL",
      "1000 feet AGL",
      "1200 feet AGL"
    ],
    "answer_index": 2,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question":
        "What does a solid double yellow line on an airport taxiway indicate?",
    "options": [
      "Hold short line",
      "Taxiway boundary",
      "Runway entrance",
      "Taxiway centerline"
    ],
    "answer_index": 1,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question": "What is the purpose of runway hold short markings?",
    "options": [
      "To indicate the start of the runway",
      "To prevent aircraft from entering the runway without clearance",
      "To mark the end of the runway",
      "To indicate the taxiway centerline"
    ],
    "answer_index": 1,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question":
        "What should a remote pilot do if they see an aircraft on final approach while operating near an airport?",
    "options": [
      "Continue the operation",
      "Increase altitude",
      "Descend to a lower altitude",
      "Yield the right-of-way to the manned aircraft"
    ],
    "answer_index": 3,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question": "What does a white X on a runway indicate?",
    "options": [
      "Runway closed",
      "Runway under construction",
      "Runway in use",
      "Runway length"
    ],
    "answer_index": 0,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question": "What is the primary purpose of airport lighting?",
    "options": [
      "To increase visibility of runways and taxiways",
      "To provide decoration",
      "To indicate wind direction",
      "To mark airport boundaries"
    ],
    "answer_index": 0,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question":
        "What should a remote pilot do before operating near an airport?",
    "options": [
      "Check the airport's NOTAMs",
      "Obtain ATC authorization if required",
      "Monitor airport frequencies",
      "All of the above"
    ],
    "answer_index": 3,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question":
        "What is the typical altitude for a traffic pattern at a non-towered airport?",
    "options": [
      "500 feet AGL",
      "800 feet AGL",
      "1000 feet AGL",
      "1200 feet AGL"
    ],
    "answer_index": 2,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question": "What is the purpose of runway hold short markings?",
    "options": [
      "To indicate the start of the runway",
      "To prevent aircraft from entering the runway without clearance",
      "To mark the end of the runway",
      "To indicate the taxiway centerline"
    ],
    "answer_index": 1,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "What should a remote pilot do if they see an aircraft on final approach while operating near an airport?",
    "options": [
      "Continue the operation",
      "Increase altitude",
      "Descend to a lower altitude",
      "Yield the right-of-way to the manned aircraft"
    ],
    "answer_index": 3,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question": "What does a white X on a runway indicate?",
    "options": [
      "Runway closed",
      "Runway under construction",
      "Runway in use",
      "Runway length"
    ],
    "answer_index": 0,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question": "What is the primary purpose of airport lighting?",
    "options": [
      "To increase visibility of runways and taxiways",
      "To provide decoration",
      "To indicate wind direction",
      "To mark airport boundaries"
    ],
    "answer_index": 0,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question": "What is the primary purpose of an airport traffic pattern?",
    "options": [
      "To increase runway capacity",
      "To provide a standard path for arriving and departing aircraft",
      "To reduce noise pollution",
      "To ensure separation between helicopters and airplanes"
    ],
    "answer_index": 1,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question": "What does a segmented circle at an airport indicate?",
    "options": [
      "Wind direction",
      "Runway length",
      "Traffic pattern direction",
      "Airport elevation"
    ],
    "answer_index": 2,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question": "What is the purpose of a windsock at an airport?",
    "options": [
      "To indicate wind speed",
      "To indicate wind direction",
      "To indicate runway length",
      "To indicate traffic pattern direction"
    ],
    "answer_index": 1,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question":
        "What does a solid double yellow line on an airport taxiway indicate?",
    "options": [
      "Hold short line",
      "Taxiway boundary",
      "Runway entrance",
      "Taxiway centerline"
    ],
    "answer_index": 1,
    "category": "Airport Operations",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
];

const List human_factors_data = [
  {
    "id": 1,
    "question": "What is the primary cause of most aviation accidents?",
    "options": [
      "Mechanical failure",
      "Human error",
      "Weather conditions",
      "Bird strikes"
    ],
    "answer_index": 1,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question": "What does the 'I' in the IMSAFE checklist stand for?",
    "options": ["Illness", "Injury", "Incapacitation", "Inexperience"],
    "answer_index": 0,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question": "Which factor is NOT part of the 5P checklist?",
    "options": ["Plan", "Pilot", "Plane", "Pressure"],
    "answer_index": 3,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question": "What is the primary purpose of the PAVE checklist?",
    "options": [
      "To assess pre-flight preparation",
      "To evaluate in-flight performance",
      "To identify risks",
      "To ensure regulatory compliance"
    ],
    "answer_index": 2,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question": "What does the 'S' in the IMSAFE checklist stand for?",
    "options": ["Stress", "Sleep", "Safety", "Skill"],
    "answer_index": 0,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question": "Which model is commonly used for risk management in aviation?",
    "options": [
      "DECIDE model",
      "IMSAFE checklist",
      "PAVE checklist",
      "3P model"
    ],
    "answer_index": 3,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question":
        "What is the primary consideration in aeronautical decision-making?",
    "options": ["Efficiency", "Safety", "Cost", "Speed"],
    "answer_index": 1,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question": "What does the 'M' in the IMSAFE checklist stand for?",
    "options": ["Medication", "Motivation", "Maintenance", "Mission"],
    "answer_index": 0,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question": "What does the 'V' in the PAVE checklist stand for?",
    "options": ["Vehicle", "Visibility", "Volume", "Validation"],
    "answer_index": 0,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What is the purpose of the 3P model in aeronautical decision-making?",
    "options": [
      "To predict potential problems",
      "To prevent poor performance",
      "To perceive, process, and perform",
      "To plan, prepare, and prevent"
    ],
    "answer_index": 2,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question":
        "What is the primary objective of aeronautical decision-making?",
    "options": [
      "To ensure compliance with regulations",
      "To complete the flight safely",
      "To maximize efficiency",
      "To minimize fuel consumption"
    ],
    "answer_index": 1,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question": "What does the 'E' in the DECIDE model stand for?",
    "options": [
      "Evaluate the outcome",
      "Estimate the significance",
      "Execute a plan",
      "Examine the options"
    ],
    "answer_index": 1,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What is the first step in the DECIDE model of aeronautical decision-making?",
    "options": [
      "Detect a change needing attention",
      "Estimate the significance of the change",
      "Choose a desirable outcome",
      "Identify actions to control the change"
    ],
    "answer_index": 0,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question":
        "What is the purpose of the 3P model in aeronautical decision-making?",
    "options": [
      "To predict potential problems",
      "To prevent poor performance",
      "To perceive, process, and perform",
      "To plan, prepare, and prevent"
    ],
    "answer_index": 2,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question": "What does the 'I' in the IMSAFE checklist stand for?",
    "options": ["Illness", "Injury", "Incapacitation", "Inexperience"],
    "answer_index": 0,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question": "Which factor is NOT part of the 5P checklist?",
    "options": ["Plan", "Pilot", "Plane", "Pressure"],
    "answer_index": 3,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question":
        "What is the primary objective of aeronautical decision-making?",
    "options": [
      "To ensure compliance with regulations",
      "To complete the flight safely",
      "To maximize efficiency",
      "To minimize fuel consumption"
    ],
    "answer_index": 1,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question": "What is the primary purpose of the PAVE checklist?",
    "options": [
      "To assess pre-flight preparation",
      "To evaluate in-flight performance",
      "To identify risks",
      "To ensure regulatory compliance"
    ],
    "answer_index": 2,
    "category": "Human Factors",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question": "What does the 'S' in the IMSAFE checklist stand for?",
    "options": ["Stress", "Sleep", "Safety", "Skill"],
    "answer_index": 0,
    "category": "Human Factors",
    "figure": null,
    "area": null
  }
];

const List communication_data = [
  {
    "id": 1,
    "question": "What is the primary purpose of aviation communication?",
    "options": [
      "To provide weather updates",
      "To manage air traffic",
      "To ensure regulatory compliance",
      "To facilitate pilot training"
    ],
    "answer_index": 1,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question": "What does the term 'readback' mean in aviation communication?",
    "options": [
      "Repeating instructions back to ATC",
      "Listening to ATC instructions",
      "Reading navigation charts",
      "Confirming flight plans"
    ],
    "answer_index": 0,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question":
        "What is the standard emergency frequency for aviation communication?",
    "options": ["121.5 MHz", "123.45 MHz", "118.0 MHz", "130.0 MHz"],
    "answer_index": 0,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question": "What is the purpose of a 'Mayday' call?",
    "options": [
      "To declare an emergency",
      "To request weather information",
      "To ask for a position report",
      "To indicate lost communication"
    ],
    "answer_index": 0,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question": "What does 'Roger' mean in aviation communication?",
    "options": [
      "Request for position",
      "Affirmative",
      "Negative",
      "Message received and understood"
    ],
    "answer_index": 3,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question":
        "What is the purpose of 'squelch' in aviation communication systems?",
    "options": [
      "To increase signal strength",
      "To reduce background noise",
      "To adjust volume",
      "To change frequency"
    ],
    "answer_index": 1,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question": "What does the term 'standby' mean in aviation communication?",
    "options": [
      "Hold your current position",
      "Switch to another frequency",
      "Wait for further instructions",
      "Transmit immediately"
    ],
    "answer_index": 2,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question": "What does 'Wilco' mean in aviation communication?",
    "options": [
      "Will comply",
      "Request to change frequency",
      "Negative",
      "Affirmative"
    ],
    "answer_index": 0,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question":
        "What should a pilot do if they experience a communication failure?",
    "options": [
      "Continue the flight as planned",
      "Switch to another frequency",
      "Attempt to regain communication",
      "Land immediately"
    ],
    "answer_index": 2,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What is the purpose of the phonetic alphabet in aviation communication?",
    "options": [
      "To simplify complex instructions",
      "To ensure clarity and avoid misunderstandings",
      "To speed up communication",
      "To comply with international regulations"
    ],
    "answer_index": 1,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
  {
    "id": 11,
    "question": "What is the primary purpose of aviation communication?",
    "options": [
      "To provide weather updates",
      "To manage air traffic",
      "To ensure regulatory compliance",
      "To facilitate pilot training"
    ],
    "answer_index": 1,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question": "What does the term 'readback' mean in aviation communication?",
    "options": [
      "Repeating instructions back to ATC",
      "Listening to ATC instructions",
      "Reading navigation charts",
      "Confirming flight plans"
    ],
    "answer_index": 0,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What is the standard emergency frequency for aviation communication?",
    "options": ["121.5 MHz", "123.45 MHz", "118.0 MHz", "130.0 MHz"],
    "answer_index": 0,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question": "What is the purpose of a 'Mayday' call?",
    "options": [
      "To declare an emergency",
      "To request weather information",
      "To ask for a position report",
      "To indicate lost communication"
    ],
    "answer_index": 0,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question": "What does 'Roger' mean in aviation communication?",
    "options": [
      "Request for position",
      "Affirmative",
      "Negative",
      "Message received and understood"
    ],
    "answer_index": 3,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question":
        "What is the purpose of 'squelch' in aviation communication systems?",
    "options": [
      "To increase signal strength",
      "To reduce background noise",
      "To adjust volume",
      "To change frequency"
    ],
    "answer_index": 1,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question": "What does the term 'standby' mean in aviation communication?",
    "options": [
      "Hold your current position",
      "Switch to another frequency",
      "Wait for further instructions",
      "Transmit immediately"
    ],
    "answer_index": 2,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question": "What does 'Wilco' mean in aviation communication?",
    "options": [
      "Will comply",
      "Request to change frequency",
      "Negative",
      "Affirmative"
    ],
    "answer_index": 0,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question":
        "What should a pilot do if they experience a communication failure?",
    "options": [
      "Continue the flight as planned",
      "Switch to another frequency",
      "Attempt to regain communication",
      "Land immediately"
    ],
    "answer_index": 2,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question":
        "What is the purpose of the phonetic alphabet in aviation communication?",
    "options": [
      "To simplify complex instructions",
      "To ensure clarity and avoid misunderstandings",
      "To speed up communication",
      "To comply with international regulations"
    ],
    "answer_index": 1,
    "category": "Communication",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
];

const List airspace_data = [
  {
    "id": 1,
    "question": "What is the primary purpose of controlled airspace?",
    "options": [
      "To provide weather updates",
      "To manage air traffic",
      "To facilitate communication",
      "To monitor military operations"
    ],
    "answer_index": 1,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 2,
    "question": "What is Class A airspace?",
    "options": [
      "Airspace from 18,000 feet MSL to FL600",
      "Airspace from the surface to 10,000 feet MSL",
      "Airspace surrounding major airports",
      "Airspace reserved for military operations"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 3,
    "question": "What is the primary purpose of Class B airspace?",
    "options": [
      "To separate VFR and IFR traffic",
      "To provide weather updates",
      "To facilitate communication",
      "To monitor international flights"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 4,
    "question": "What is the primary characteristic of Class C airspace?",
    "options": [
      "Controlled airspace surrounding airports with a control tower",
      "Airspace reserved for military operations",
      "Uncontrolled airspace",
      "Airspace from 18,000 feet MSL to FL600"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 5,
    "question": "What is Class D airspace?",
    "options": [
      "Controlled airspace surrounding smaller airports with a control tower",
      "Airspace from the surface to 10,000 feet MSL",
      "Airspace surrounding major airports",
      "Airspace reserved for military operations"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 6,
    "question": "What is the primary characteristic of Class E airspace?",
    "options": [
      "Controlled airspace not classified as A, B, C, or D",
      "Airspace reserved for military operations",
      "Uncontrolled airspace",
      "Airspace from 18,000 feet MSL to FL600"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 7,
    "question": "What is Class G airspace?",
    "options": [
      "Uncontrolled airspace",
      "Controlled airspace surrounding major airports",
      "Airspace from the surface to 10,000 feet MSL",
      "Airspace reserved for military operations"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 8,
    "question": "What is a Prohibited Area?",
    "options": [
      "Airspace where flight is prohibited for security or other reasons",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 9,
    "question": "What is a Restricted Area?",
    "options": [
      "Airspace where flight is restricted due to hazards or military activities",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 10,
    "question":
        "What is the primary purpose of a Military Operations Area (MOA)?",
    "options": [
      "To separate military training activities from IFR traffic",
      "To provide weather updates",
      "To facilitate communication",
      "To monitor international flights"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 11,
    "question": "What is a Warning Area?",
    "options": [
      "Airspace extending from 3 nautical miles outward from the coast of the US",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 12,
    "question": "What is an Alert Area?",
    "options": [
      "Airspace with high volume of pilot training or unusual aerial activity",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 13,
    "question":
        "What is the primary characteristic of a Controlled Firing Area (CFA)?",
    "options": [
      "Activities are suspended immediately when spotter aircraft, radar, or ground lookout positions indicate an aircraft might be approaching the area",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 14,
    "question": "What is a Temporary Flight Restriction (TFR)?",
    "options": [
      "A restriction on an area of airspace due to the movement of the President, a special event, or other unusual occurrences",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 15,
    "question": "What is a National Security Area (NSA)?",
    "options": [
      "Airspace of defined dimensions established at locations where there is a requirement for increased security of ground facilities",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 16,
    "question": "What is Special Use Airspace (SUA)?",
    "options": [
      "Airspace where activities must be confined due to their nature, or where limitations may be imposed on aircraft operations that are not part of those activities",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 17,
    "question": "What is an Air Defense Identification Zone (ADIZ)?",
    "options": [
      "An area of airspace over land or water within which the identification, location, and control of civil aircraft is required in the interest of national security",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 18,
    "question": "What is a Mode C Veil?",
    "options": [
      "Airspace within a 30-nautical mile radius of an airport that requires Mode C transponder equipment",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 19,
    "question": "What is a VFR Corridor?",
    "options": [
      "An airspace defined by vertical and lateral limits in which pilots may operate without ATC clearance or communication",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 20,
    "question": "What is the purpose of a Terminal Radar Service Area (TRSA)?",
    "options": [
      "To provide radar services to aircraft operating within the designated area",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 21,
    "question": "What is a Class E Transition Area?",
    "options": [
      "Airspace extending upward from either 700 feet AGL or 1,200 feet AGL and designated for transitioning aircraft to/from the terminal or en route environment",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 22,
    "question":
        "What is the primary purpose of the Class E Extension to a Surface Area?",
    "options": [
      "To provide controlled airspace to the surface to contain standard instrument approach procedures without imposing a communication requirement on pilots operating under VFR",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 23,
    "question": "What is the purpose of an Airport Advisory Area?",
    "options": [
      "To provide advisory services to pilots during takeoff and landing",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 24,
    "question": "What is the purpose of a National Security TFR?",
    "options": [
      "To provide airspace protection in the vicinity of ground operations of a national security nature",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 25,
    "question": "What is a Presidential TFR?",
    "options": [
      "A TFR issued for the movement of the President, Vice President, or other parties designated by the White House",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 26,
    "question": "What is the purpose of a Disaster TFR?",
    "options": [
      "To provide a safe environment for disaster relief operations",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 27,
    "question": "What is the purpose of a Space Operations Area?",
    "options": [
      "To protect aircraft from hazards associated with space vehicle operations",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 28,
    "question": "What is the purpose of a Flight Restricted Zone (FRZ)?",
    "options": [
      "To provide a secure airspace environment for certain government and military operations",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 29,
    "question": "What is the purpose of a VFR Flyway?",
    "options": [
      "To provide a recommended route for VFR aircraft to avoid major airports",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 30,
    "question": "What is the purpose of a VFR Transition Route?",
    "options": [
      "To provide a route for VFR aircraft through controlled airspace, typically Class B",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 31,
    "question": "What is the purpose of a TFR for a Sporting Event?",
    "options": [
      "To protect participants and spectators during major sporting events",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 32,
    "question": "What is the purpose of an Air Show TFR?",
    "options": [
      "To provide a safe environment for air show operations",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 33,
    "question": "What is the purpose of a Temporary Restricted Area (TRA)?",
    "options": [
      "To restrict access to certain airspace temporarily, often for military or special operations",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 34,
    "question": "What is a Temporary Military Operations Area (TMOA)?",
    "options": [
      "A temporary area established to separate military training activities from IFR traffic",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 35,
    "question": "What is a Special Flight Rules Area (SFRA)?",
    "options": [
      "An area where special air traffic rules apply",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 36,
    "question": "What is the purpose of a Temporary Class D Airspace?",
    "options": [
      "To temporarily provide Class D airspace around an airport that does not normally have Class D airspace",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 37,
    "question": "What is a Temporary Class C Airspace?",
    "options": [
      "To temporarily provide Class C airspace around an airport that does not normally have Class C airspace",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 38,
    "question": "What is the purpose of a Temporary Class B Airspace?",
    "options": [
      "To temporarily provide Class B airspace around an airport that does not normally have Class B airspace",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 39,
    "question":
        "What is the purpose of an Air Traffic Control Assigned Airspace (ATCAA)?",
    "options": [
      "To provide ATC with the ability to assign airspace to specific flights for special operations",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 40,
    "question": "What is the purpose of a Flow Control Area (FCA)?",
    "options": [
      "To manage air traffic flow through busy areas",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 41,
    "question": "What is a VFR Waypoint?",
    "options": [
      "A predefined geographical location used for VFR navigation",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 42,
    "question": "What is a Flyover Waypoint?",
    "options": [
      "A waypoint that must be overflown before turning to the next course",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 43,
    "question": "What is a Fly-by Waypoint?",
    "options": [
      "A waypoint that does not need to be overflown but marks a point at which a turn begins",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 44,
    "question":
        "What is the purpose of a Hazardous Inflight Weather Advisory Service (HIWAS)?",
    "options": [
      "To provide continuous broadcast of hazardous weather information",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 45,
    "question": "What is the purpose of a Military Training Route (MTR)?",
    "options": [
      "To allow military aircraft to conduct low-altitude, high-speed training",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 46,
    "question": "What is a Special Activity Airspace (SAA)?",
    "options": [
      "Airspace established for special operations or events",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 47,
    "question": "What is a Temporary Operating Restriction (TOR)?",
    "options": [
      "A temporary restriction of airspace for specific activities",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 48,
    "question": "What is a National Wildlife Refuge (NWR)?",
    "options": [
      "Airspace overlying federally protected areas with recommended restrictions to minimize disturbances to wildlife",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 49,
    "question": "What is a Temporary Noise Sensitive Area?",
    "options": [
      "Airspace where temporary noise abatement procedures are in effect to protect noise-sensitive areas",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  {
    "id": 50,
    "question": "What is a Special Security Instruction (SSI)?",
    "options": [
      "Instructions issued by the FAA to address security concerns related to specific airspace",
      "Airspace reserved for military operations",
      "Controlled airspace surrounding major airports",
      "Uncontrolled airspace"
    ],
    "answer_index": 0,
    "category": "Airspace",
    "figure": null,
    "area": null
  },
  // Add more questions as needed to reach 100
];
