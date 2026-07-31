.class public Lcom/redshift/rs_vapourtraining/WebAppInterface;
.super Ljava/lang/Object;
.source "WebAppInterface.java"


# instance fields
.field private dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/redshift/rs_vapourtraining/WebAppInterface;)Lcom/redshift/rs_vapourtraining/DBHandler;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/WebAppInterface;

    .line 17
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    return-object v0
.end method


# virtual methods
.method public getBack()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 78
    new-instance v0, Lcom/redshift/rs_vapourtraining/DBHandler;

    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 79
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "userRS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "userID":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    const-class v4, Lcom/redshift/rs_vapourtraining/NavigationComponent;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v3, v1}, Lcom/redshift/rs_vapourtraining/DBHandler;->checkUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public getCredits(I)V
    .locals 11
    .param p1, "numCredits"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 45
    .local v0, "ExampleRequestQueue":Lcom/android/volley/RequestQueue;
    new-instance v1, Lcom/redshift/rs_vapourtraining/DBHandler;

    iget-object v2, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 46
    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 47
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "userRS"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "userID":Ljava/lang/String;
    const-string v4, "RS_IP"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "RS_IP":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":5000/requestcredits/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v5, v2}, Lcom/redshift/rs_vapourtraining/DBHandler;->checkUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "userName":Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 52
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Lcom/android/volley/toolbox/StringRequest;

    new-instance v8, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;

    invoke-direct {v8, p0, v6, v5}, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;-><init>(Lcom/redshift/rs_vapourtraining/WebAppInterface;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    new-instance v9, Lcom/redshift/rs_vapourtraining/WebAppInterface$2;

    invoke-direct {v9, p0, v2}, Lcom/redshift/rs_vapourtraining/WebAppInterface$2;-><init>(Lcom/redshift/rs_vapourtraining/WebAppInterface;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-direct {v7, v10, v4, v8, v9}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 73
    .local v7, "ExampleStringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 74
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "toast"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bought: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    return-void
.end method
