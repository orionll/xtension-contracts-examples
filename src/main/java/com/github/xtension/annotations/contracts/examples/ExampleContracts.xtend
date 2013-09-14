package com.github.xtension.annotations.contracts.examples

import com.github.xtension.annotations.contracts.Contracts
import javax.annotation.Nonnull
import javax.annotation.Nullable
import javax.annotation.ParametersAreNonnullByDefault

@Contracts
class ExampleContracts implements ExampleInterface, ExampleInterface2, ExampleInterface3 {

	def void method(@Nonnull String a, String b, @Nonnull String c) {
		println(a)
		println(b)
		println(c)
	}

	def int methodWithReturn(@Nonnull String a, String b, @Nonnull String c) {
		println(a)
		println(b)
		println(c)

		0
	}

	@ParametersAreNonnullByDefault
	def static void staticMethod(String a, String b, String c) {
		println(a)
		println(b)
		println(c)
	}

	override inheritedMethod(String a, String b) {
		// Preconditions are inherited from ExampleInterface.inheritedMethod
		println(a)
		println(b)
	}

	override inheritedMethod2(String a, String b) {
		// Preconditions are inherited from ExampleInterface.inheritedMethod2
		println(a)
		println(b)
	}

	override inheritedMethod3(String a, String b) {
		// Preconditions are inherited from ExampleInterface.inheritedMethod3
		println(a)
		println(b)
	}
}

interface ExampleInterface {

	def void inheritedMethod(@Nonnull String param1, @Nonnull String param2)
}

@ParametersAreNonnullByDefault
interface ExampleInterface2 {

	def void inheritedMethod2(String param1, @Nullable String param2)
}

interface ExampleInterface3 {

	@ParametersAreNonnullByDefault
	def void inheritedMethod3(String param1, @Nullable String param2)
}
