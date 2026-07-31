.class public Lcom/redshift/rs_vapourtraining/AddCard;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AddCard.java"


# instance fields
.field Tag:Ljava/lang/String;

.field private dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 17
    const-string v0, "Redshift_Training_App"

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/AddCard;->Tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public CardAdd(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .line 31
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "userRS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "userID":Ljava/lang/String;
    const v2, 0x7f08004e

    invoke-virtual {p0, v2}, Lcom/redshift/rs_vapourtraining/AddCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 34
    .local v2, "cardname":Landroid/widget/EditText;
    const v3, 0x7f08004f

    invoke-virtual {p0, v3}, Lcom/redshift/rs_vapourtraining/AddCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/EditText;

    .line 35
    .local v9, "cardnumber":Landroid/widget/EditText;
    const v3, 0x7f0800ca

    invoke-virtual {p0, v3}, Lcom/redshift/rs_vapourtraining/AddCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/EditText;

    .line 36
    .local v10, "cardexpmonth":Landroid/widget/EditText;
    const v3, 0x7f0800cb

    invoke-virtual {p0, v3}, Lcom/redshift/rs_vapourtraining/AddCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/EditText;

    .line 37
    .local v11, "cardexpyear":Landroid/widget/EditText;
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/redshift/rs_vapourtraining/AddCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/EditText;

    .line 38
    .local v12, "cardcvv":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/AddCard;->Tag:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/AddCard;->Tag:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 41
    .local v13, "expdate":Ljava/lang/String;
    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/AddCard;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v1

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, Lcom/redshift/rs_vapourtraining/DBHandler;->addCreditCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/redshift/rs_vapourtraining/NavigationComponent;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/AddCard;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v4, v1}, Lcom/redshift/rs_vapourtraining/DBHandler;->checkUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v3}, Lcom/redshift/rs_vapourtraining/AddCard;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/AddCard;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/AddCard;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 25
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/AddCard;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 26
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/AddCard;->setContentView(I)V

    .line 27
    new-instance v0, Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-direct {v0, p0}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/AddCard;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 28
    return-void
.end method
