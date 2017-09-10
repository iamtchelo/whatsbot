import webdriver from 'selenium-webdriver';

const Driver = (browser) => {
  return new webdriver.Builder()
    .forBrowser(browser)
    .build();
};

export default Driver;
