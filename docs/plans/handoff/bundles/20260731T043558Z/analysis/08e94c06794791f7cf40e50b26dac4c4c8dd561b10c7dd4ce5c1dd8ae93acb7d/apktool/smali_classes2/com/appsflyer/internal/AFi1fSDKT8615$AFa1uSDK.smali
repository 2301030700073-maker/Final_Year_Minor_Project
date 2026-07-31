.class public final Lcom/appsflyer/internal/AFi1fSDKT8615$AFa1uSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFi1fSDKT8615;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AFa1uSDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/play/core/integrity/IntegrityTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final getMediationNetwork:J

.field private synthetic getRevenue:Lcom/appsflyer/internal/AFi1jSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFi1jSDK;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1fSDKT8615$AFa1uSDK;->getRevenue:Lcom/appsflyer/internal/AFi1jSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/appsflyer/internal/AFi1fSDKT8615$AFa1uSDK;->getMediationNetwork:J

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/IntegrityTokenResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ""

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    invoke-virtual {v2}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    move-result-object v2

    move-object v3, v10

    goto :goto_1

    .line 46
    :cond_0
    iget-object v3, v1, Lcom/appsflyer/internal/AFi1fSDKT8615$AFa1uSDK;->getRevenue:Lcom/appsflyer/internal/AFi1jSDK;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    :try_start_0
    new-array v11, v6, [Ljava/lang/Object;

    aput-object v2, v11, v8

    aput-object v3, v11, v9

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->d:Ljava/util/Map;

    const v3, -0x212c5c7e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v12

    cmpl-float v12, v12, v7

    rsub-int/lit8 v12, v12, 0x25

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v13

    invoke-static {v2, v12, v13}, Lcom/appsflyer/internal/AFi1hSDK;->getCurrencyIso4217Code(CII)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-string v12, "AFAdRevenueData"

    new-array v13, v6, [Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v14, v14, v4

    add-int/lit8 v14, v14, -0x1

    int-to-char v14, v14

    const/16 v15, 0x30

    invoke-static {v0, v15, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v15

    rsub-int/lit8 v15, v15, 0x23

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    invoke-static {v14, v15, v4}, Lcom/appsflyer/internal/AFi1hSDK;->getCurrencyIso4217Code(CII)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v13, v9

    const-class v4, Ljava/lang/Exception;

    aput-object v4, v13, v8

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v4, Lcom/appsflyer/internal/AFi1hSDK;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    move-object v2, v10

    .line 48
    :goto_1
    iget-object v4, v1, Lcom/appsflyer/internal/AFi1fSDKT8615$AFa1uSDK;->getRevenue:Lcom/appsflyer/internal/AFi1jSDK;

    iget-wide v11, v1, Lcom/appsflyer/internal/AFi1fSDKT8615$AFa1uSDK;->getMediationNetwork:J

    const/4 v5, 0x4

    :try_start_1
    new-array v13, v5, [Ljava/lang/Object;

    const/4 v14, 0x3

    aput-object v3, v13, v14

    aput-object v2, v13, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v13, v8

    aput-object v4, v13, v9

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->d:Ljava/util/Map;

    const v3, 0x420a4db1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "getCurrencyIso4217Code"

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    cmpl-float v2, v2, v7

    int-to-char v2, v2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v11

    const-wide/16 v15, 0x0

    cmp-long v11, v11, v15

    add-int/lit8 v11, v11, 0x23

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    shr-int/lit8 v12, v12, 0x16

    invoke-static {v2, v11, v12}, Lcom/appsflyer/internal/AFi1hSDK;->getCurrencyIso4217Code(CII)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    int-to-char v11, v11

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x24

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    invoke-static {v11, v12, v15}, Lcom/appsflyer/internal/AFi1hSDK;->getCurrencyIso4217Code(CII)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v5, v9

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v8

    const-class v11, Ljava/lang/String;

    aput-object v11, v5, v6

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v14

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v5, Lcom/appsflyer/internal/AFi1hSDK;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    iget-object v2, v1, Lcom/appsflyer/internal/AFi1fSDKT8615$AFa1uSDK;->getRevenue:Lcom/appsflyer/internal/AFi1jSDK;

    :try_start_3
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFi1hSDK;->d:Ljava/util/Map;

    const v5, 0x5ac3a1b7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    cmpl-float v3, v3, v7

    rsub-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    invoke-static {v7, v7}, Landroid/graphics/PointF;->length(FF)F

    move-result v6

    cmpl-float v6, v6, v7

    add-int/lit8 v6, v6, 0x24

    invoke-static {v0, v9, v9}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    invoke-static {v3, v6, v0}, Lcom/appsflyer/internal/AFi1hSDK;->getCurrencyIso4217Code(CII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-array v3, v8, [Ljava/lang/Class;

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-char v6, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x24

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    sub-int/2addr v8, v11

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFi1hSDK;->getCurrencyIso4217Code(CII)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    aput-object v6, v3, v9

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sget-object v0, Lcom/appsflyer/internal/AFi1hSDK;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3, v10, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    throw v2

    :cond_4
    throw v0
.end method
