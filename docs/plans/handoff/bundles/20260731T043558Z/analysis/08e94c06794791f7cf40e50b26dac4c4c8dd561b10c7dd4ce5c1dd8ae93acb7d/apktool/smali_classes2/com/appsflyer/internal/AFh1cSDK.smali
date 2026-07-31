.class public final enum Lcom/appsflyer/internal/AFh1cSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFh1cSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1cSDK;

.field public static final enum getMediationNetwork:Lcom/appsflyer/internal/AFh1cSDK;

.field private static final synthetic getMonetizationNetwork:[Lcom/appsflyer/internal/AFh1cSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/appsflyer/internal/AFh1cSDK;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFh1cSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFh1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFh1cSDK;

    new-instance v1, Lcom/appsflyer/internal/AFh1cSDK;

    const-string v2, "CUSTOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/appsflyer/internal/AFh1cSDK;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/AFh1cSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1cSDK;

    .line 1003
    filled-new-array {v0, v1}, [Lcom/appsflyer/internal/AFh1cSDK;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/appsflyer/internal/AFh1cSDK;->getMonetizationNetwork:[Lcom/appsflyer/internal/AFh1cSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFh1cSDK;
    .locals 1

    .line 3
    const-class v0, Lcom/appsflyer/internal/AFh1cSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFh1cSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFh1cSDK;
    .locals 1

    .line 3
    sget-object v0, Lcom/appsflyer/internal/AFh1cSDK;->getMonetizationNetwork:[Lcom/appsflyer/internal/AFh1cSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFh1cSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFh1cSDK;

    return-object v0
.end method
