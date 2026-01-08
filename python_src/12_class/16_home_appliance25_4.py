class Appliance:
    def turn_on(self):
        print('The appliance is now on')
        
class WashingMachine(Appliance):
    def turn_on(self):
        print('The washing machine is now on')
    def start_wash(self):
        print('Starting the wash cycle')
    def turn_on_parent(self):
        super().turn_on()
        
a = Appliance()
a.turn_on()

w = WashingMachine()
w.turn_on()
w.start_wash()
w.turn_on_parent()