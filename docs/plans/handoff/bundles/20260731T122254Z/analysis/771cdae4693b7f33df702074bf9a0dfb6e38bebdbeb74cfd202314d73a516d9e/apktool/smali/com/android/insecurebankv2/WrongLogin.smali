.class public Lcom/android/insecurebankv2/WrongLogin;
.super Landroid/app/Activity;
.source "WrongLogin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public callPreferences()V
    .locals 2

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/insecurebankv2/FilePrefActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/WrongLogin;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/WrongLogin;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/insecurebankv2/WrongLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Invalid Credentials!!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/insecurebankv2/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "backtoLogin":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/WrongLogin;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/insecurebankv2/WrongLogin;->finish()V

    .line 25
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 31
    invoke-virtual {p0}, Lcom/android/insecurebankv2/WrongLogin;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 42
    .local v0, "id":I
    const/4 v1, 0x1

    const v2, 0x7f07000e

    if-ne v0, v2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/insecurebankv2/WrongLogin;->callPreferences()V

    .line 44
    return v1

    .line 45
    :cond_0
    const v2, 0x7f070008

    if-ne v0, v2, :cond_1

    .line 46
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/insecurebankv2/WrongLogin;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/insecurebankv2/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v2, "i":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/insecurebankv2/WrongLogin;->startActivity(Landroid/content/Intent;)V

    .line 49
    return v1

    .line 51
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
