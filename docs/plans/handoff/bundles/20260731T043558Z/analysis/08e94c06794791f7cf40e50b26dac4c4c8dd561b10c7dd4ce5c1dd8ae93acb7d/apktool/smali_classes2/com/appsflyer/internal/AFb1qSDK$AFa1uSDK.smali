.class public final Lcom/appsflyer/internal/AFb1qSDK$AFa1uSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFb1qSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFa1uSDK"
.end annotation


# instance fields
.field private final AFAdRevenueData:Z

.field public final getCurrencyIso4217Code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK$AFa1uSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 54
    iput-boolean p2, p0, Lcom/appsflyer/internal/AFb1qSDK$AFa1uSDK;->AFAdRevenueData:Z

    return-void
.end method


# virtual methods
.method public final getRevenue()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1qSDK$AFa1uSDK;->AFAdRevenueData:Z

    return v0
.end method
