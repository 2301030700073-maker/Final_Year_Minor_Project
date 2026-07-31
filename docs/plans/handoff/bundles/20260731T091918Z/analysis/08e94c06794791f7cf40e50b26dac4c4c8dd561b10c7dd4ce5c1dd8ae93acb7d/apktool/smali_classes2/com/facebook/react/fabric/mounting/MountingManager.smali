.class public Lcom/facebook/react/fabric/mounting/MountingManager;
.super Ljava/lang/Object;
.source "MountingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;
    }
.end annotation


# static fields
.field private static final MAX_STOPPED_SURFACE_IDS_LENGTH:I = 0xf

.field public static final TAG:Ljava/lang/String; = "MountingManager"


# instance fields
.field private final mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

.field private mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

.field private mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

.field private final mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

.field private final mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    new-instance v0, Lcom/facebook/react/touch/JSResponderHandler;

    invoke-direct {v0}, Lcom/facebook/react/touch/JSResponderHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 64
    new-instance v0, Lcom/facebook/react/uimanager/RootViewManager;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewManager;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    .line 75
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 76
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    return-void
.end method

.method private getSurfaceMountingManager(II)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 472
    invoke-virtual {p0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public attachRootView(ILandroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 1

    .line 120
    const-string v0, "attachView"

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object p1, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Trying to attach a view to a stopped surface"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->attachRootView(Landroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-void
.end method

.method public clearJSResponder()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Lcom/facebook/react/touch/JSResponderHandler;->clearJSResponder()V

    return-void
.end method

.method public enqueuePendingEvent(IILjava/lang/String;ZLcom/facebook/react/bridge/WritableMap;I)V
    .locals 6

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceMountingManager(II)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 460
    sget-object p3, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    .line 463
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 464
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 460
    const-string p4, "Cannot queue event without valid surface mounting manager for tag: %d, surfaceId: %d"

    invoke-static {p3, p4, p2, p1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    .line 467
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->enqueuePendingEvent(ILjava/lang/String;ZLcom/facebook/react/bridge/WritableMap;I)V

    return-void
.end method

.method public experimental_prefetchResource(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;IILcom/facebook/react/common/mapbuffer/MapBuffer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/UnstableReactNativeAPI;
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 447
    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p2

    .line 448
    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/facebook/react/uimanager/ViewManager;->experimental_prefetchResource(Lcom/facebook/react/bridge/ReactContext;IILcom/facebook/react/common/mapbuffer/MapBuffer;)V

    return-void
.end method

.method public getEventEmitter(II)Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceMountingManager(II)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 338
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getEventEmitter(I)Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getSurfaceId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object p1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getSurfaceId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object p1

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 174
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object p1
.end method

.method public getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 3

    .line 180
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find SurfaceMountingManager for surfaceId: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]. Context: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object p1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 242
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 243
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewExists(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-nez p1, :cond_2

    .line 245
    iput-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    :cond_2
    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSurfaceManagerForViewEnforced(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 3

    .line 256
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find SurfaceMountingManager for tag: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewExists(I)Z
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isWaitingForViewAttach(I)Z
    .locals 2

    .line 207
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 216
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isRootViewAttached()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public measure(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 12

    move-object v0, p0

    .line 371
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    move-object v2, p2

    .line 372
    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v2

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 373
    invoke-virtual/range {v2 .. v11}, Lcom/facebook/react/uimanager/ViewManager;->measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J

    move-result-wide v1

    return-wide v1
.end method

.method public measureMapBuffer(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 12

    move-object v0, p0

    .line 414
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    move-object v2, p2

    .line 415
    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v2

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 416
    invoke-virtual/range {v2 .. v11}, Lcom/facebook/react/uimanager/ViewManager;->measure(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J

    move-result-wide v1

    return-wide v1
.end method

.method public receiveCommand(IIILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 274
    const-string/jumbo v0, "receiveCommand:int"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    .line 275
    invoke-virtual {p1, p2, p3, p4}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->receiveCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    .line 280
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 281
    const-string/jumbo v0, "receiveCommand:string"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    .line 282
    invoke-virtual {p1, p2, p3, p4}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->receiveCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public sendAccessibilityEvent(III)V
    .locals 1

    .line 300
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 302
    invoke-virtual {p0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForViewEnforced(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->sendAccessibilityEvent(II)V

    goto :goto_0

    .line 304
    :cond_0
    const-string/jumbo v0, "sendAccessibilityEvent"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    .line 305
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->sendAccessibilityEvent(II)V

    :goto_0
    return-void
.end method

.method public startSurface(ILcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 8

    .line 86
    new-instance v7, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    iget-object v4, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    iget-object v5, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    move-object v0, v7

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;-><init>(ILcom/facebook/react/touch/JSResponderHandler;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v7, :cond_0

    .line 102
    sget-object v0, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called startSurface more than once for the SurfaceId ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz p3, :cond_1

    .line 111
    invoke-virtual {v7, p3, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->attachRootView(Landroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    :cond_1
    return-object v7
.end method

.method public stopSurface(I)V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_2

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 139
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    sget-object v2, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Removing stale SurfaceMountingManager: [%d]"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->stopSurface()V

    .line 147
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 148
    iput-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-ne p1, v0, :cond_3

    .line 151
    iput-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    goto :goto_1

    .line 154
    :cond_2
    sget-object v0, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot call stopSurface on non-existent surface: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public surfaceIsStopped(I)Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 198
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public updateProps(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 311
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    if-nez p2, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForViewEnforced(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->updateProps(ILcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method
