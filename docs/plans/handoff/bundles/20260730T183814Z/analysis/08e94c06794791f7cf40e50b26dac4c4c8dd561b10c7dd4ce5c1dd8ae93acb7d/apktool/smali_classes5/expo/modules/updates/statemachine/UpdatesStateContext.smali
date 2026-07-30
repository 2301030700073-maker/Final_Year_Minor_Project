.class public final Lexpo/modules/updates/statemachine/UpdatesStateContext;
.super Ljava/lang/Object;
.source "UpdatesStateContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/statemachine/UpdatesStateContext$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 22\u00020\u0001:\u00012B\u009f\u0001\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0016\u0010\u0017B\u0097\u0001\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0018J\u0094\u0001\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0006\u0010(\u001a\u00020\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0019R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0019R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\"R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001bR\u001d\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00010*8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0011\u0010.\u001a\u00020/8F\u00a2\u0006\u0006\u001a\u0004\u00080\u00101\u00a8\u00063"
    }
    d2 = {
        "Lexpo/modules/updates/statemachine/UpdatesStateContext;",
        "",
        "isStartupProcedureRunning",
        "",
        "isUpdateAvailable",
        "isUpdatePending",
        "isChecking",
        "isDownloading",
        "isRestarting",
        "restartCount",
        "",
        "latestManifest",
        "Lorg/json/JSONObject;",
        "downloadedManifest",
        "rollback",
        "Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;",
        "checkError",
        "Lexpo/modules/updates/statemachine/UpdatesStateError;",
        "downloadError",
        "lastCheckForUpdateTime",
        "Ljava/util/Date;",
        "sequenceNumber",
        "<init>",
        "(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;I)V",
        "(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;)V",
        "()Z",
        "getRestartCount",
        "()I",
        "getLatestManifest",
        "()Lorg/json/JSONObject;",
        "getDownloadedManifest",
        "getRollback",
        "()Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;",
        "getCheckError",
        "()Lexpo/modules/updates/statemachine/UpdatesStateError;",
        "getDownloadError",
        "getLastCheckForUpdateTime",
        "()Ljava/util/Date;",
        "getSequenceNumber",
        "copyAndIncrementSequenceNumber",
        "resetCopyWithIncrementedRestartCountAndSequenceNumber",
        "json",
        "",
        "",
        "getJson",
        "()Ljava/util/Map;",
        "bundle",
        "Landroid/os/Bundle;",
        "getBundle",
        "()Landroid/os/Bundle;",
        "Companion",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/statemachine/UpdatesStateContext$Companion;

.field private static final DATE_FORMATTER$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final checkError:Lexpo/modules/updates/statemachine/UpdatesStateError;

.field private final downloadError:Lexpo/modules/updates/statemachine/UpdatesStateError;

.field private final downloadedManifest:Lorg/json/JSONObject;

.field private final isChecking:Z

.field private final isDownloading:Z

.field private final isRestarting:Z

.field private final isStartupProcedureRunning:Z

.field private final isUpdateAvailable:Z

.field private final isUpdatePending:Z

.field private final lastCheckForUpdateTime:Ljava/util/Date;

.field private final latestManifest:Lorg/json/JSONObject;

.field private final restartCount:I

.field private final rollback:Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;

.field private final sequenceNumber:I


# direct methods
.method public static synthetic $r8$lambda$FlRYE5E7W6xPEJfsk9Aoe9Aky_0()Ljava/text/SimpleDateFormat;
    .locals 1

    invoke-static {}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->DATE_FORMATTER_delegate$lambda$5()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/statemachine/UpdatesStateContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->Companion:Lexpo/modules/updates/statemachine/UpdatesStateContext$Companion;

    .line 175
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lexpo/modules/updates/statemachine/UpdatesStateContext$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->DATE_FORMATTER$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;)V
    .locals 15

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 42
    invoke-direct/range {v0 .. v14}, Lexpo/modules/updates/statemachine/UpdatesStateContext;-><init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;I)V

    return-void
.end method

.method private constructor <init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isStartupProcedureRunning:Z

    .line 14
    iput-boolean p2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdateAvailable:Z

    .line 15
    iput-boolean p3, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdatePending:Z

    .line 16
    iput-boolean p4, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isChecking:Z

    .line 17
    iput-boolean p5, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isDownloading:Z

    .line 18
    iput-boolean p6, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isRestarting:Z

    .line 19
    iput p7, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->restartCount:I

    .line 20
    iput-object p8, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->latestManifest:Lorg/json/JSONObject;

    .line 21
    iput-object p9, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadedManifest:Lorg/json/JSONObject;

    .line 22
    iput-object p10, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->rollback:Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;

    .line 23
    iput-object p11, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->checkError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    .line 24
    iput-object p12, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    .line 25
    iput-object p13, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->lastCheckForUpdateTime:Ljava/util/Date;

    .line 26
    iput p14, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->sequenceNumber:I

    return-void
.end method

.method synthetic constructor <init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move v9, v2

    goto :goto_5

    :cond_5
    move/from16 v9, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move v10, v2

    goto :goto_6

    :cond_6
    move/from16 v10, p7

    :goto_6
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v11, v2

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-object v12, v2

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-object v13, v2

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    move-object v14, v2

    goto :goto_a

    :cond_a
    move-object/from16 v14, p11

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    move-object v15, v2

    goto :goto_b

    :cond_b
    move-object/from16 v15, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move-object/from16 v16, v2

    goto :goto_c

    :cond_c
    move-object/from16 v16, p13

    :goto_c
    move-object/from16 v3, p0

    move/from16 v17, p14

    .line 12
    invoke-direct/range {v3 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;-><init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;I)V

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v2, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    move-object v8, v9

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v9

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v9

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v9

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v9

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v9, p13

    :goto_c
    move-object p1, p0

    move/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v2

    move-object/from16 p9, v8

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v9

    .line 28
    invoke-direct/range {p1 .. p14}, Lexpo/modules/updates/statemachine/UpdatesStateContext;-><init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;)V

    return-void
.end method

.method private static final DATE_FORMATTER_delegate$lambda$5()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 176
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 177
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static final synthetic access$getDATE_FORMATTER$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 12
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->DATE_FORMATTER$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic copyAndIncrementSequenceNumber$default(Lexpo/modules/updates/statemachine/UpdatesStateContext;ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILjava/lang/Object;)Lexpo/modules/updates/statemachine/UpdatesStateContext;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 60
    iget-boolean v2, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isStartupProcedureRunning:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 61
    iget-boolean v3, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdateAvailable:Z

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 62
    iget-boolean v4, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdatePending:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 63
    iget-boolean v5, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isChecking:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 64
    iget-boolean v6, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isDownloading:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 65
    iget-boolean v7, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isRestarting:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 66
    iget v8, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->restartCount:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 67
    iget-object v9, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->latestManifest:Lorg/json/JSONObject;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 68
    iget-object v10, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadedManifest:Lorg/json/JSONObject;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 69
    iget-object v11, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->rollback:Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 70
    iget-object v12, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->checkError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 71
    iget-object v13, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 72
    iget-object v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->lastCheckForUpdateTime:Ljava/util/Date;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p13

    :goto_c
    move p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    .line 59
    invoke-virtual/range {p0 .. p13}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->copyAndIncrementSequenceNumber(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copyAndIncrementSequenceNumber(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;)Lexpo/modules/updates/statemachine/UpdatesStateContext;
    .locals 17

    .line 73
    new-instance v15, Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-object/from16 v14, p0

    .line 87
    iget v0, v14, Lexpo/modules/updates/statemachine/UpdatesStateContext;->sequenceNumber:I

    add-int/lit8 v16, v0, 0x1

    move-object v0, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, v16

    .line 73
    invoke-direct/range {v0 .. v14}, Lexpo/modules/updates/statemachine/UpdatesStateContext;-><init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;I)V

    return-object v15
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 4

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string v1, "isStartupProcedureRunning"

    iget-boolean v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isStartupProcedureRunning:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-string v1, "isUpdateAvailable"

    iget-boolean v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdateAvailable:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string v1, "isUpdatePending"

    iget-boolean v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdatePending:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string v1, "isChecking"

    iget-boolean v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isChecking:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string v1, "isDownloading"

    iget-boolean v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isDownloading:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    const-string v1, "isRestarting"

    iget-boolean v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isRestarting:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    const-string v1, "restartCount"

    iget v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->restartCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v1, "sequenceNumber"

    iget v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->sequenceNumber:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->latestManifest:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 143
    const-string v2, "latestManifestString"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadedManifest:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 146
    const-string v2, "downloadedManifestString"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->rollback:Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;

    if-eqz v1, :cond_2

    .line 151
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 152
    iget-object v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->rollback:Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;

    invoke-virtual {v2}, Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;->getCommitTimeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "commitTime"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 149
    const-string v2, "rollback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 156
    :cond_2
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->checkError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    const-string v2, "message"

    if-eqz v1, :cond_3

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 158
    iget-object v3, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->checkError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    invoke-virtual {v3}, Lexpo/modules/updates/statemachine/UpdatesStateError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "checkError"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 162
    :cond_3
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    if-eqz v1, :cond_4

    .line 163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    iget-object v3, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    invoke-virtual {v3}, Lexpo/modules/updates/statemachine/UpdatesStateError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "downloadError"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 168
    :cond_4
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->lastCheckForUpdateTime:Ljava/util/Date;

    if-eqz v1, :cond_5

    .line 169
    sget-object v1, Lexpo/modules/updates/statemachine/UpdatesStateContext;->Companion:Lexpo/modules/updates/statemachine/UpdatesStateContext$Companion;

    invoke-virtual {v1}, Lexpo/modules/updates/statemachine/UpdatesStateContext$Companion;->getDATE_FORMATTER()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->lastCheckForUpdateTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastCheckForUpdateTimeString"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public final getCheckError()Lexpo/modules/updates/statemachine/UpdatesStateError;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->checkError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    return-object v0
.end method

.method public final getDownloadError()Lexpo/modules/updates/statemachine/UpdatesStateError;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    return-object v0
.end method

.method public final getDownloadedManifest()Lorg/json/JSONObject;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadedManifest:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getJson()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 98
    new-array v0, v0, [Lkotlin/Pair;

    iget-boolean v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isStartupProcedureRunning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isStartupProcedureRunning"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 99
    iget-boolean v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdateAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isUpdateAvailable"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 100
    iget-boolean v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdatePending:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isUpdatePending"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 101
    iget-boolean v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isChecking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isChecking"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 102
    iget-boolean v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isDownloading:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isDownloading"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 103
    iget-boolean v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isRestarting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRestarting"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 104
    iget v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->restartCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restartCount"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 105
    iget v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->sequenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sequenceNumber"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 97
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->latestManifest:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 108
    const-string v2, "latestManifest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadedManifest:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 111
    const-string v2, "downloadedManifest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->rollback:Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;

    if-eqz v1, :cond_2

    .line 114
    const-string v2, "rollback"

    invoke-virtual {v1}, Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;->getJson()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->checkError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    if-eqz v1, :cond_3

    .line 117
    const-string v2, "checkError"

    invoke-virtual {v1}, Lexpo/modules/updates/statemachine/UpdatesStateError;->getJson()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_3
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->downloadError:Lexpo/modules/updates/statemachine/UpdatesStateError;

    if-eqz v1, :cond_4

    .line 120
    const-string v2, "downloadError"

    invoke-virtual {v1}, Lexpo/modules/updates/statemachine/UpdatesStateError;->getJson()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_4
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->lastCheckForUpdateTime:Ljava/util/Date;

    if-eqz v1, :cond_5

    .line 123
    const-string v2, "lastCheckForUpdateTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public final getLastCheckForUpdateTime()Ljava/util/Date;
    .locals 1

    .line 25
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->lastCheckForUpdateTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getLatestManifest()Lorg/json/JSONObject;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->latestManifest:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getRestartCount()I
    .locals 1

    .line 19
    iget v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->restartCount:I

    return v0
.end method

.method public final getRollback()Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->rollback:Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;

    return-object v0
.end method

.method public final getSequenceNumber()I
    .locals 1

    .line 26
    iget v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->sequenceNumber:I

    return v0
.end method

.method public final isChecking()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isChecking:Z

    return v0
.end method

.method public final isDownloading()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isDownloading:Z

    return v0
.end method

.method public final isRestarting()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isRestarting:Z

    return v0
.end method

.method public final isStartupProcedureRunning()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isStartupProcedureRunning:Z

    return v0
.end method

.method public final isUpdateAvailable()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdateAvailable:Z

    return v0
.end method

.method public final isUpdatePending()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->isUpdatePending:Z

    return v0
.end method

.method public final resetCopyWithIncrementedRestartCountAndSequenceNumber()Lexpo/modules/updates/statemachine/UpdatesStateContext;
    .locals 19

    move-object/from16 v0, p0

    .line 90
    new-instance v18, Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-object/from16 v1, v18

    .line 91
    iget v2, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->restartCount:I

    add-int/lit8 v8, v2, 0x1

    .line 92
    iget v2, v0, Lexpo/modules/updates/statemachine/UpdatesStateContext;->sequenceNumber:I

    add-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1fbf

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 90
    invoke-direct/range {v1 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;-><init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v18
.end method
