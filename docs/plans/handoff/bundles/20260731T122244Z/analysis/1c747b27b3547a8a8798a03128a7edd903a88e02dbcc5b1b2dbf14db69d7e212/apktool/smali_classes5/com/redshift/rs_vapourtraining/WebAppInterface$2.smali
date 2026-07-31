.class Lcom/redshift/rs_vapourtraining/WebAppInterface$2;
.super Ljava/lang/Object;
.source "WebAppInterface.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/WebAppInterface;->getCredits(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/WebAppInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/WebAppInterface;

    .line 62
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$2;->this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$2;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$2;->this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

    iget-object v1, v1, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    const-class v2, Lcom/redshift/rs_vapourtraining/NavigationComponent;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$2;->this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

    invoke-static {v1}, Lcom/redshift/rs_vapourtraining/WebAppInterface;->access$000(Lcom/redshift/rs_vapourtraining/WebAppInterface;)Lcom/redshift/rs_vapourtraining/DBHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$2;->val$userID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/redshift/rs_vapourtraining/DBHandler;->checkUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$2;->this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

    iget-object v1, v1, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    const-string v2, "An error has occured. "

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/WebAppInterface$2;->this$0:Lcom/redshift/rs_vapourtraining/WebAppInterface;

    iget-object v1, v1, Lcom/redshift/rs_vapourtraining/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
