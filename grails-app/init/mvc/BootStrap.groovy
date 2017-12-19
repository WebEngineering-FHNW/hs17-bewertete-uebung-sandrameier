package mvc

import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        if (Environment.current == Environment.PRODUCTION) {
            return
        }

        Topic defaultTopic = save(new Topic(topicName: "keine Zuordnung"))
        Topic bildung = save(new Topic(topicName: "Bildung"))
        Topic reisen = save(new Topic(topicName: "Reisen"))

        Goal studium = save(new Goal(goalDescription: "Studium erfolgreich abschliessen",
                                     goalImage: "1",
                                     goalDeadline: null,
                                     goalPriority: 2,
                                     goalReached: false,
                                     goalTopic: bildung,))
        Goal japanisch = save(new Goal(goalDescription: "Japanisch in seinen Grundlagen lernen",
                                        goalPriority: 3,
                                        goalTopic: bildung))
        Goal bali = save(new Goal(goalDescription: "In Bali mit Schildkröten tauchen",
                                  goalImage: "3",
                                  goalDeadline: new Date().clearTime().set(day: 31, month: 8, year: 2017),
                                  goalPriority: 1,
                                  goalReached: true,
                                  goalTopic: reisen))
        Goal china = save(new Goal(goalDescription: "Das chinesische Neujahr in China erleben",
                                   goalImage: "4",
                                   goalPriority: 3,
                                   goalTopic: reisen))
        Date ubahndate = new Date().clearTime()
        Goal ubahn = save(new Goal(goalDescription: "Verlassene U-Bahn Stationen entdecken",
                                      goalImage: "5",
                                      goalDeadline: ubahndate + 400,
                                      goalPriority: 3,
                                      goalTopic: defaultTopic))

    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
