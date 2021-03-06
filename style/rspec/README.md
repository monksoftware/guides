RSpec
=====

General
-------

* All specs green on master are mandatory
* Do not use `xit`, `pending` and do not comment out examples
* Do not use instance variables - use `let` instead
* If you need something to be available before specs are run, use `let!`
* Write `it 'returns true'` and not `it 'should return true'`
* Do not use `rand`, `Faker` or any non-deterministic values anywhere
* Do not use `described_class` or `subject`
* Use `subject` only for contexts with shorthand syntax, `it { should be_present }`
* Do not use braces when not needed. [Example][braces-example]
* Do not nest context too deep
* Use shared examples where appropriate
* Use metaprogramming for testing same code for multiple input values. [Example][metaprogramming-example]
* Try to keep each assertion in separate example (exception: asserting on attributes of hashes, records etc).
* Use `#method` for instance level methods, and `.method` for class level methods

[braces-example]: /style/rspec/braces.rb
[metaprogramming-example]: /style/rspec/metaprogramming.rb

Factories
---------

* Call factory girl helpers directly, without `FactoryGirl.` prefix
* Use `create_list` for creating array of records
* Use `create_pair` for creating two records
* Avoid `create*`, use `build_stubbed` or `build` if possible

Controllers
-----------

* Avoid hitting database - stub services/finders
* Do not render views
* Do not assert on assigns
* Assert on redirects
* Assert on flash messages being set
* Assert on success/error statuses
* Execute request in `before` block and assert on results in separate examples. [Example][controller-example]
* Use [shoulda-matchers][shoulda-matchers]

[shoulda-matchers]: https://github.com/thoughtbot/shoulda-matchers
[controller-example]: /style/rspec/controller_sample.rb

Models
------

* Do not test associations
* Do not test validation one-liners
* Test more complex validations
* Do not use `default_scope`. [Reasoning][default-scope]
* Do not test methods that do not contain any logic/branching
* Test scopes with real records

[default-scope]: http://rails-bestpractices.com/posts/2013/06/15/default_scope-is-evil/
