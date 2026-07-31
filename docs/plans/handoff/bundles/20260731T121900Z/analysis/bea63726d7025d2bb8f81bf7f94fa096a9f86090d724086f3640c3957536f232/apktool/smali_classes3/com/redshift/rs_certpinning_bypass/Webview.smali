.class public Lcom/redshift/rs_certpinning_bypass/Webview;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Webview.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/redshift/rs_certpinning_bypass/Webview;->requestWindowFeature(I)Z

    .line 21
    invoke-virtual {p0}, Lcom/redshift/rs_certpinning_bypass/Webview;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 22
    invoke-virtual {p0}, Lcom/redshift/rs_certpinning_bypass/Webview;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 23
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/redshift/rs_certpinning_bypass/Webview;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/redshift/rs_certpinning_bypass/Webview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cardName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "cardName":Ljava/lang/String;
    const v2, 0x7f0801a5

    invoke-virtual {p0, v2}, Lcom/redshift/rs_certpinning_bypass/Webview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 27
    .local v2, "myWebView":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 28
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 29
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 30
    const-string v0, "https://redshift.co.za/blogs"

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 31
    return-void
.end method
