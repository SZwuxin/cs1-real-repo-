module day

data day = monday | tuesday | wednesday | thursday | friday | saturday | sunday

nextday: day -> day

nextday monday = tuesday
nextday tuesday = wednesday
nextday wednesday = thursday
nextday thursday = friday
nextday friday = saturday
nextday saturday = sunday
nextday _ = monday

nextweekday: day -> day



nextweekday friday = monday
nextweekday saturday = monday
nextweekday b = nextday b
