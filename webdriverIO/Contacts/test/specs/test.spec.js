describe(" Test Suite Locator strategy - example", () => {
  it("TEST CASE", async () => {
    // resource id - com.android.permissioncontroller:id/permission_deny_button
    const xpathElement = await $(
      "//android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']"
    );
    await xpathElement.click();

    // accessibility Id - Create contact
    const addContact = await $("~Create contact");
    await addContact.click();
    // class name -- First name : android.widget.EditText
    const input = await $("android.widget.EditText");
    await input.click();
    await input.setValue("Test");

    // based on text - Save
    const saveText = "Save";
    const saveBtn = await $(`//*[contains(@text,"${saveText}")]`);
    await saveBtn.click();
  });
});
