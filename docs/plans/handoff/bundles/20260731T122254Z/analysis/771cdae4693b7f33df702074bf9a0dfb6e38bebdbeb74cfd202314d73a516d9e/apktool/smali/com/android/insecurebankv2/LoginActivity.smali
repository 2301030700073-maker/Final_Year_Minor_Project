.class public Lcom/android/insecurebankv2/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field public static final MYPREFS:Ljava/lang/String; = "mySharedPreferences"


# instance fields
.field Password_Text:Landroid/widget/EditText;

.field Username_Text:Landroid/widget/EditText;

.field createuser_buttons:Landroid/widget/Button;

.field fillData_button:Landroid/widget/Button;

.field login_buttons:Landroid/widget/Button;

.field usernameBase64ByteString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public callPreferences()V
    .locals 2

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/insecurebankv2/FilePrefActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method protected createUser()V
    .locals 3

    .line 117
    const-string v0, "Create User functionality is still Work-In-Progress!!"

    sget-object v1, Lcom/marcohc/toasteroid/Toasteroid$STYLES;->WARNING:Lcom/marcohc/toasteroid/Toasteroid$STYLES;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/marcohc/toasteroid/Toasteroid;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/marcohc/toasteroid/Toasteroid$STYLES;I)V

    .line 119
    return-void
.end method

.method protected fillData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 128
    const-string v0, "mySharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/insecurebankv2/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "EncryptedUsername"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "username":Ljava/lang/String;
    const-string v4, "superSecurePassword"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "password":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 135
    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 137
    .local v1, "usernameBase64Byte":[B
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/android/insecurebankv2/LoginActivity;->usernameBase64ByteString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 138
    :catch_0
    move-exception v4

    .line 140
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 142
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const v4, 0x7f070043

    invoke-virtual {p0, v4}, Lcom/android/insecurebankv2/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/insecurebankv2/LoginActivity;->Username_Text:Landroid/widget/EditText;

    .line 143
    const v4, 0x7f070042

    invoke-virtual {p0, v4}, Lcom/android/insecurebankv2/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/insecurebankv2/LoginActivity;->Password_Text:Landroid/widget/EditText;

    .line 144
    iget-object v4, p0, Lcom/android/insecurebankv2/LoginActivity;->Username_Text:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/insecurebankv2/LoginActivity;->usernameBase64ByteString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v4, Lcom/android/insecurebankv2/CryptoClass;

    invoke-direct {v4}, Lcom/android/insecurebankv2/CryptoClass;-><init>()V

    .line 146
    .local v4, "crypt":Lcom/android/insecurebankv2/CryptoClass;
    invoke-virtual {v4, v3}, Lcom/android/insecurebankv2/CryptoClass;->aesDeccryptedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "decryptedPassword":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/insecurebankv2/LoginActivity;->Password_Text:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .end local v1    # "usernameBase64Byte":[B
    .end local v4    # "crypt":Lcom/android/insecurebankv2/CryptoClass;
    .end local v5    # "decryptedPassword":Ljava/lang/String;
    goto :goto_1

    .line 149
    :cond_0
    nop

    .line 158
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/LoginActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/insecurebankv2/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "mess":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f070017

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/insecurebankv2/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "button_CreateUser":Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .end local v1    # "button_CreateUser":Landroid/view/View;
    :cond_0
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/insecurebankv2/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/insecurebankv2/LoginActivity;->login_buttons:Landroid/widget/Button;

    .line 58
    iget-object v1, p0, Lcom/android/insecurebankv2/LoginActivity;->login_buttons:Landroid/widget/Button;

    new-instance v3, Lcom/android/insecurebankv2/LoginActivity$1;

    invoke-direct {v3, p0}, Lcom/android/insecurebankv2/LoginActivity$1;-><init>(Lcom/android/insecurebankv2/LoginActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/insecurebankv2/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/insecurebankv2/LoginActivity;->createuser_buttons:Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/android/insecurebankv2/LoginActivity;->createuser_buttons:Landroid/widget/Button;

    new-instance v2, Lcom/android/insecurebankv2/LoginActivity$2;

    invoke-direct {v2, p0}, Lcom/android/insecurebankv2/LoginActivity$2;-><init>(Lcom/android/insecurebankv2/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/android/insecurebankv2/LoginActivity;->fillData()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    goto :goto_1

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .line 91
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    goto :goto_1

    .line 88
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 89
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .line 86
    :catch_2
    move-exception v1

    .line 87
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    .line 87
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    goto :goto_0

    .line 84
    :catch_3
    move-exception v1

    .line 85
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 85
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 82
    :catch_4
    move-exception v1

    .line 83
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 83
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 80
    :catch_5
    move-exception v1

    .line 81
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 81
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 78
    :catch_6
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 79
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 108
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 178
    invoke-virtual {p0}, Lcom/android/insecurebankv2/LoginActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 189
    .local v0, "id":I
    const/4 v1, 0x1

    const v2, 0x7f07000e

    if-ne v0, v2, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/insecurebankv2/LoginActivity;->callPreferences()V

    .line 191
    return v1

    .line 192
    :cond_0
    const v2, 0x7f070008

    if-ne v0, v2, :cond_1

    .line 193
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/insecurebankv2/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/insecurebankv2/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v2, "i":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/insecurebankv2/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return v1

    .line 198
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected performlogin()V
    .locals 3

    .line 167
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/insecurebankv2/LoginActivity;->Username_Text:Landroid/widget/EditText;

    .line 168
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/insecurebankv2/LoginActivity;->Password_Text:Landroid/widget/EditText;

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/insecurebankv2/DoLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "passed_username"

    iget-object v2, p0, Lcom/android/insecurebankv2/LoginActivity;->Username_Text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "passed_password"

    iget-object v2, p0, Lcom/android/insecurebankv2/LoginActivity;->Password_Text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method
