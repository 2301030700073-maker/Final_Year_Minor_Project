.class public Lcom/redshift/rs_vapourtraining/Register;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Register.java"


# instance fields
.field private dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public Register(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 29
    const v0, 0x7f080186

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 30
    .local v0, "txtname":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "name":Ljava/lang/String;
    const v2, 0x7f080185

    invoke-virtual {p0, v2}, Lcom/redshift/rs_vapourtraining/Register;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 33
    .local v2, "txtpsswrd":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "psswrd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/Register;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "Please enter all the data.."

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 37
    return-void

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/Register;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v4, v1, v3}, Lcom/redshift/rs_vapourtraining/DBHandler;->checkUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "autheruser":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 41
    iget-object v6, p0, Lcom/redshift/rs_vapourtraining/Register;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    const/16 v7, 0xa

    invoke-virtual {v6, v1, v3, v7}, Lcom/redshift/rs_vapourtraining/DBHandler;->addNewUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/Register;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Welcome "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 43
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/redshift/rs_vapourtraining/Login;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/redshift/rs_vapourtraining/Register;->startActivity(Landroid/content/Intent;)V

    .line 45
    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/Register;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Username Already exists"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 49
    .end local v4    # "autheruser":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 18
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Register;->requestWindowFeature(I)Z

    .line 20
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/Register;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 21
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/Register;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 23
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Register;->setContentView(I)V

    .line 24
    new-instance v0, Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-direct {v0, p0}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/Register;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 25
    return-void
.end method
