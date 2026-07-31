.class Lcom/redshift/rs_vapourtraining/Disclaimer$2;
.super Ljava/lang/Object;
.source "Disclaimer.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/Disclaimer;->getServer(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/Disclaimer;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/Disclaimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/Disclaimer;

    .line 106
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/Disclaimer$2;->this$0:Lcom/redshift/rs_vapourtraining/Disclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 109
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/Disclaimer$2;->this$0:Lcom/redshift/rs_vapourtraining/Disclaimer;

    const-string v1, "Server error."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    return-void
.end method
