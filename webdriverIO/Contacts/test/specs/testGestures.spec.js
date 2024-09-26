import Gestures from "../utils/helpers/gestures";

describe(" Test Suite Locator strategy - example", () => {
  it("TEST CASE WITH GESTURES", async () => {
    // resource id - com.android.permissioncontroller:id/permission_deny_button
    const xpathElement = await $(
      "//android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']"
    );
    await xpathElement.click();

    await browser.pause(3000);
    await Gestures.swipeDown(0.75);
    await browser.pause(3000);
    await Gestures.swipeUp(0.85);
  });
});
