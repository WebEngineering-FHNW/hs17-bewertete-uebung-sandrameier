package mvc

class HomeController {


    def show() {
        List<Goal> g = Goal.list()
        render view:'/home', model: [goals: g]
    }

}
