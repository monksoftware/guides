RSpec
=====

General
-------

* Do not use instance variables - use `let` instead
* If you need something to be available before specs are run, use `let!`
* Write `it 'returns true'` and not `it 'should return true'`
* Do not use `rand`, `Faker` or any non-deterministic values anywhere
* Do not use `described_class` or `subject`
* Use `subject` only for contexts with shorthand syntax, `it { should be_present }`
* Do not use braces when not needed. [Example][braces-example]

[braces-example]: /style/rspec/sample.rb#L2-L6

Factories
---------

* Call factory girl helpers directly, without `FactoryGirl.` prefix

Controllers
-----------

* Avoid hitting database - stub services/finders
* Do not render views
* Do not assert on assigns
* Assert on redirects
* Assert on flash messages being set
* Assert on success/error statuses
* Execute request in `before` block and assert on results in separate examples
* Use [shoulda-matchers][shoulda-matchers]

[shoulda-matchers]: https://github.com/thoughtbot/shoulda-matchers
