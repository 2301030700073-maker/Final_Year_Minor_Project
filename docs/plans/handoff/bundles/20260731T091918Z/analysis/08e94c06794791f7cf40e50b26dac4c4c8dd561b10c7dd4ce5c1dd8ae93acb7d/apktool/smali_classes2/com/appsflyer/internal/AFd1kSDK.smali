.class public final Lcom/appsflyer/internal/AFd1kSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final getMediationNetwork:Ljava/util/concurrent/ExecutorService;

.field final getRevenue:Lcom/appsflyer/internal/AFd1fSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1fSDK;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1kSDK;->getRevenue:Lcom/appsflyer/internal/AFd1fSDK;

    .line 17
    iput-object p2, p0, Lcom/appsflyer/internal/AFd1kSDK;->getMediationNetwork:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
