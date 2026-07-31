.class public Lcom/redshift/rs_vapourtraining/WebViewCredits;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebViewCredits.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/WebViewCredits;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/WebViewCredits;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 26
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/WebViewCredits;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 27
    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lcom/redshift/rs_vapourtraining/WebViewCredits;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/WebViewCredits;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cardName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "cardName":Ljava/lang/String;
    const v2, 0x7f080222

    invoke-virtual {p0, v2}, Lcom/redshift/rs_vapourtraining/WebViewCredits;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 30
    .local v2, "myWebView":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 31
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 32
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 33
    new-instance v0, Lcom/redshift/rs_vapourtraining/WebAppInterface;

    invoke-direct {v0, p0}, Lcom/redshift/rs_vapourtraining/WebAppInterface;-><init>(Landroid/content/Context;)V

    const-string v4, "Android"

    invoke-virtual {v2, v0, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "encodedString":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 36
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "RS_IP"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "RS_IP":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":5000/buycredit/cardname/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    return-void
.end method
