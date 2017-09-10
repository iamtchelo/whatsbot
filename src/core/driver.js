import webdriver from 'selenium-webdriver';
import firefox from 'selenium-webdriver/firefox';

const Driver = (browserName, browserProfile) => {
  const browser = new webdriver.Builder()
    .forBrowser(browserName);

  switch (browserName) {
    case 'firefox':
      const profile = new firefox.Profile(browserProfile);
      return browser.setFirefoxOptions(
          new firefox.Options().setProfile(profile)
      ).build();
  }
};

export default Driver;
