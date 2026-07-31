.class public final Lcom/appsflyer/internal/AFe1aSDK$AFa1zSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFe1aSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFe1uSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Ljava/lang/Object;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic getCurrencyIso4217Code:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/appsflyer/internal/AFe1uSDK;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic getMediationNetwork:Lcom/appsflyer/internal/AFe1aSDK;

.field private synthetic getMonetizationNetwork:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/appsflyer/internal/AFe1aSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/appsflyer/internal/AFe1uSDK;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/appsflyer/internal/AFe1aSDK;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1aSDK$AFa1zSDK;->getCurrencyIso4217Code:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/appsflyer/internal/AFe1aSDK$AFa1zSDK;->getMonetizationNetwork:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/appsflyer/internal/AFe1aSDK$AFa1zSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1aSDK;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 89
    check-cast p1, Ljava/lang/Exception;

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/appsflyer/internal/AFe1aSDK;->AFAdRevenueData(Ljava/lang/Throwable;)V

    .line 1098
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1aSDK$AFa1zSDK;->getMonetizationNetwork:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1aSDK$AFa1zSDK;->getCurrencyIso4217Code:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getRevenue:Lcom/appsflyer/internal/AFe1uSDK;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v1, "Privacy Sandbox trigger has been registered successfully. "

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 93
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1aSDK$AFa1zSDK;->getMonetizationNetwork:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
