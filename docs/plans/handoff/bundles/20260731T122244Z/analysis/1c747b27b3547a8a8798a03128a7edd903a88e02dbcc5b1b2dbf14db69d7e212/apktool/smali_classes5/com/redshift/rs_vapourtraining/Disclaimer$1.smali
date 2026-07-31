.class Lcom/redshift/rs_vapourtraining/Disclaimer$1;
.super Ljava/lang/Object;
.source "Disclaimer.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/Disclaimer;->getServer(Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/Disclaimer;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/Disclaimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/Disclaimer;

    .line 100
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/Disclaimer$1;->this$0:Lcom/redshift/rs_vapourtraining/Disclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/redshift/rs_vapourtraining/Disclaimer$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/Disclaimer$1;->this$0:Lcom/redshift/rs_vapourtraining/Disclaimer;

    const-string v1, "Connected to server."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/Disclaimer$1;->this$0:Lcom/redshift/rs_vapourtraining/Disclaimer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/redshift/rs_vapourtraining/Disclaimer;->isConnected:Z

    .line 105
    return-void
.end method
