.class public final enum Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFj1qSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AFa1vSDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFAdRevenueData:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

.field public static final enum getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

.field private static final synthetic getMediationNetwork:[Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

.field public static final enum getRevenue:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getRevenue:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    new-instance v1, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    const-string v2, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    new-instance v2, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    const-string v3, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    .line 1067
    filled-new-array {v0, v1, v2}, [Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    move-result-object v0

    .line 68
    sput-object v0, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getMediationNetwork:[Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;
    .locals 1

    .line 67
    const-class v0, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;
    .locals 1

    .line 67
    sget-object v0, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getMediationNetwork:[Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    return-object v0
.end method
