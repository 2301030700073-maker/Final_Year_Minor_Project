.class public Lcom/android/insecurebankv2/ViewStatement;
.super Landroid/app/Activity;
.source "ViewStatement.java"


# instance fields
.field uname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public callPreferences()V
    .locals 2

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/insecurebankv2/FilePrefActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/ViewStatement;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/ViewStatement;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/android/insecurebankv2/ViewStatement;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/insecurebankv2/ViewStatement;->uname:Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statements_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/insecurebankv2/ViewStatement;->uname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "FILENAME":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v2, "fileToCheck":Ljava/io/File;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const v3, 0x7f070081

    invoke-virtual {p0, v3}, Lcom/android/insecurebankv2/ViewStatement;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 38
    .local v3, "mWebView":Landroid/webkit/WebView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/Statements_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/insecurebankv2/ViewStatement;->uname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 40
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 41
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 42
    new-instance v4, Lcom/android/insecurebankv2/MyWebViewClient;

    invoke-direct {v4}, Lcom/android/insecurebankv2/MyWebViewClient;-><init>()V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    new-instance v4, Landroid/webkit/WebChromeClient;

    invoke-direct {v4}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 44
    .local v4, "cClient":Landroid/webkit/WebChromeClient;
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 45
    .end local v3    # "mWebView":Landroid/webkit/WebView;
    .end local v4    # "cClient":Landroid/webkit/WebChromeClient;
    goto :goto_0

    .line 47
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/insecurebankv2/PostLogin;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v3, "gobacktoPostLogin":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/insecurebankv2/ViewStatement;->startActivity(Landroid/content/Intent;)V

    .line 49
    const-string v4, "Statement does not Exist!!"

    sget-object v5, Lcom/marcohc/toasteroid/Toasteroid$STYLES;->WARNING:Lcom/marcohc/toasteroid/Toasteroid$STYLES;

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/marcohc/toasteroid/Toasteroid;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/marcohc/toasteroid/Toasteroid$STYLES;I)V

    .line 55
    .end local v3    # "gobacktoPostLogin":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 61
    invoke-virtual {p0}, Lcom/android/insecurebankv2/ViewStatement;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 69
    .local v0, "id":I
    const/4 v1, 0x1

    const v2, 0x7f07000e

    if-ne v0, v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/insecurebankv2/ViewStatement;->callPreferences()V

    .line 71
    return v1

    .line 72
    :cond_0
    const v2, 0x7f070008

    if-ne v0, v2, :cond_1

    .line 73
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/insecurebankv2/ViewStatement;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/insecurebankv2/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v2, "i":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/insecurebankv2/ViewStatement;->startActivity(Landroid/content/Intent;)V

    .line 76
    return v1

    .line 78
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
