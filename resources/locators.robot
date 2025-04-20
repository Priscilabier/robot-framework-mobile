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