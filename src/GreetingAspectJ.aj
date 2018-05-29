public aspect GreetingAspectJ {
	//
	pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
	long startTime;
	before(): callGreeting(){
		this.startTime = System.nanoTime();	
	}
	
	after():callGreeting(){
		long estimatedTime = System.nanoTime() - this.startTime;
		System.out.print("Tiempo del uso del sistema (en nanos): "+estimatedTime);
	}
	
}