.class public final enum Lcom/appsflyer/internal/AFh1uSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFh1uSDK;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFAdRevenueData:Lcom/appsflyer/internal/AFh1uSDK;

.field private static enum getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1uSDK;

.field private static final synthetic getMediationNetwork:[Lcom/appsflyer/internal/AFh1uSDK;

.field private static enum getRevenue:Lcom/appsflyer/internal/AFh1uSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/appsflyer/internal/AFh1uSDK;

    const-string v1, "application"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFh1uSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFh1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1uSDK;

    .line 9
    new-instance v0, Lcom/appsflyer/internal/AFh1uSDK;

    const-string v1, "activity"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFh1uSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFh1uSDK;->getRevenue:Lcom/appsflyer/internal/AFh1uSDK;

    .line 10
    new-instance v0, Lcom/appsflyer/internal/AFh1uSDK;

    const-string/jumbo v1, "other"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFh1uSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFh1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1uSDK;

    .line 1007
    sget-object v1, Lcom/appsflyer/internal/AFh1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1uSDK;

    sget-object v2, Lcom/appsflyer/internal/AFh1uSDK;->getRevenue:Lcom/appsflyer/internal/AFh1uSDK;

    filled-new-array {v1, v2, v0}, [Lcom/appsflyer/internal/AFh1uSDK;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/appsflyer/internal/AFh1uSDK;->getMediationNetwork:[Lcom/appsflyer/internal/AFh1uSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getRevenue(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1uSDK;
    .locals 1

    .line 14
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 15
    sget-object p0, Lcom/appsflyer/internal/AFh1uSDK;->getRevenue:Lcom/appsflyer/internal/AFh1uSDK;

    goto :goto_0

    .line 16
    :cond_0
    instance-of p0, p0, Landroid/app/Application;

    if-eqz p0, :cond_1

    .line 17
    sget-object p0, Lcom/appsflyer/internal/AFh1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1uSDK;

    goto :goto_0

    .line 19
    :cond_1
    sget-object p0, Lcom/appsflyer/internal/AFh1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1uSDK;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFh1uSDK;
    .locals 1

    .line 7
    const-class v0, Lcom/appsflyer/internal/AFh1uSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFh1uSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFh1uSDK;
    .locals 1

    .line 7
    sget-object v0, Lcom/appsflyer/internal/AFh1uSDK;->getMediationNetwork:[Lcom/appsflyer/internal/AFh1uSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFh1uSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFh1uSDK;

    return-object v0
.end method
