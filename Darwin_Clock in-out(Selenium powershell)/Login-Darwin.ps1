$scriptPath = "D:\Login-selenium"

ADD-TYPE -Path "$scriptPath\webDriver.dll"

$chrome = New-Object OpenQA.Selenium.Chrome.ChromeDriver

$chrome.Manage().Window.Maximize()
$chrome.Navigate().GoToUrl('https://nseit.darwinbox.in')

$chrome.FindElement([OpenQA.Selenium.By]::Id("userNameInput")).SendKeys('user_name')
$chrome.FindElement([OpenQA.Selenium.By]::Id("passwordInput")).SendKeys('user_password')
$chrome.FindElement([OpenQA.Selenium.By]::Id("submitButton")).Click()
Start-Sleep -Seconds 10

$clock = $chrome.FindElement([OpenQA.Selenium.By]::xpath('//*[@id="attendance-logger-widget"]'))
$chrome.ExecuteScript("arguments[0].click();",$clock)
Start-Sleep -Seconds 5
$chrome.Quit()
