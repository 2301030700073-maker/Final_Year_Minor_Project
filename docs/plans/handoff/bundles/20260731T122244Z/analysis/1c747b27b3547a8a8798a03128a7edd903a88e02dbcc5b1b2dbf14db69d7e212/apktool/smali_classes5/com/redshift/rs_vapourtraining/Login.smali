.class public Lcom/redshift/rs_vapourtraining/Login;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Login.java"


# instance fields
.field Tag:Ljava/lang/String;

.field private adminPass:Ljava/lang/String;

.field private adminUser:Ljava/lang/String;

.field private dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 20
    const-string v0, "Redshift_Training_App"

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/Login;->Tag:Ljava/lang/String;

    .line 21
    const-string v0, "admin"

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/Login;->adminUser:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/Login;->adminPass:Ljava/lang/String;

    return-void
.end method

.method public static findBinary(Ljava/lang/String;)Z
    .locals 9
    .param p0, "binaryName"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "found":Z
    if-nez v0, :cond_1

    .line 94
    const-string v1, "/sbin/"

    const-string v2, "/system/bin/"

    const-string v3, "/system/xbin/"

    const-string v4, "/data/local/xbin/"

    const-string v5, "/data/local/bin/"

    const-string v6, "/system/sd/xbin/"

    const-string v7, "/system/bin/failsafe/"

    const-string v8, "/data/local/"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "places":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 98
    .local v4, "where":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 100
    goto :goto_1

    .line 97
    .end local v4    # "where":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "places":[Ljava/lang/String;
    :cond_1
    :goto_1
    return v0
.end method

.method private static isRooted()Z
    .locals 1

    .line 108
    const-string v0, "su"

    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/Login;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public Login(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 54
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 55
    .local v0, "txtname":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "name":Ljava/lang/String;
    const v2, 0x7f0800c1

    invoke-virtual {p0, v2}, Lcom/redshift/rs_vapourtraining/Login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 58
    .local v2, "txtpsswrd":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "psswrd":Ljava/lang/String;
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/Login;->Tag:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/Login;->Tag:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const-string v4, "Please enter all the data.."

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/Login;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v4, v1, v3}, Lcom/redshift/rs_vapourtraining/DBHandler;->checkUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "autheruser":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/redshift/rs_vapourtraining/Login;->isRooted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/Login;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Welcome "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 69
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/redshift/rs_vapourtraining/NavigationComponent;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "username"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 72
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 73
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/redshift/rs_vapourtraining/Login;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v8, v4}, Lcom/redshift/rs_vapourtraining/DBHandler;->getUserID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "userRS"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string v8, "userbuyCredits"

    const-string v9, "0"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    invoke-virtual {p0, v5}, Lcom/redshift/rs_vapourtraining/Login;->startActivity(Landroid/content/Intent;)V

    .line 77
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/redshift/rs_vapourtraining/Login;->isRooted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    const-string v6, "Phone is rooted, Please uninstall application."

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 80
    :cond_2
    const-string v6, "User or password not valid "

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 83
    .end local v4    # "autheruser":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public Register(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/redshift/rs_vapourtraining/Register;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/Login;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/redshift/rs_vapourtraining/Login;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/redshift/rs_vapourtraining/Login;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/redshift/rs_vapourtraining/Login;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 32
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 33
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const v3, 0x7f0b0039

    invoke-virtual {v0, v3}, Lcom/redshift/rs_vapourtraining/Login;->setContentView(I)V

    .line 34
    new-instance v3, Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-direct {v3, v0}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/redshift/rs_vapourtraining/Login;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 35
    const-string v3, "firstTime2"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    iget-object v4, v0, Lcom/redshift/rs_vapourtraining/Login;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    iget-object v5, v0, Lcom/redshift/rs_vapourtraining/Login;->adminUser:Ljava/lang/String;

    iget-object v6, v0, Lcom/redshift/rs_vapourtraining/Login;->adminPass:Ljava/lang/String;

    const/16 v7, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/redshift/rs_vapourtraining/DBHandler;->addNewUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    iget-object v8, v0, Lcom/redshift/rs_vapourtraining/Login;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    const/4 v13, 0x6

    const-string v9, "game1"

    const-string v10, "very cool game"

    const-string v11, "https://images.unsplash.com/photo-1641239844090-fa80f6dd6ea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"

    const-string v12, "$6"

    invoke-virtual/range {v8 .. v13}, Lcom/redshift/rs_vapourtraining/DBHandler;->addNewProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    iget-object v14, v0, Lcom/redshift/rs_vapourtraining/Login;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    const/16 v19, 0x6

    const-string v15, "game2"

    const-string v16, "very not cool game"

    const-string v17, "https://images.unsplash.com/photo-1648670329793-e542dbe65bb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80"

    const-string v18, "$6"

    invoke-virtual/range {v14 .. v19}, Lcom/redshift/rs_vapourtraining/DBHandler;->addNewProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    iget-object v4, v0, Lcom/redshift/rs_vapourtraining/Login;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    const/4 v9, 0x6

    const-string v5, "game3"

    const-string v6, "very pretty cool game"

    const-string v7, "https://images.unsplash.com/photo-1648634362534-238cb091708b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1886&q=80"

    const-string v8, "$6"

    invoke-virtual/range {v4 .. v9}, Lcom/redshift/rs_vapourtraining/DBHandler;->addNewProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    iget-object v10, v0, Lcom/redshift/rs_vapourtraining/Login;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    const/4 v15, 0x6

    const-string v11, "game4"

    const-string v12, "very meh game"

    const-string v13, "https://images.unsplash.com/photo-1648569732633-3b2671226347?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"

    const-string v14, "$6"

    invoke-virtual/range {v10 .. v15}, Lcom/redshift/rs_vapourtraining/DBHandler;->addNewProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    iget-object v4, v0, Lcom/redshift/rs_vapourtraining/Login;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    const-string v5, "1"

    const-string v6, "0000000000000000"

    const-string v7, "234"

    const-string v8, "12/26"

    const-string v9, "Admin"

    invoke-virtual/range {v4 .. v9}, Lcom/redshift/rs_vapourtraining/DBHandler;->addCreditCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 45
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    const-string v1, "cookie"

    const-string v3, "djkwapjdpoajdopj3o24242ojpfejspfjo"

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
