.class public Lcom/facebook/react/views/view/ReactViewManager;
.super Lcom/facebook/react/views/view/ReactClippingViewManager;
.source "ReactViewManager.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/view/ReactViewManager$Companion;,
        Lcom/facebook/react/views/view/ReactViewManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/view/ReactClippingViewManager<",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactViewManager.kt\ncom/facebook/react/views/view/ReactViewManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,376:1\n1#2:377\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010%\n\u0002\u0008\u0008\u0008\u0017\u0018\u0000 N2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001NB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0014J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0017J\u0018\u0010\r\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000cH\u0017J\u001a\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u0018\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u0018\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J \u0010\u0019\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001cH\u0017J \u0010\u0019\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0017J\u001a\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0017J\u0018\u0010\"\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u001cH\u0017J\u0014\u0010$\u001a\u00020\u0014*\u00020%2\u0006\u0010&\u001a\u00020!H\u0002J\u001a\u0010\'\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010(\u001a\u0004\u0018\u00010!H\u0017J\u001a\u0010)\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010*\u001a\u0004\u0018\u00010%H\u0017J\u001a\u0010+\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010,\u001a\u0004\u0018\u00010%H\u0017J\u0018\u0010-\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u000cH\u0017J \u0010/\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00142\u0006\u00100\u001a\u00020\u001eH\u0017J\'\u00101\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00142\u0008\u00102\u001a\u0004\u0018\u00010\u0014H\u0017\u00a2\u0006\u0002\u00103J\u0018\u00104\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u000cH\u0017J\u0018\u00106\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u00107\u001a\u00020\u000cH\u0017J\u0018\u00108\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u00109\u001a\u00020\u000cH\u0017J\u001a\u0010:\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010;\u001a\u0004\u0018\u00010!H\u0017J\u0018\u0010<\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010=\u001a\u00020!H\u0017J\u0018\u0010>\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u001eH\u0016J$\u0010@\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010A\u001a\u0004\u0018\u00010\u00112\u0008\u0010B\u001a\u0004\u0018\u00010\u0011H\u0014J\u0008\u0010C\u001a\u00020!H\u0016J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010E\u001a\u00020\u0007H\u0016J\u0014\u0010F\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00140GH\u0016J\"\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00022\u0006\u0010J\u001a\u00020\u00142\u0008\u0010K\u001a\u0004\u0018\u00010\u0011H\u0017J\"\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00022\u0006\u0010J\u001a\u00020!2\u0008\u0010K\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010L\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00022\u0008\u0010K\u001a\u0004\u0018\u00010\u0011H\u0002J\u001a\u0010M\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00022\u0008\u0010K\u001a\u0004\u0018\u00010\u0011H\u0002\u00a8\u0006O"
    }
    d2 = {
        "Lcom/facebook/react/views/view/ReactViewManager;",
        "Lcom/facebook/react/views/view/ReactClippingViewManager;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "<init>",
        "()V",
        "prepareToRecycleView",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "view",
        "setAccessible",
        "",
        "accessible",
        "",
        "setTVPreferredFocus",
        "hasTVPreferredFocus",
        "setBackgroundImage",
        "backgroundImage",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "nextFocusDown",
        "viewId",
        "",
        "nextFocusForward",
        "nextFocusLeft",
        "nextFocusRight",
        "nextFocusUp",
        "setBorderRadius",
        "index",
        "rawBorderRadius",
        "Lcom/facebook/react/bridge/Dynamic;",
        "borderRadius",
        "",
        "setBorderStyle",
        "borderStyle",
        "",
        "setHitSlop",
        "hitSlop",
        "px",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "key",
        "setPointerEvents",
        "pointerEventsStr",
        "setNativeBackground",
        "background",
        "setNativeForeground",
        "foreground",
        "setNeedsOffscreenAlphaCompositing",
        "needsOffscreenAlphaCompositing",
        "setBorderWidth",
        "width",
        "setBorderColor",
        "color",
        "(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V",
        "setCollapsable",
        "collapsable",
        "setCollapsableChildren",
        "collapsableChildren",
        "setFocusable",
        "focusable",
        "setOverflow",
        "overflow",
        "setBackfaceVisibility",
        "backfaceVisibility",
        "setOpacity",
        "opacity",
        "setTransformProperty",
        "transforms",
        "transformOrigin",
        "getName",
        "createViewInstance",
        "context",
        "getCommandsMap",
        "",
        "receiveCommand",
        "root",
        "commandId",
        "args",
        "handleSetPressed",
        "handleHotspotUpdate",
        "Companion",
        "ReactAndroid_release"
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
.field private static final CMD_HOTSPOT_UPDATE:I = 0x1

.field private static final CMD_SET_PRESSED:I = 0x2

.field public static final Companion:Lcom/facebook/react/views/view/ReactViewManager$Companion;

.field private static final HOTSPOT_UPDATE_KEY:Ljava/lang/String; = "hotspotUpdate"

.field public static final REACT_CLASS:Ljava/lang/String; = "RCTView"

.field private static final SPACING_TYPES:[I


# direct methods
.method public static synthetic $r8$lambda$fAWqHivuS-EZUpZyOaEyFsULack(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/react/views/view/ReactViewManager;->setFocusable$lambda$2(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/view/ReactViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/view/ReactViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewManager;->Companion:Lcom/facebook/react/views/view/ReactViewManager$Companion;

    const/16 v0, 0xa

    .line 59
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 49
    sput-object v0, Lcom/facebook/react/views/view/ReactViewManager;->SPACING_TYPES:[I

    return-void

    :array_0
    .array-data 4
        0x8
        0x0
        0x2
        0x1
        0x3
        0x4
        0x5
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactClippingViewManager;-><init>()V

    .line 67
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableViewRecyclingForView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewManager;->setupViewRecycling()V

    :cond_0
    return-void
.end method

.method private final handleHotspotUpdate(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 366
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 371
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(D)F

    move-result v0

    .line 372
    sget-object v1, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(D)F

    move-result p2

    .line 373
    invoke-virtual {p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->drawableHotspotChanged(FF)V

    return-void

    .line 367
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    .line 368
    const-string p2, "Illegal number of arguments for \'updateHotspot\' command"

    .line 367
    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final handleSetPressed(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 358
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 362
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setPressed(Z)V

    return-void

    .line 359
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    .line 360
    const-string p2, "Illegal number of arguments for \'setPressed\' command"

    .line 359
    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final px(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)I
    .locals 1

    .line 209
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(D)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final setFocusable$lambda$2(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;)V
    .locals 2

    .line 291
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    new-instance v0, Lcom/facebook/react/views/view/ViewGroupClickEvent;

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/facebook/react/views/view/ViewGroupClickEvent;-><init>(II)V

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    .line 292
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/facebook/react/views/view/ReactViewGroup;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 336
    new-array v1, v0, [Lkotlin/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hotspotUpdate"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string/jumbo v3, "setPressed"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 330
    const-string v0, "RCTView"

    return-object v0
.end method

.method public nextFocusDown(Lcom/facebook/react/views/view/ReactViewGroup;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = -0x1
        name = "nextFocusDown"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setNextFocusDownId(I)V

    return-void
.end method

.method public nextFocusForward(Lcom/facebook/react/views/view/ReactViewGroup;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = -0x1
        name = "nextFocusForward"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setNextFocusForwardId(I)V

    return-void
.end method

.method public nextFocusLeft(Lcom/facebook/react/views/view/ReactViewGroup;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = -0x1
        name = "nextFocusLeft"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setNextFocusLeftId(I)V

    return-void
.end method

.method public nextFocusRight(Lcom/facebook/react/views/view/ReactViewGroup;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = -0x1
        name = "nextFocusRight"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setNextFocusRightId(I)V

    return-void
.end method

.method public nextFocusUp(Lcom/facebook/react/views/view/ReactViewGroup;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = -0x1
        name = "nextFocusUp"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setNextFocusUpId(I)V

    return-void
.end method

.method public bridge synthetic prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 42
    check-cast p2, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/view/ReactViewGroup;)Lcom/facebook/react/views/view/ReactViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/view/ReactViewGroup;)Lcom/facebook/react/views/view/ReactViewGroup;
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-super {p0, p1, v0}, Lcom/facebook/react/views/view/ReactClippingViewManager;->prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->recycleView()V

    :cond_0
    return-object p2
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewManager;->receiveCommand(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewManager;->receiveCommand(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use receiveCommand(View, String, ReadableArray)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "receiveCommand(root, commandIdString, args)"
            imports = {}
        .end subannotation
    .end annotation

    const-string/jumbo v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/facebook/react/views/view/ReactViewManager;->handleSetPressed(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/facebook/react/views/view/ReactViewManager;->handleHotspotUpdate(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V

    :goto_0
    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    const-string/jumbo v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    const-string v0, "hotspotUpdate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/facebook/react/views/view/ReactViewManager;->handleHotspotUpdate(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 352
    :cond_0
    const-string/jumbo v0, "setPressed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/facebook/react/views/view/ReactViewManager;->handleSetPressed(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAccessible(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessible"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setFocusable(Z)V

    return-void
.end method

.method public setBackfaceVisibility(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "backfaceVisibility"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backfaceVisibility"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibility(Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundImage(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "BackgroundImage"
        name = "experimental_backgroundImage"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_1

    .line 99
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 102
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    .line 103
    new-instance v5, Lcom/facebook/react/uimanager/style/BackgroundImageLayer;

    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "getContext(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4, v6}, Lcom/facebook/react/uimanager/style/BackgroundImageLayer;-><init>(Lcom/facebook/react/bridge/ReadableMap;Landroid/content/Context;)V

    .line 104
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_0
    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundImage(Landroid/view/View;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 108
    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundImage(Landroid/view/View;Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        customType = "Color"
        names = {
            "borderColor",
            "borderLeftColor",
            "borderRightColor",
            "borderTopColor",
            "borderBottomColor",
            "borderStartColor",
            "borderEndColor",
            "borderBlockColor",
            "borderBlockEndColor",
            "borderBlockStartColor"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/facebook/react/uimanager/style/LogicalEdge;->Companion:Lcom/facebook/react/uimanager/style/LogicalEdge$Companion;

    sget-object v1, Lcom/facebook/react/views/view/ReactViewManager;->SPACING_TYPES:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/style/LogicalEdge$Companion;->fromSpacingType(I)Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object p2

    .line 269
    invoke-static {p1, p2, p3}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Don\'t use setBorderRadius(view, int, Float) as it was deprecated in React Native 0.75.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setBorderRadius(view, index, DynamicFromObject(borderRadius)"
            imports = {}
        .end subannotation
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/facebook/react/bridge/Dynamic;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "borderRadius",
            "borderTopLeftRadius",
            "borderTopRightRadius",
            "borderBottomRightRadius",
            "borderBottomLeftRadius",
            "borderTopStartRadius",
            "borderTopEndRadius",
            "borderBottomStartRadius",
            "borderBottomEndRadius",
            "borderEndEndRadius",
            "borderEndStartRadius",
            "borderStartEndRadius",
            "borderStartStartRadius"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawBorderRadius"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/facebook/react/uimanager/LengthPercentage;->Companion:Lcom/facebook/react/uimanager/LengthPercentage$Companion;

    invoke-virtual {v0, p3}, Lcom/facebook/react/uimanager/LengthPercentage$Companion;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)Lcom/facebook/react/uimanager/LengthPercentage;

    move-result-object p3

    .line 160
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 162
    invoke-virtual {p3}, Lcom/facebook/react/uimanager/LengthPercentage;->getType()Lcom/facebook/react/uimanager/LengthPercentageType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/uimanager/LengthPercentageType;->PERCENT:Lcom/facebook/react/uimanager/LengthPercentageType;

    if-ne v0, v1, :cond_0

    const/4 p3, 0x0

    .line 166
    :cond_0
    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-static {p1, p2, p3}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    return-void
.end method

.method public setBorderStyle(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "borderStyle"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 178
    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/style/BorderStyle;->Companion:Lcom/facebook/react/uimanager/style/BorderStyle$Companion;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/style/BorderStyle$Companion;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object p2

    .line 179
    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V

    return-void
.end method

.method public setBorderWidth(Lcom/facebook/react/views/view/ReactViewGroup;IF)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderWidth",
            "borderLeftWidth",
            "borderRightWidth",
            "borderTopWidth",
            "borderBottomWidth",
            "borderStartWidth",
            "borderEndWidth"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    check-cast p1, Landroid/view/View;

    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    return-void
.end method

.method public setCollapsable(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "collapsable"
    .end annotation

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setCollapsableChildren(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "collapsableChildren"
    .end annotation

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setFocusable(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "focusable"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 289
    new-instance p2, Lcom/facebook/react/views/view/ReactViewManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/facebook/react/views/view/ReactViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/views/view/ReactViewGroup;)V

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    .line 298
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setFocusable(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 300
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 301
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method public setHitSlop(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hitSlop"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitSlop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/views/view/ReactViewManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 203
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid type for \'hitSlop\' value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ReactNative"

    invoke-static {v0, p2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/view/ReactViewGroup;->setHitSlopRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/view/ReactViewGroup;->setHitSlopRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 197
    :cond_1
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(D)F

    move-result p2

    float-to-int p2, p2

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setHitSlopRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 186
    :cond_2
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    .line 189
    const-string v1, "left"

    invoke-direct {p0, p2, v1}, Lcom/facebook/react/views/view/ReactViewManager;->px(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)I

    move-result v1

    .line 190
    const-string/jumbo v2, "top"

    invoke-direct {p0, p2, v2}, Lcom/facebook/react/views/view/ReactViewManager;->px(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)I

    move-result v2

    .line 191
    const-string/jumbo v3, "right"

    invoke-direct {p0, p2, v3}, Lcom/facebook/react/views/view/ReactViewManager;->px(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)I

    move-result v3

    .line 192
    const-string v4, "bottom"

    invoke-direct {p0, p2, v4}, Lcom/facebook/react/views/view/ReactViewManager;->px(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)I

    move-result p2

    .line 188
    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 187
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setHitSlopRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public setNativeBackground(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nativeBackgroundAndroid"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/facebook/react/views/view/ReactDrawableHelper;->createDrawableFromJSDescription(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 220
    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setFeedbackUnderlay(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNativeForeground(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nativeForegroundAndroid"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/facebook/react/views/view/ReactDrawableHelper;->createDrawableFromJSDescription(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 225
    :goto_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNeedsOffscreenAlphaCompositing(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "needsOffscreenAlphaCompositing"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setNeedsOffscreenAlphaCompositing(Z)V

    return-void
.end method

.method public bridge synthetic setOpacity(Landroid/view/View;F)V
    .locals 0

    .line 42
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setOpacity(Lcom/facebook/react/views/view/ReactViewGroup;F)V

    return-void
.end method

.method public setOpacity(Lcom/facebook/react/views/view/ReactViewGroup;F)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setOpacityIfPossible(F)V

    return-void
.end method

.method public setOverflow(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overflow"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setOverflow(Ljava/lang/String;)V

    return-void
.end method

.method public setPointerEvents(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pointerEvents"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->Companion:Lcom/facebook/react/uimanager/PointerEvents$Companion;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/PointerEvents$Companion;->parsePointerEvents(Ljava/lang/String;)Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    return-void
.end method

.method public setTVPreferredFocus(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hasTVPreferredFocus"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 90
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setFocusable(Z)V

    .line 91
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setFocusableInTouchMode(Z)V

    .line 92
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewManager;->setTransformProperty(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method protected setTransformProperty(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0, p2, p3}, Lcom/facebook/react/views/view/ReactClippingViewManager;->setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 327
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibilityDependantOpacity()V

    return-void
.end method
