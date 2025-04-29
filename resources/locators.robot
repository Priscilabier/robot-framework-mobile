*** Variables ***
# Exemplo de locators - ajuste conforme seu app
${LOGIN_USERNAME_FIELD}    id=com.seu.app:id/username
${SIGN_IN_BUTTON}    android=new UiSelector().text("Sign In")

# Campos de input usando o EditText diretamente
${USERNAME_FIELD}    android=new UiSelector().className("android.widget.EditText").instance(0)
${PASSWORD_FIELD}    android=new UiSelector().className("android.widget.EditText").instance(1)

# Botão de Sign In
${SIGN_IN_BUTTON}    android=new UiSelector().className("android.widget.Button").description("Sign In")

${WELCOME_MESSAGE}    android=new UiSelector().className("android.widget.TextView").textContains("Welcome")

${ACCOUNT_MENU_ICON}     android=new UiSelector().description("Account").clickable(true)

${PAYMENT_SECTION}    android=new UiScrollable(new UiSelector().scrollable(true)).setAsVerticalList().scrollIntoView(new UiSelector().text("Payment Methods"))
${ADD_PAYMENT_METHOD_SECTION}    android=new UiScrollable(new UiSelector().scrollable(true)).setAsVerticalList().scrollIntoView(new UiSelector().text("ADD PAYMENT METHOD"))

${CARD_NUMBER_FIELD}    android=new UiSelector().className("android.widget.EditText").instance(0)

${CVV_FIELD}    android=new UiSelector().className("android.widget.EditText").instance(3)
${NAME_ON_CARD_FIELD}    android=new UiSelector().className("android.widget.EditText").instance(4)
${ZIPCODE_FIELD}    android=new UiSelector().className("android.widget.EditText").instance(5)

${EXP_MONTH_DROPDOWN}    android=new UiSelector().resourceId("android:id/text1").instance(0)
${EXP_YEAR_DROPDOWN}    android=new UiSelector().resourceId("android:id/text1").instance(1)

${EXP_MONTH_WRAPPER}    android=new UiSelector().className("android.view.ViewGroup").childSelector(new UiSelector().text("Exp. Month"))
${EXP_YEAR_WRAPPER}    android=new UiSelector().className("android.view.ViewGroup").childSelector(new UiSelector().text("Exp. Year"))

${SAVE_PAYMENT_BUTTON}    android=new UiSelector().className("android.widget.Button").description("Save Payment")

${GOT_IT_BUTTON}    android=new UiSelector().className("android.widget.Button").description("Got it")

${ADDRESS_TYPE}    android=new UiSelector().className("android.widget.Spinner").instance(0)

${SHIPPING_ADDRESS_FIELD}    android=new UiSelector().className("android.widget.EditText").instance(1)

# Variáveis para Shipping Address
${SHIPPING_ADDRESSES_BUTTON}    android=new UiSelector().text("Shipping Addresses")
${ADD_NEW_ADDRESS_BUTTON}    android=new UiScrollable(new UiSelector().scrollable(true)).scrollIntoView(new UiSelector().description("Add New Address"))
${ADDRESS_TYPE_FIELD}    android=new UiSelector().className("android.view.ViewGroup").childSelector(new UiSelector().text("Shipping Address Type"))
${CITY_FIELD}    android=new UiSelector().className("android.widget.EditText").instance(3)
${STATE_FIELD}    android=new UiSelector().className("android.widget.EditText").instance(4)
${SAVE_ADDRESS_BUTTON}    android=new UiSelector().className("android.widget.Button").description("Save Address")
${CONFIRM_ADDRESS_BUTTON}    android=new UiSelector().text("CONFIRM ADDRESS")
${ADDRESS_TYPE_DROPDOWN}    android=new UiSelector().className("android.widget.ListView").resourceId("com.birdiRx.birdiApp:id/select_dialog_listview")
${HOME_OPTION}    android=new UiSelector().className("android.widget.CheckedTextView").text("HOME")
${ADDRESS_TYPE_INPUT}    android=new UiSelector().resourceId("text_input").className("android.widget.EditText")
${CA_OPTION}    android=new UiSelector().className("android.widget.CheckedTextView").text("CA")
${SUBMIT_CTA}    android=new UiSelector().className("android.widget.Button").description("Submit")