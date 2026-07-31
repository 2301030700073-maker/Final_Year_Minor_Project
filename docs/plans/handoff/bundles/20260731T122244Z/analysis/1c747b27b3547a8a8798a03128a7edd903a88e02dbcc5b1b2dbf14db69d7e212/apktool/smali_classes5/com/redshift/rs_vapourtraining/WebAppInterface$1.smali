.class Lcom/redshift/rs_vapourtraining/WebAppInterface$1;
.super Ljava/lang/Object;
.source "WebAppInterface.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/WebAppInterface;->getCredits(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/WebAppInterface;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/WebAppInterface;

    .line 52
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;->this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;->val$userName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "userbuyCredits"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;->this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

    iget-object v1, v1, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    const-class v2, Lcom/redshift/rs_vapourtraining/NavigationComponent;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;->val$userName:Ljava/lang/String;

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$1;->this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

    iget-object v1, v1, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method
