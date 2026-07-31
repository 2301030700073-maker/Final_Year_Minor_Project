.class public Lcom/android/insecurebankv2/FilePrefActivity;
.super Landroid/app/Activity;
.source "FilePrefActivity.java"


# static fields
.field static edit_serverip:Landroid/widget/EditText;

.field static edit_serverport:Landroid/widget/EditText;


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field preferences:Landroid/content/SharedPreferences;

.field submitPref_buttonz:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public callPreferences()V
    .locals 2

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/insecurebankv2/FilePrefActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/FilePrefActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/FilePrefActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/FilePrefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/insecurebankv2/FilePrefActivity;->submitPref_buttonz:Landroid/widget/Button;

    .line 43
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/FilePrefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/android/insecurebankv2/FilePrefActivity;->edit_serverip:Landroid/widget/EditText;

    .line 44
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/FilePrefActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/android/insecurebankv2/FilePrefActivity;->edit_serverport:Landroid/widget/EditText;

    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/insecurebankv2/FilePrefActivity;->preferences:Landroid/content/SharedPreferences;

    .line 46
    iget-object v0, p0, Lcom/android/insecurebankv2/FilePrefActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/insecurebankv2/FilePrefActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v0, p0, Lcom/android/insecurebankv2/FilePrefActivity;->submitPref_buttonz:Landroid/widget/Button;

    new-instance v1, Lcom/android/insecurebankv2/FilePrefActivity$1;

    invoke-direct {v1, p0}, Lcom/android/insecurebankv2/FilePrefActivity$1;-><init>(Lcom/android/insecurebankv2/FilePrefActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 60
    invoke-virtual {p0}, Lcom/android/insecurebankv2/FilePrefActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 71
    .local v0, "id":I
    const/4 v1, 0x1

    const v2, 0x7f07000e

    if-ne v0, v2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/insecurebankv2/FilePrefActivity;->callPreferences()V

    .line 73
    return v1

    .line 74
    :cond_0
    const v2, 0x7f070008

    if-ne v0, v2, :cond_1

    .line 75
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/insecurebankv2/FilePrefActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/insecurebankv2/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v2, "i":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/insecurebankv2/FilePrefActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    return v1

    .line 80
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected setPreferences()V
    .locals 11

    .line 95
    sget-object v0, Lcom/android/insecurebankv2/FilePrefActivity;->edit_serverport:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "serverportSaved":Ljava/lang/String;
    sget-object v1, Lcom/android/insecurebankv2/FilePrefActivity;->edit_serverip:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "serveripSaved":Ljava/lang/String;
    const-string v2, "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    .line 103
    .local v2, "IP_PATTERN":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 104
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 105
    .local v4, "m":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    const-string v6, "(6553[0-5]|655[0-2]\\d|65[0-4]\\d{2}|6[0-4]\\d{3}|[1-5]\\d{4}|[1-9]\\d{0,3})"

    .line 109
    .local v6, "PORT_PATTERN":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 110
    .local v7, "p2":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 111
    .local v8, "m2":Ljava/util/regex/Matcher;
    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 113
    iget-object v9, p0, Lcom/android/insecurebankv2/FilePrefActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v10, "serverip"

    invoke-interface {v9, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    iget-object v9, p0, Lcom/android/insecurebankv2/FilePrefActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v10, "serverport"

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    iget-object v9, p0, Lcom/android/insecurebankv2/FilePrefActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    const-string v9, "Server Configured Successfully!!"

    sget-object v10, Lcom/marcohc/toasteroid/Toasteroid$STYLES;->SUCCESS:Lcom/marcohc/toasteroid/Toasteroid$STYLES;

    invoke-static {p0, v9, v10, v5}, Lcom/marcohc/toasteroid/Toasteroid;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/marcohc/toasteroid/Toasteroid$STYLES;I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/insecurebankv2/FilePrefActivity;->finish()V

    goto :goto_0

    .line 122
    :cond_0
    const-string v9, "Invalid Port entered!!"

    sget-object v10, Lcom/marcohc/toasteroid/Toasteroid$STYLES;->ERROR:Lcom/marcohc/toasteroid/Toasteroid$STYLES;

    invoke-static {p0, v9, v10, v5}, Lcom/marcohc/toasteroid/Toasteroid;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/marcohc/toasteroid/Toasteroid$STYLES;I)V

    .line 124
    .end local v6    # "PORT_PATTERN":Ljava/lang/String;
    .end local v7    # "p2":Ljava/util/regex/Pattern;
    .end local v8    # "m2":Ljava/util/regex/Matcher;
    :goto_0
    goto :goto_1

    .line 127
    :cond_1
    const-string v6, "Invalid Server IP!!"

    sget-object v7, Lcom/marcohc/toasteroid/Toasteroid$STYLES;->ERROR:Lcom/marcohc/toasteroid/Toasteroid$STYLES;

    invoke-static {p0, v6, v7, v5}, Lcom/marcohc/toasteroid/Toasteroid;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/marcohc/toasteroid/Toasteroid$STYLES;I)V

    .line 130
    :goto_1
    return-void
.end method
