# Community Code - Web Ruby Starter Project
Use this project to get started writing tests with Continuous Testing Cloud using Ruby.


1. Clone the sample project from [CommunityCode-Web-RubyStarterProject](https://github.com/ExperitestOfficial/CommunityCode-Web-RubyStarterProject) repository and navigate to the code directory as shown below:

    ```bash
    git clone https://github.com/ExperitestOfficial/CommunityCode-Web-RubyStarterProject
    cd CommunityCode-Web-RubyStarterProject
    ```
2. Set up authentication. Update the following parameters in [config.yml](config.yml):
* url - URL for the cloud the test runs on. For example, https://company.experitest.com/
* accessKey -  Personal authentication key. To learn how to obtain a key, see [Obtaining Access Key](https://docs.experitest.com/pages/viewpage.action?pageId=52593435).

## Running Tests
This project requires Ruby 3.0 or higher.

If this is the first time running the tests, set up the dependencies.
```bash
gem install selenium-webdriver -v 4.10.0
```
To run all tests in this project, execute to following command line:

```bash
ruby -Itest test/run_tests.rb
```

## Desired Capabilities
In this example we use browser options to run a test on chrome. Use a different browser options class to run your test on a different browser.

```ruby
options = Selenium::WebDriver::Options.chrome
```

Continuous Cloud Testing expands Selenium's capabilities and allows better control over the device and test.
See [Capabilities in Selenium Tests](https://docs.experitest.com/display/TE/Capabilities+In+Selenium+Tests) to learn how to customize the desired capabilities for your tests.

## Documentation
To find out more about Continuous Cloud Testing usage, features, and best practices, visit our online [documentation](https://docs.experitest.com/display/TE/Test+Execution+Home)

## Support
If you encounter an issue that is not covered here or in our online documentation, contact us at [support@digital.ai](mailto:support@digital.ai).