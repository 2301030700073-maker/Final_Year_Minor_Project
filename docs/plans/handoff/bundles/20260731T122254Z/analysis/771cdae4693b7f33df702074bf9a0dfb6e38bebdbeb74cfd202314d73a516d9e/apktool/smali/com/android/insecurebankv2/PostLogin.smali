.class public Lcom/android/insecurebankv2/PostLogin;
.super Landroid/app/Activity;
.source "PostLogin.java"


# instance fields
.field changepasswd_button:Landroid/widget/Button;

.field root_status:Landroid/widget/TextView;

.field statement_button:Landroid/widget/Button;

.field transfer_button:Landroid/widget/Button;

.field uname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkEmulatorStatus()V
    .locals 4

    .line 89
    invoke-direct {p0}, Lcom/android/insecurebankv2/PostLogin;->checkIfDeviceIsEmulator()Ljava/lang/Boolean;

    move-result-object v0

    .line 90
    .local v0, "isEmulator":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 92
    const-string v1, "Application running on Emulator"

    sget-object v3, Lcom/marcohc/toasteroid/Toasteroid$STYLES;->ERROR:Lcom/marcohc/toasteroid/Toasteroid$STYLES;

    invoke-static {p0, v1, v3, v2}, Lcom/marcohc/toasteroid/Toasteroid;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/marcohc/toasteroid/Toasteroid$STYLES;I)V

    goto :goto_0

    .line 96
    :cond_0
    const-string v1, "Application running on Real device"

    sget-object v3, Lcom/marcohc/toasteroid/Toasteroid$STYLES;->SUCCESS:Lcom/marcohc/toasteroid/Toasteroid$STYLES;

    invoke-static {p0, v1, v3, v2}, Lcom/marcohc/toasteroid/Toasteroid;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/marcohc/toasteroid/Toasteroid$STYLES;I)V

    .line 98
    :goto_0
    return-void
.end method

.method private checkIfDeviceIsEmulator()Ljava/lang/Boolean;
    .locals 2

    .line 102
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "unknown"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 111
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private doesSUexist()Z
    .locals 6

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "/system/bin/which"

    aput-object v4, v3, v1

    const-string v4, "su"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    move-object v0, v2

    .line 134
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v2, "in":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 140
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 135
    :cond_0
    return v5

    .line 136
    :cond_1
    nop

    .line 140
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 136
    :cond_2
    return v1

    .line 140
    .end local v2    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v1

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "t":Ljava/lang/Throwable;
    nop

    .line 140
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 138
    :cond_4
    return v1
.end method

.method private doesSuperuserApkExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "rootFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 149
    .local v1, "doesexist":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 151
    return v3

    .line 155
    :cond_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public callPreferences()V
    .locals 2

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/insecurebankv2/FilePrefActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/PostLogin;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method protected changePasswd()V
    .locals 3

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/insecurebankv2/PostLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/insecurebankv2/ChangePassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "cP":Landroid/content/Intent;
    const-string v1, "uname"

    iget-object v2, p0, Lcom/android/insecurebankv2/PostLogin;->uname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/PostLogin;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/PostLogin;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/insecurebankv2/PostLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->uname:Ljava/lang/String;

    .line 49
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/insecurebankv2/PostLogin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->root_status:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/android/insecurebankv2/PostLogin;->showRootStatus()V

    .line 53
    invoke-direct {p0}, Lcom/android/insecurebankv2/PostLogin;->checkEmulatorStatus()V

    .line 55
    const v1, 0x7f07007d

    invoke-virtual {p0, v1}, Lcom/android/insecurebankv2/PostLogin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->transfer_button:Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->transfer_button:Landroid/widget/Button;

    new-instance v2, Lcom/android/insecurebankv2/PostLogin$1;

    invoke-direct {v2, p0}, Lcom/android/insecurebankv2/PostLogin$1;-><init>(Lcom/android/insecurebankv2/PostLogin;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Lcom/android/insecurebankv2/PostLogin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->statement_button:Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->statement_button:Landroid/widget/Button;

    new-instance v2, Lcom/android/insecurebankv2/PostLogin$2;

    invoke-direct {v2, p0}, Lcom/android/insecurebankv2/PostLogin$2;-><init>(Lcom/android/insecurebankv2/PostLogin;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/insecurebankv2/PostLogin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->changepasswd_button:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->changepasswd_button:Landroid/widget/Button;

    new-instance v2, Lcom/android/insecurebankv2/PostLogin$3;

    invoke-direct {v2, p0}, Lcom/android/insecurebankv2/PostLogin$3;-><init>(Lcom/android/insecurebankv2/PostLogin;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 183
    invoke-virtual {p0}, Lcom/android/insecurebankv2/PostLogin;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 194
    .local v0, "id":I
    const/4 v1, 0x1

    const v2, 0x7f07000e

    if-ne v0, v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/insecurebankv2/PostLogin;->callPreferences()V

    .line 196
    return v1

    .line 197
    :cond_0
    const v2, 0x7f070008

    if-ne v0, v2, :cond_1

    .line 198
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/insecurebankv2/PostLogin;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/insecurebankv2/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v2, "i":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v2}, Lcom/android/insecurebankv2/PostLogin;->startActivity(Landroid/content/Intent;)V

    .line 201
    return v1

    .line 203
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method showRootStatus()V
    .locals 3

    .line 118
    const-string v0, "/system/app/Superuser.apk"

    invoke-direct {p0, v0}, Lcom/android/insecurebankv2/PostLogin;->doesSuperuserApkExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/insecurebankv2/PostLogin;->doesSUexist()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 120
    .local v0, "isrooted":Z
    :goto_1
    if-ne v0, v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->root_status:Landroid/widget/TextView;

    const-string v2, "Rooted Device!!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/insecurebankv2/PostLogin;->root_status:Landroid/widget/TextView;

    const-string v2, "Device not Rooted!!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_2
    return-void
.end method

.method protected viewStatment()V
    .locals 3

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/insecurebankv2/PostLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/insecurebankv2/ViewStatement;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "vS":Landroid/content/Intent;
    const-string v1, "uname"

    iget-object v2, p0, Lcom/android/insecurebankv2/PostLogin;->uname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/PostLogin;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
