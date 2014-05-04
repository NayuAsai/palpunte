package white.box.palpunte

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 *
 * @author seri
 */
@TestFor(Bug)
class BugSpec extends Specification {

	def setup() {
	}

	def cleanup() {
	}

	void "test something"() {
	}

	def インスタンス生成確認() {
		setup:
		def bug = new Bug(title:"first bug", bugInfo:"bug information")
		Bug.withTransaction {
			bug.save(flush: true, failOnError:true)
		}

//		@groovy.transform.Field
		def somebug = Bug.get(1)
		println somebug.toString()
//		assertEquals("first bug", somebug.title)
//		assert "bug information" == somebug.bugInfo


		expect: somebug.getProperty(name) == checkvalue
		where:
		name | checkvalue
//		'first bug!' | 'first bug'
		"title" | 'first bug?'
		"bugInfo" | 'bug information'
//		somebug.bugInfo | 'bug information'

	}

	def '名前を呼んで挨拶する'() {
		expect: say(name) == message
		where:
		name      | message
		'world!'   | 'Hello, world!'
		'fumokmm' | 'Hello, fumokmm'
	}

	def say = { "Hello, $it" }
}
