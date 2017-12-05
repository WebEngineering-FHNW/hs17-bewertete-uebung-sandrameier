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

        Goal studium = save(new Goal(goalTitle: "Studium",
                                     goalDescription: "Studium erfolgreich abschliessen",
                                     //goalImage: null,
                                     goalDeadline: null,
                                     goalPriority: 2,
                                     goalReached: false,
                                     goalTopic: bildung,))
        Goal hebraeisch = save(new Goal(goalTitle: "Hebräisch",
                                        goalDescription: "Hebräisch in seinen Grundlagen lernen",
                                        goalPriority: 3,
                                        goalTopic: bildung))
        Goal bali = save(new Goal(goalTitle: "Bali",
                                  goalDescription: "In Bali mit Schildkröten tauchen",
                                  goalPriority: 1,
                                  goalReached: true,
                                  goalTopic: reisen))
        Goal china = save(new Goal(goalTitle: "China",
                                   goalDescription: "Das chinesische Neujahr in China mit einer traditionellen Show erleben",
                                   goalPriority: 3,
                                   goalTopic: reisen))
        Goal springen = save(new Goal(goalTitle: "5 Meter",
                                      goalDescription: "Einmal vom 5 Meter-Turm springen",
                                      goalPriority: 3,
                                      goalTopic: defaultTopic))

        Room windowRoom = save(new Room(name: "1.333", max: 32))
        Room cornerRoom = save(new Room(name: "1.331", max: 42))

        Person dierk = save(new Person(firstName: "Dierk", lastName: "König", email:"dierk.koenig@fhnw.ch"))

        Date today = new Date().clearTime()
        save(new Booking(booker: dierk, room: windowRoom, date: today - 1, slot: Booking.AM))
        save(new Booking(booker: dierk, room: windowRoom, date: today,     slot: Booking.AM))
        save(new Booking(booker: dierk, room: windowRoom, date: today + 1, slot: Booking.AM))
        save(new Booking(booker: dierk, room: cornerRoom, date: today ,    slot: Booking.AM))

    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
