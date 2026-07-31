.class public final synthetic Lcom/appsflyer/internal/AFd1nSDK$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsflyer/internal/AFd1oSDK;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFd1oSDK;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK$$ExternalSyntheticLambda0;->f$0:Lcom/appsflyer/internal/AFd1oSDK;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK$$ExternalSyntheticLambda0;->f$0:Lcom/appsflyer/internal/AFd1oSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1aSDK;->getRevenue()Z

    return-void
.end method
