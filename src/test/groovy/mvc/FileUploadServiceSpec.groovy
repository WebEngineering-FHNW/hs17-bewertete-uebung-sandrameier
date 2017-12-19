package mvc

import grails.test.mixin.TestFor
import org.springframework.mock.web.MockMultipartFile
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(FileUploadService)
class FileUploadServiceSpec extends Specification {

    // ATTENTION: This test fails. This is most probably not due to the failure of the FileUploadService,
    // but a problem of my unability to write tests (and use the MultipartFile interface correctly, as I've never used it before

    FileUploadService fileUploadService
    Topic topic
    Goal goal
    MockMultipartFile picture

    def setup() {
        topic = new Topic(topicName: "keine Zuordnung")
        goal = new Goal(goalDescription: "In Bali mit Schildkröten tauchen",
                goalImage: null,
                goalDeadline: new Date().clearTime(),
                goalPriority: 1,
                goalReached: true,
                goalTopic: topic)
        picture = new MockMultipartFile("file", "examplecontent".getBytes())
    }

    def cleanup() {
    }

    void "FileUpload: Adding a file to the assets folder & the goalImage property"() {
        when:
            goal.goalImage = fileUploadService.uploadFile(picture, "${goal.id}.jpg", "goalImages")
        then:
            goal.goalImage.endsWith("/grails-app/assets/images/goalImages/${goal.id}.jpg")
        expect:"adding goal image does not work properly"
            true
    }
}
