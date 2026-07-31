.class public Lcom/redshift/rs_vapourtraining/Disclaimer;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Disclaimer.java"


# instance fields
.field isConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redshift/rs_vapourtraining/Disclaimer;->isConnected:Z

    return-void
.end method

.method public static isValidIPAddress(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ip"    # Ljava/lang/String;

    .line 80
    const-string v0, "(\\d{1,2}|(0|1)\\d{2}|2[0-4]\\d|25[0-5])"

    .line 83
    .local v0, "zeroTo255":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "regex":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 90
    .local v2, "p":Ljava/util/regex/Pattern;
    if-nez p0, :cond_0

    .line 91
    const/4 v3, 0x0

    return v3

    .line 93
    :cond_0
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 94
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    return v4
.end method


# virtual methods
.method public connectionTest(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 71
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Disclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 72
    .local v0, "editIP":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/redshift/rs_vapourtraining/Disclaimer;->getServer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    const/4 v2, 0x0

    const-string v3, "Wait a second."

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 76
    :cond_0
    return-void
.end method

.method public getServer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 98
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 99
    .local v0, "ExampleRequestQueue":Lcom/android/volley/RequestQueue;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":5000/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/redshift/rs_vapourtraining/Disclaimer$1;

    invoke-direct {v3, p0}, Lcom/redshift/rs_vapourtraining/Disclaimer$1;-><init>(Lcom/redshift/rs_vapourtraining/Disclaimer;)V

    new-instance v4, Lcom/redshift/rs_vapourtraining/Disclaimer$2;

    invoke-direct {v4, p0}, Lcom/redshift/rs_vapourtraining/Disclaimer$2;-><init>(Lcom/redshift/rs_vapourtraining/Disclaimer;)V

    const/4 v5, 0x0

    invoke-direct {v2, v5, v1, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 112
    .local v2, "ExampleStringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 113
    iget-boolean v3, p0, Lcom/redshift/rs_vapourtraining/Disclaimer;->isConnected:Z

    if-eqz v3, :cond_0

    .line 114
    iput-boolean v5, p0, Lcom/redshift/rs_vapourtraining/Disclaimer;->isConnected:Z

    .line 115
    const/4 v3, 0x1

    return v3

    .line 117
    :cond_0
    return v5
.end method

.method public launchLogin(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 47
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Disclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 48
    .local v0, "editIP":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "ipAddress":Ljava/lang/String;
    invoke-static {v1}, Lcom/redshift/rs_vapourtraining/Disclaimer;->isValidIPAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/redshift/rs_vapourtraining/Login;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 53
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    const-string v5, "RS_IP"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    move-object v1, v4

    .line 61
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 62
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-virtual {p0, v2}, Lcom/redshift/rs_vapourtraining/Disclaimer;->startActivity(Landroid/content/Intent;)V

    .line 65
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "value":Ljava/lang/String;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 66
    :cond_2
    const/4 v2, 0x0

    const-string v3, "Please enter valid IP!"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 68
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Disclaimer;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/Disclaimer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 34
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/Disclaimer;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 35
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Disclaimer;->setContentView(I)V

    .line 37
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Disclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 38
    .local v0, "editIP":Landroid/widget/EditText;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "RS_IP"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    return-void
.end method
