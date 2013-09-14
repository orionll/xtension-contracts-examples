package com.github.xtension.annotations.contracts.examples

import com.github.xtension.annotations.contracts.Contracts
import javax.annotation.Nonnull

@Contracts
class ExampleContracts implements ExampleInterface {

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

	def static void staticMethod(@Nonnull String a, String b, @Nonnull String c) {
		println(a)
		println(b)
		println(c)
	}

	override inheritedMethod(String a, String b) {
		// Preconditions are inherited from ExampleInterface.inheritedMethod
		println(a)
		println(b)
	}
}

interface ExampleInterface {

	def void inheritedMethod(@Nonnull String param1, @Nonnull String param2)
}
