.class public final synthetic Lcom/appsflyer/internal/AFc1dSDK$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/appsflyer/internal/AFc1dSDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFc1dSDK;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1dSDK$$ExternalSyntheticLambda1;->f$0:Lcom/appsflyer/internal/AFc1dSDK;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK$$ExternalSyntheticLambda1;->f$0:Lcom/appsflyer/internal/AFc1dSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1dSDK;->$r8$lambda$xVFcKPq-dCOp_T5y7I-QPekogKs(Lcom/appsflyer/internal/AFc1dSDK;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
