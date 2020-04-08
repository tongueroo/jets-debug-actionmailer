# Debug ActionMailer Options Not Loading

Having a hard time reproducing this issue.

* [Undefined method `default_url_options' for nil:NilClass](https://community.rubyonjets.com/t/undefined-method-default-url-options-for-nil-nilclass/400/5)

So put together this project to try to track it down.

## Notes

* Deployed the app to 6 different regions to see if it may be region specific. Was unable to reproduce in any of the 6 regions.
* It may be specific to how the Jets project is setup? Unsure.