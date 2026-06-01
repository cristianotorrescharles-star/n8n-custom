from playwright.sync_api import sync_playwright
import time

print("Iniciando teste...")

with sync_playwright() as p:
    browser = p.chromium.launch(headless=True)
    page = browser.new_page()
    page.goto("https://example.com")
    print("Título:", page.title())
    browser.close()

# mantém o container vivo
while True:
    time.sleep(60)
