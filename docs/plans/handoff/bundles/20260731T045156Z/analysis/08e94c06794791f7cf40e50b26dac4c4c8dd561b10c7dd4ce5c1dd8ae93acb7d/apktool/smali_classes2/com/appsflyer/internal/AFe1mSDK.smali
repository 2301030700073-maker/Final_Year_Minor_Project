.class public final enum Lcom/appsflyer/internal/AFe1mSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFe1mSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum AFLogger:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum areAllFieldsValid:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum component1:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum component2:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum component3:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum component4:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum copy:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum copydefault:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum e:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum equals:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum getMediationNetwork:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum getMonetizationNetwork:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum hashCode:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum registerClient:Lcom/appsflyer/internal/AFe1mSDK;

.field public static final enum toString:Lcom/appsflyer/internal/AFe1mSDK;

.field private static final synthetic w:[Lcom/appsflyer/internal/AFe1mSDK;


# instance fields
.field public final unregisterClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 13
    new-instance v1, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v0, v1

    const-string v2, "RC_CDN"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1mSDK;

    .line 14
    new-instance v2, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v1, v2

    const-string v3, "FETCH_ADVERTISING_ID"

    invoke-direct {v2, v3, v4, v4}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/appsflyer/internal/AFe1mSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1mSDK;

    .line 15
    new-instance v3, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v2, v3

    const-string v4, "LOAD_CACHE"

    const/4 v11, 0x2

    invoke-direct {v3, v4, v11, v11}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/appsflyer/internal/AFe1mSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1mSDK;

    .line 16
    new-instance v4, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v3, v4

    const-string v5, "CACHED_EVENT"

    const/4 v12, 0x3

    invoke-direct {v4, v5, v12, v11}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/appsflyer/internal/AFe1mSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    .line 17
    new-instance v5, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v4, v5

    const-string v6, "CONVERSION"

    const/4 v15, 0x4

    invoke-direct {v5, v6, v15, v11}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 18
    new-instance v6, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v5, v6

    const-string v7, "PLAY_INTEGRITY_API"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v11}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/appsflyer/internal/AFe1mSDK;->component1:Lcom/appsflyer/internal/AFe1mSDK;

    .line 19
    new-instance v7, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v6, v7

    const-string v8, "REGISTER_TRIGGER"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v11}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/appsflyer/internal/AFe1mSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1mSDK;

    .line 20
    new-instance v8, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v7, v8

    const-string v9, "ONELINK"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v11}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/appsflyer/internal/AFe1mSDK;->component2:Lcom/appsflyer/internal/AFe1mSDK;

    .line 21
    new-instance v9, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v8, v9

    const-string v10, "DLSDK"

    const/16 v13, 0x8

    invoke-direct {v9, v10, v13, v11}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/appsflyer/internal/AFe1mSDK;->component3:Lcom/appsflyer/internal/AFe1mSDK;

    .line 22
    new-instance v10, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v9, v10

    const-string v13, "RESOLVE_ESP"

    const/16 v14, 0x9

    invoke-direct {v10, v13, v14, v11}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/appsflyer/internal/AFe1mSDK;->component4:Lcom/appsflyer/internal/AFe1mSDK;

    .line 23
    new-instance v13, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v10, v13

    const-string v14, "ATTR"

    const/16 v15, 0xa

    invoke-direct {v13, v14, v15, v11}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/appsflyer/internal/AFe1mSDK;->toString:Lcom/appsflyer/internal/AFe1mSDK;

    .line 25
    new-instance v13, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v11, v13

    const-string v14, "GCDSDK"

    const/16 v15, 0xb

    invoke-direct {v13, v14, v15, v12}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/appsflyer/internal/AFe1mSDK;->hashCode:Lcom/appsflyer/internal/AFe1mSDK;

    .line 26
    new-instance v13, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v12, v13

    const-string v14, "REGISTER"

    const/16 v15, 0xc

    move-object/from16 v21, v0

    const/4 v0, 0x4

    invoke-direct {v13, v14, v15, v0}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/appsflyer/internal/AFe1mSDK;->copy:Lcom/appsflyer/internal/AFe1mSDK;

    .line 27
    new-instance v14, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v13, v14

    const-string v15, "LAUNCH"

    move-object/from16 v22, v1

    const/16 v1, 0xd

    invoke-direct {v14, v15, v1, v0}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/appsflyer/internal/AFe1mSDK;->copydefault:Lcom/appsflyer/internal/AFe1mSDK;

    .line 28
    new-instance v1, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v14, v1

    const-string v15, "INAPP"

    move-object/from16 v23, v2

    const/16 v2, 0xe

    invoke-direct {v1, v15, v2, v0}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/internal/AFe1mSDK;->equals:Lcom/appsflyer/internal/AFe1mSDK;

    .line 29
    new-instance v1, Lcom/appsflyer/internal/AFe1mSDK;

    move-object v15, v1

    const-string v2, "MANUAL_PURCHASE_VALIDATION"

    move-object/from16 v24, v3

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/internal/AFe1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1mSDK;

    .line 30
    new-instance v1, Lcom/appsflyer/internal/AFe1mSDK;

    move-object/from16 v16, v1

    const-string v2, "PURCHASE_VALIDATE"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/internal/AFe1mSDK;->AFLogger:Lcom/appsflyer/internal/AFe1mSDK;

    .line 31
    new-instance v1, Lcom/appsflyer/internal/AFe1mSDK;

    move-object/from16 v17, v1

    const-string v2, "SDK_SERVICES"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/internal/AFe1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1mSDK;

    .line 32
    new-instance v1, Lcom/appsflyer/internal/AFe1mSDK;

    move-object/from16 v18, v1

    const-string v2, "IMPRESSIONS"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/internal/AFe1mSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1mSDK;

    .line 35
    new-instance v1, Lcom/appsflyer/internal/AFe1mSDK;

    move-object/from16 v19, v1

    const-string v2, "ARS_VALIDATE"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/internal/AFe1mSDK;->registerClient:Lcom/appsflyer/internal/AFe1mSDK;

    .line 36
    new-instance v1, Lcom/appsflyer/internal/AFe1mSDK;

    move-object/from16 v20, v1

    const-string v2, "ADREVENUE"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/internal/AFe1mSDK;->e:Lcom/appsflyer/internal/AFe1mSDK;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    .line 1012
    filled-new-array/range {v0 .. v20}, [Lcom/appsflyer/internal/AFe1mSDK;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/appsflyer/internal/AFe1mSDK;->w:[Lcom/appsflyer/internal/AFe1mSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/appsflyer/internal/AFe1mSDK;->unregisterClient:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1mSDK;
    .locals 1

    .line 12
    const-class v0, Lcom/appsflyer/internal/AFe1mSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFe1mSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFe1mSDK;
    .locals 1

    .line 12
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->w:[Lcom/appsflyer/internal/AFe1mSDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFe1mSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFe1mSDK;

    return-object v0
.end method
