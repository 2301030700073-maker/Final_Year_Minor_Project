.class public final synthetic Lcom/appsflyer/internal/AFf1zSDK$AFa1tSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFf1zSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "AFa1tSDK"
.end annotation


# static fields
.field public static final synthetic getMediationNetwork:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65354
    invoke-static {}, Lcom/appsflyer/AFPurchaseType;->values()[Lcom/appsflyer/AFPurchaseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/appsflyer/AFPurchaseType;->SUBSCRIPTION:Lcom/appsflyer/AFPurchaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/appsflyer/AFPurchaseType;->ONE_TIME_PURCHASE:Lcom/appsflyer/AFPurchaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/appsflyer/internal/AFf1zSDK$AFa1tSDK;->getMediationNetwork:[I

    return-void
.end method
