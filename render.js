const puppeteer = require('puppeteer');

(async() => {
const browser = await puppeteer.launch({
    headless: true,
    args: ['--no-sandbox']
});
const page = await browser.newPage();
await page.goto('http://localhost:6419/', {waitUntil: 'networkidle2'});
await page.pdf({path: 'page.pdf', format: 'A4'});

await browser.close();
})();
