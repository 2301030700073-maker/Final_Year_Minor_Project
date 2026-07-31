.class public Lcom/redshift/rs_certpinning_bypass/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public launchLogin(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/redshift/rs_certpinning_bypass/Webview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/redshift/rs_certpinning_bypass/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/redshift/rs_certpinning_bypass/MainActivity;->requestWindowFeature(I)Z

    .line 17
    invoke-virtual {p0}, Lcom/redshift/rs_certpinning_bypass/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 18
    invoke-virtual {p0}, Lcom/redshift/rs_certpinning_bypass/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 19
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/redshift/rs_certpinning_bypass/MainActivity;->setContentView(I)V

    .line 20
    return-void
.end method
