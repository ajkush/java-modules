package com.yopeso.app;

import com.yopeso.helloworld.HelloWorld;
import com.yopeso.helloworld.alpha.HelloWorldAlpha;
//import com.yopeso.helloworld.alpha.internal.HelloWorldSecret;
import com.yopeso.helloworld.beta.HelloWorldBeta;

public class Main {

    public static void main(String[] args) {
        HelloWorld helloWorldAlpha = new HelloWorldAlpha();
        HelloWorld helloWorldBeta = new HelloWorldBeta();

        // Trying to create a new instance of a public non-exported class will result in a compile-time error
//        new HelloWorldSecret();
        helloWorldAlpha.printServiceName();
        helloWorldBeta.printServiceName();
    }
}
