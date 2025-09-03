import com.pi4j.io.gpio.*;
import java.util.Random;

public class RandomBlink {
    public static void main(String[] args) throws InterruptedException {
        // Create GPIO controller
        final GpioController gpio = GpioFactory.getInstance();

        // Provision GPIO pin #01 as an output pin and turn it off
        final GpioPinDigitalOutput pin = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_03, "MyLED", PinState.LOW);
        pin.setShutdownOptions(true, PinState.LOW);

        // Create random number generator
        Random rand = new Random();

        System.out.println("Random LED blinking. Press Ctrl+C to exit.");

        // Blink LED randomly
        while (true) {
            pin.toggle(); // turn on or off
            int delay = rand.nextInt(1000) + 200; // delay between 200ms to 1200ms
            Thread.sleep(delay);
        }

        // gpio.shutdown();  // Normally would be here, but infinite loop for demo
    }
}

public class StateChange {
    //New
}
