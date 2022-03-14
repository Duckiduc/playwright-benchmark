import { test } from '@playwright/test';

test.beforeEach(async ({ page }) => {
  await page.goto('/Speedometer2.0/');
});

test.describe('Run Speedometer', () => {
  test('should run speedometer', async ({ page }) => {
    // Click text=Start Test
    await page.locator('text=Start Test').click();
    await page.locator('text=Details').waitFor();
  });
})
