.class public final Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "LottieAnimationViewManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "LottieAnimationView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        ">;",
        "Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface<",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0002H\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nH\u0014J\u0014\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0016\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u0002H\u0014J\"\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u00102\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J \u0010\u001f\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010$\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u001a\u0010&\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0010\'\u001a\u0004\u0018\u00010\u0010H\u0017J\u001a\u0010(\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0010)\u001a\u0004\u0018\u00010\u0010H\u0017J\u001a\u0010*\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0010+\u001a\u0004\u0018\u00010\u0010H\u0017J\u001a\u0010,\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0010+\u001a\u0004\u0018\u00010\u0010H\u0017J\u0018\u0010-\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010.\u001a\u00020/H\u0017J\u001a\u00100\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u00101\u001a\u0004\u0018\u00010\u0010H\u0017J\u001a\u00102\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u00103\u001a\u0004\u0018\u00010\u0010H\u0017J\u0018\u00104\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u00105\u001a\u000206H\u0017J\u0018\u00107\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u00108\u001a\u000209H\u0017J\u0018\u0010:\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010;\u001a\u00020/H\u0017J\u0018\u0010<\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010=\u001a\u00020/H\u0017J\u001a\u0010>\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0010?\u001a\u0004\u0018\u00010\u0010H\u0017J\u0018\u0010@\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010A\u001a\u00020/H\u0017J\u0018\u0010B\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010C\u001a\u00020/H\u0017J\u0018\u0010D\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010E\u001a\u00020/H\u0017J\u001a\u0010F\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0010G\u001a\u0004\u0018\u00010\u001eH\u0017J\u001a\u0010H\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0010I\u001a\u0004\u0018\u00010\u001eH\u0017J\u001c\u0010J\u001a\u00020\u00192\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0010K\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010L\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u00022\u0008\u0010K\u001a\u0004\u0018\u00010MH\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;",
        "Lcom/facebook/react/uimanager/SimpleViewManager;",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerInterface;",
        "<init>",
        "()V",
        "propManagersMap",
        "Ljava/util/WeakHashMap;",
        "Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;",
        "delegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "getOrCreatePropertyManager",
        "view",
        "getDelegate",
        "getExportedViewConstants",
        "",
        "",
        "",
        "getName",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "onAfterUpdateTransaction",
        "",
        "receiveCommand",
        "root",
        "commandId",
        "args",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "play",
        "startFrame",
        "",
        "endFrame",
        "reset",
        "pause",
        "resume",
        "setSourceName",
        "name",
        "setSourceJson",
        "json",
        "setSourceURL",
        "urlString",
        "setSourceDotLottieURI",
        "setCacheComposition",
        "cacheComposition",
        "",
        "setResizeMode",
        "resizeMode",
        "setRenderMode",
        "renderMode",
        "setProgress",
        "progress",
        "",
        "setSpeed",
        "speed",
        "",
        "setLoop",
        "loop",
        "setAutoPlay",
        "autoPlay",
        "setImageAssetsFolder",
        "imageAssetsFolder",
        "setEnableMergePathsAndroidForKitKatAndAbove",
        "enableMergePaths",
        "setEnableSafeModeAndroid",
        "enableSafeMode",
        "setHardwareAccelerationAndroid",
        "hardwareAccelerationAndroid",
        "setColorFilters",
        "colorFilters",
        "setTextFiltersAndroid",
        "textFilters",
        "setTextFiltersIOS",
        "value",
        "setDummy",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "lottie-react-native_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            ">;"
        }
    .end annotation
.end field

.field private final propManagersMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QNXQhL4pE77_8fK_OfTUMf8zxb8(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->createViewInstance$lambda$0(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UPa1SKDi2L3QgfGoWlpEKSI_qfk(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->createViewInstance$lambda$1(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->propManagersMap:Ljava/util/WeakHashMap;

    .line 41
    new-instance v0, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/uimanager/BaseViewManager;

    invoke-direct {v0, v1}, Lcom/facebook/react/viewmanagers/LottieAnimationViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    iput-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method

.method private static final createViewInstance$lambda$0(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Throwable;)V
    .locals 0

    .line 68
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->sendAnimationFailureEvent(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final createViewInstance$lambda$1(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->sendAnimationLoadedEvent(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method private final getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->propManagersMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 48
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->propManagersMap:Ljava/util/WeakHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 70
    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    .line 73
    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$createViewInstance$3;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$createViewInstance$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->getExportedViewConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "LottieAnimationView"

    return-object v0
.end method

.method public bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->onAfterUpdateTransaction(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/facebook/react/uimanager/SimpleViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->commitChanges()V

    return-void
.end method

.method public bridge synthetic pause(Landroid/view/View;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->pause(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public pause(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->pause(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public bridge synthetic play(Landroid/view/View;II)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->play(Lcom/airbnb/lottie/LottieAnimationView;II)V

    return-void
.end method

.method public play(Lcom/airbnb/lottie/LottieAnimationView;II)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {p1, p2, p3}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->play(Lcom/airbnb/lottie/LottieAnimationView;II)V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->receiveCommand(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    const-string/jumbo v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewManagerDelegate;->kotlinCompat$receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic reset(Landroid/view/View;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->reset(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public reset(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->reset(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public bridge synthetic resume(Landroid/view/View;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->resume(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public resume(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->resume(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public bridge synthetic setAutoPlay(Landroid/view/View;Z)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setAutoPlay(Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public setAutoPlay(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoPlay"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setAutoPlay(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setCacheComposition(Landroid/view/View;Z)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setCacheComposition(Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public setCacheComposition(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cacheComposition"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setCacheComposition(Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public bridge synthetic setColorFilters(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setColorFilters(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setColorFilters(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "colorFilters"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setColorFilters(Lcom/facebook/react/bridge/ReadableArray;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setDummy(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setDummy(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setDummy(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setEnableMergePathsAndroidForKitKatAndAbove(Landroid/view/View;Z)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setEnableMergePathsAndroidForKitKatAndAbove(Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public setEnableMergePathsAndroidForKitKatAndAbove(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "enableMergePathsAndroidForKitKatAndAbove"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setEnableMergePaths(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setEnableSafeModeAndroid(Landroid/view/View;Z)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setEnableSafeModeAndroid(Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public setEnableSafeModeAndroid(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "enableSafeModeAndroid"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setEnableSafeMode(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setHardwareAccelerationAndroid(Landroid/view/View;Z)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setHardwareAccelerationAndroid(Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public setHardwareAccelerationAndroid(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hardwareAccelerationAndroid"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setHardwareAcceleration(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setImageAssetsFolder(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setImageAssetsFolder(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    return-void
.end method

.method public setImageAssetsFolder(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "imageAssetsFolder"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setImageAssetsFolder(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setLoop(Landroid/view/View;Z)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setLoop(Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public setLoop(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "loop"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setLoop(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setProgress(Landroid/view/View;F)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setProgress(Lcom/airbnb/lottie/LottieAnimationView;F)V

    return-void
.end method

.method public setProgress(Lcom/airbnb/lottie/LottieAnimationView;F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "progress"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setProgress(FLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setRenderMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setRenderMode(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    return-void
.end method

.method public setRenderMode(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "renderMode"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setRenderMode(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setResizeMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setResizeMode(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    return-void
.end method

.method public setResizeMode(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resizeMode"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setResizeMode(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setSourceDotLottieURI(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setSourceDotLottieURI(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    return-void
.end method

.method public setSourceDotLottieURI(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sourceDotLottieURI"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSourceDotLottieURI(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setSourceJson(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setSourceJson(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    return-void
.end method

.method public setSourceJson(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sourceJson"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSourceJson(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setSourceName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setSourceName(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    return-void
.end method

.method public setSourceName(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sourceName"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSourceName(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setSourceURL(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setSourceURL(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    return-void
.end method

.method public setSourceURL(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sourceURL"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSourceURL(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setSpeed(Landroid/view/View;D)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setSpeed(Lcom/airbnb/lottie/LottieAnimationView;D)V

    return-void
.end method

.method public setSpeed(Lcom/airbnb/lottie/LottieAnimationView;D)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "speed"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSpeed(DLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setTextFiltersAndroid(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setTextFiltersAndroid(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setTextFiltersAndroid(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textFiltersAndroid"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setTextFilters(Lcom/facebook/react/bridge/ReadableArray;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public bridge synthetic setTextFiltersIOS(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->setTextFiltersIOS(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setTextFiltersIOS(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    return-void
.end method
