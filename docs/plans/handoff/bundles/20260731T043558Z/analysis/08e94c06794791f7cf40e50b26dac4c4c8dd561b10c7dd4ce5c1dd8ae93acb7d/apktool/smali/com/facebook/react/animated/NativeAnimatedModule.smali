.class public Lcom/facebook/react/animated/NativeAnimatedModule;
.super Lcom/facebook/fbreact/specs/NativeAnimatedModuleSpec;
.source "NativeAnimatedModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/bridge/UIManagerListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "NativeAnimatedModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;,
        Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;,
        Lcom/facebook/react/animated/NativeAnimatedModule$BatchExecutionOpCodes;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ANIMATED_MODULE_DEBUG:Z = false


# instance fields
.field private final mAnimatedFrameCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

.field private mBatchingControlledByJS:Z

.field private volatile mCurrentBatchNumber:J

.field private volatile mCurrentFrameNumber:J

.field private mEnqueuedAnimationOnFrame:Z

.field private mInitializedForFabric:Z

.field private mInitializedForNonFabric:Z

.field private final mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/react/animated/NativeAnimatedNodesManager;",
            ">;"
        }
    .end annotation
.end field

.field private mNumFabricAnimations:I

.field private mNumNonFabricAnimations:I

.field private final mOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

.field private final mPreOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

.field private final mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

.field private mUIManagerType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOperations(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreOperations(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReactChoreographer(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/modules/core/ReactChoreographer;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEnqueuedAnimationOnFrame(Lcom/facebook/react/animated/NativeAnimatedModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mEnqueuedAnimationOnFrame:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdecrementInFlightAnimationsForViewTag(Lcom/facebook/react/animated/NativeAnimatedModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule;->decrementInFlightAnimationsForViewTag(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menqueueFrameCallback(Lcom/facebook/react/animated/NativeAnimatedModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->enqueueFrameCallback()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 240
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeAnimatedModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 223
    new-instance v0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;Lcom/facebook/react/animated/NativeAnimatedModule-IA;)V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    .line 224
    new-instance v0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;Lcom/facebook/react/animated/NativeAnimatedModule-IA;)V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mBatchingControlledByJS:Z

    .line 232
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForFabric:Z

    .line 233
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForNonFabric:Z

    .line 234
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mEnqueuedAnimationOnFrame:Z

    const/4 v1, 0x1

    .line 235
    iput v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    .line 236
    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    .line 237
    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    .line 242
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    .line 243
    new-instance v0, Lcom/facebook/react/animated/NativeAnimatedModule$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$1;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mAnimatedFrameCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->setBatchNumber(J)V

    .line 320
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->add(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method private addPreOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V
    .locals 2

    .line 329
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->setBatchNumber(J)V

    .line 330
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->add(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method private addUnbatchedOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 324
    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->setBatchNumber(J)V

    .line 325
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->add(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method private clearFrameCallback()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mAnimatedFrameCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    .line 454
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mEnqueuedAnimationOnFrame:Z

    return-void
.end method

.method private decrementInFlightAnimationsForViewTag(I)V
    .locals 3

    .line 527
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 529
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    goto :goto_0

    .line 531
    :cond_0
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    .line 539
    :goto_0
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    if-nez p1, :cond_1

    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    if-eq v2, v1, :cond_1

    .line 542
    iput v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    goto :goto_1

    .line 543
    :cond_1
    iget v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    if-nez v1, :cond_2

    if-lez p1, :cond_2

    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    if-eq p1, v0, :cond_2

    .line 546
    iput v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    :cond_2
    :goto_1
    return-void
.end method

.method private enqueueFrameCallback()V
    .locals 3

    .line 460
    iget-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mEnqueuedAnimationOnFrame:Z

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mAnimatedFrameCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    .line 462
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mEnqueuedAnimationOnFrame:Z

    :cond_0
    return-void
.end method

.method private initializeLifecycleEventListenersForViewTag(I)V
    .locals 3

    .line 481
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 483
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumFabricAnimations:I

    goto :goto_0

    .line 485
    :cond_0
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNumNonFabricAnimations:I

    .line 488
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 490
    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    invoke-virtual {p1, v2}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->initializeEventListenerForUIManagerType(I)V

    goto :goto_1

    .line 492
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "initializeLifecycleEventListenersForViewTag could not get NativeAnimatedNodesManager"

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v2, "NativeAnimatedModule"

    invoke-static {v2, p1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    :goto_1
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForFabric:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForNonFabric:Z

    if-eqz p1, :cond_3

    :goto_2
    return-void

    .line 504
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 507
    iget v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    invoke-static {p1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 509
    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/UIManager;->addUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V

    .line 510
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    if-ne p1, v1, :cond_4

    .line 511
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForFabric:Z

    goto :goto_3

    .line 513
    :cond_4
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mInitializedForNonFabric:Z

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public addAnimatedEventToView(DLjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    double-to-int p1, p1

    .line 959
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule;->initializeLifecycleEventListenersForViewTag(I)V

    .line 961
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$21;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/facebook/react/animated/NativeAnimatedModule$21;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public connectAnimatedNodeToView(DD)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p3

    .line 876
    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->initializeLifecycleEventListenersForViewTag(I)V

    .line 878
    new-instance p3, Lcom/facebook/react/animated/NativeAnimatedModule$18;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$18;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;II)V

    invoke-direct {p0, p3}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public connectAnimatedNodes(DD)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p3

    .line 817
    new-instance p3, Lcom/facebook/react/animated/NativeAnimatedModule$16;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$16;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;II)V

    invoke-direct {p0, p3}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public createAnimatedNode(DLcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    double-to-int p1, p1

    .line 570
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$4;

    invoke-direct {p2, p0, p1, p3}, Lcom/facebook/react/animated/NativeAnimatedModule$4;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILcom/facebook/react/bridge/ReadableMap;)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public didDispatchMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 6

    .line 353
    iget p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 360
    iget-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mBatchingControlledByJS:Z

    if-nez p1, :cond_1

    .line 370
    iget-wide v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    .line 371
    iget-wide v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    iget-wide v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 372
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    iput-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    .line 373
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    .line 378
    :cond_1
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->executeBatch(JLcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .line 380
    iget-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->executeBatch(JLcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    return-void
.end method

.method public didMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0

    return-void
.end method

.method public didScheduleMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 4

    .line 336
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentFrameNumber:J

    return-void
.end method

.method public disconnectAnimatedNodeFromView(DD)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p3

    .line 906
    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->decrementInFlightAnimationsForViewTag(I)V

    .line 908
    new-instance p3, Lcom/facebook/react/animated/NativeAnimatedModule$19;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$19;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;II)V

    invoke-direct {p0, p3}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public disconnectAnimatedNodes(DD)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p3

    .line 845
    new-instance p3, Lcom/facebook/react/animated/NativeAnimatedModule$17;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$17;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;II)V

    invoke-direct {p0, p3}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public dropAnimatedNode(D)V
    .locals 0

    double-to-int p1, p1

    .line 673
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$9;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$9;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public extractAnimatedNodeOffset(D)V
    .locals 0

    double-to-int p1, p1

    .line 749
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$13;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$13;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public finishOperationBatch()V
    .locals 4

    const/4 v0, 0x0

    .line 558
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mBatchingControlledByJS:Z

    .line 559
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    return-void
.end method

.method public flattenAnimatedNodeOffset(D)V
    .locals 0

    double-to-int p1, p1

    .line 730
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$12;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$12;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-direct {v2, v0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    return-object v0
.end method

.method public getValue(DLcom/facebook/react/bridge/Callback;)V
    .locals 0

    double-to-int p1, p1

    .line 1030
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$23;

    invoke-direct {p2, p0, p1, p3}, Lcom/facebook/react/animated/NativeAnimatedModule$23;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILcom/facebook/react/bridge/Callback;)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    .line 308
    invoke-super {p0}, Lcom/facebook/fbreact/specs/NativeAnimatedModuleSpec;->initialize()V

    .line 310
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1041
    invoke-super {p0}, Lcom/facebook/fbreact/specs/NativeAnimatedModuleSpec;->invalidate()V

    .line 1043
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 430
    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->clearFrameCallback()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->clearFrameCallback()V

    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 315
    invoke-direct {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->enqueueFrameCallback()V

    return-void
.end method

.method public queueAndExecuteBatchedOperations(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 5

    .line 1060
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 1071
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/facebook/react/animated/NativeAnimatedModule$BatchExecutionOpCodes;->fromId(I)Lcom/facebook/react/animated/NativeAnimatedModule$BatchExecutionOpCodes;

    move-result-object v3

    .line 1072
    sget-object v4, Lcom/facebook/react/animated/NativeAnimatedModule$25;->$SwitchMap$com$facebook$react$animated$NativeAnimatedModule$BatchExecutionOpCodes:[I

    invoke-virtual {v3}, Lcom/facebook/react/animated/NativeAnimatedModule$BatchExecutionOpCodes;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 1108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Batch animation execution op: fetching viewTag: unknown op code"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1103
    :pswitch_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/facebook/react/animated/NativeAnimatedModule;->initializeLifecycleEventListenersForViewTag(I)V

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    .line 1100
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/facebook/react/animated/NativeAnimatedModule;->initializeLifecycleEventListenersForViewTag(I)V

    goto :goto_0

    :goto_1
    :pswitch_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :pswitch_3
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :pswitch_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1116
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->startOperationBatch()V

    .line 1117
    new-instance v1, Lcom/facebook/react/animated/NativeAnimatedModule$24;

    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$24;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILcom/facebook/react/bridge/ReadableArray;)V

    invoke-direct {p0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule;->addUnbatchedOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    .line 1238
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->finishOperationBatch()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeAnimatedEventFromView(DLjava/lang/String;D)V
    .locals 0

    double-to-int p1, p1

    double-to-int p2, p4

    .line 996
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule;->decrementInFlightAnimationsForViewTag(I)V

    .line 998
    new-instance p4, Lcom/facebook/react/animated/NativeAnimatedModule$22;

    invoke-direct {p4, p0, p1, p3, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$22;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILjava/lang/String;I)V

    invoke-direct {p0, p4}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public removeListeners(D)V
    .locals 0

    return-void
.end method

.method public restoreDefaultValues(D)V
    .locals 0

    double-to-int p1, p1

    .line 932
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$20;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$20;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addPreOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public setAnimatedNodeOffset(DD)V
    .locals 0

    double-to-int p1, p1

    .line 711
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$11;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/facebook/react/animated/NativeAnimatedModule$11;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ID)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public setAnimatedNodeValue(DD)V
    .locals 0

    double-to-int p1, p1

    .line 692
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$10;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/facebook/react/animated/NativeAnimatedModule$10;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ID)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public setNodesManager(Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public startAnimatingNode(DDLcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 6

    double-to-int v2, p1

    double-to-int v3, p3

    .line 773
    new-instance p1, Lcom/facebook/react/animated/NativeAnimatedModule$14;

    move-object v0, p1

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/animated/NativeAnimatedModule$14;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;IILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule;->addUnbatchedOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public startListeningToAnimatedNodeValue(D)V
    .locals 1

    double-to-int p1, p1

    .line 620
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$6;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$6;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    .line 635
    new-instance v0, Lcom/facebook/react/animated/NativeAnimatedModule$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$7;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILcom/facebook/react/animated/AnimatedNodeValueListener;)V

    invoke-direct {p0, v0}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public startOperationBatch()V
    .locals 4

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mBatchingControlledByJS:Z

    .line 553
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    return-void
.end method

.method public stopAnimation(D)V
    .locals 0

    double-to-int p1, p1

    .line 795
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$15;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$15;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public stopListeningToAnimatedNodeValue(D)V
    .locals 0

    double-to-int p1, p1

    .line 654
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$8;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$8;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public updateAnimatedNodeConfig(DLcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    double-to-int p1, p1

    .line 596
    new-instance p2, Lcom/facebook/react/animated/NativeAnimatedModule$5;

    invoke-direct {p2, p0, p1, p3}, Lcom/facebook/react/animated/NativeAnimatedModule$5;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILcom/facebook/react/bridge/ReadableMap;)V

    invoke-direct {p0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;->addOperation(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V

    return-void
.end method

.method public userDrivenScrollEnded(I)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mNodesManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    const-string/jumbo v1, "topScrollEnded"

    invoke-virtual {v0, p1, v1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getTagsOfConnectedNodes(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 287
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 291
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 292
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 298
    const-string/jumbo v1, "tags"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 300
    invoke-virtual {p0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 302
    const-string v1, "onUserDrivenAnimationEnded"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/bridge/UIManager;)V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mPreOperations:Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 390
    :cond_0
    iget v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mUIManagerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 394
    :cond_1
    iget-wide v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/react/animated/NativeAnimatedModule;->mCurrentBatchNumber:J

    .line 396
    new-instance v2, Lcom/facebook/react/animated/NativeAnimatedModule$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$2;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;J)V

    .line 406
    new-instance v3, Lcom/facebook/react/animated/NativeAnimatedModule$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule$3;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;J)V

    .line 417
    check-cast p1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 418
    invoke-virtual {p1, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 419
    invoke-virtual {p1, v3}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public willMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0

    return-void
.end method
