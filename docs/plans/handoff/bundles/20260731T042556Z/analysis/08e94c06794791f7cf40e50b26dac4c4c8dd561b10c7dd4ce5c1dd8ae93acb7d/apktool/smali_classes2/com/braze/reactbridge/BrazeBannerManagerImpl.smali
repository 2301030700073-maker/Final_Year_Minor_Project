.class public final Lcom/braze/reactbridge/BrazeBannerManagerImpl;
.super Ljava/lang/Object;
.source "BrazeBannerManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/reactbridge/BrazeBannerManagerImpl$BannerDimensionsEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrazeBannerManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrazeBannerManagerImpl.kt\ncom/braze/reactbridge/BrazeBannerManagerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0018\u0010\u0010\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/braze/reactbridge/BrazeBannerManagerImpl;",
        "",
        "<init>",
        "()V",
        "NAME",
        "",
        "EVENT_HEIGHT_CHANGED",
        "FIELD_HEIGHT",
        "createViewInstance",
        "Lcom/braze/reactbridge/BannerContainer;",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "setPlacementID",
        "",
        "view",
        "placementID",
        "getExportedCustomBubblingEventTypeConstants",
        "",
        "BannerDimensionsEvent",
        "braze_react-native-sdk_release"
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
.field public static final EVENT_HEIGHT_CHANGED:Ljava/lang/String; = "onHeightChanged"

.field public static final FIELD_HEIGHT:Ljava/lang/String; = "height"

.field public static final INSTANCE:Lcom/braze/reactbridge/BrazeBannerManagerImpl;

.field public static final NAME:Ljava/lang/String; = "BrazeBannerView"


# direct methods
.method public static synthetic $r8$lambda$e19dYLpK6Gyd0Dv3_7CXJybi-Y8(Lcom/braze/reactbridge/BannerContainer;Lkotlin/jvm/internal/Ref$DoubleRef;ILcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->createViewInstance$lambda$8$lambda$7(Lcom/braze/reactbridge/BannerContainer;Lkotlin/jvm/internal/Ref$DoubleRef;ILcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qvzqsIYiyIZ6hFszaaJpZIs5284(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->createViewInstance$lambda$8$lambda$7$lambda$4$lambda$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rGaMRfULBTBY_9qImecOaKu13O8(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/braze/reactbridge/BannerContainer;D)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->createViewInstance$lambda$8(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/braze/reactbridge/BannerContainer;D)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/braze/reactbridge/BrazeBannerManagerImpl;

    invoke-direct {v0}, Lcom/braze/reactbridge/BrazeBannerManagerImpl;-><init>()V

    sput-object v0, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->INSTANCE:Lcom/braze/reactbridge/BrazeBannerManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createViewInstance$lambda$8(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/braze/reactbridge/BannerContainer;D)Lkotlin/Unit;
    .locals 3

    .line 29
    const-string/jumbo v0, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 30
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v1

    .line 32
    new-instance v2, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    iput-wide p2, v2, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 36
    invoke-virtual {p1}, Lcom/braze/reactbridge/BannerContainer;->getBannerView()Lcom/braze/ui/banners/BannerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/braze/ui/banners/BannerView;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 37
    sget-object p3, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p3, p0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/braze/Braze;->getBanner(Ljava/lang/String;)Lcom/braze/models/Banner;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/braze/models/Banner;->isControl()Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 40
    iput-wide p2, v2, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const/4 p0, 0x0

    .line 41
    invoke-virtual {p1, p0}, Lcom/braze/reactbridge/BannerContainer;->setAlpha(F)V

    .line 45
    :cond_1
    new-instance p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/braze/reactbridge/BannerContainer;Lkotlin/jvm/internal/Ref$DoubleRef;ILcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {p1, p0}, Lcom/braze/reactbridge/BannerContainer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final createViewInstance$lambda$8$lambda$7(Lcom/braze/reactbridge/BannerContainer;Lkotlin/jvm/internal/Ref$DoubleRef;ILcom/facebook/react/bridge/ReactContext;)V
    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/braze/reactbridge/BannerContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 48
    iget-wide v1, p1, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    double-to-int v1, v1

    .line 49
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_1

    .line 50
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    invoke-virtual {p0, v0}, Lcom/braze/reactbridge/BannerContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0}, Lcom/braze/reactbridge/BannerContainer;->requestLayout()V

    .line 53
    invoke-virtual {p0}, Lcom/braze/reactbridge/BannerContainer;->invalidate()V

    .line 56
    invoke-virtual {p0}, Lcom/braze/reactbridge/BannerContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    new-instance v1, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 65
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 66
    const-string v1, "height"

    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 68
    new-instance p1, Lcom/braze/reactbridge/BrazeBannerManagerImpl$BannerDimensionsEvent;

    invoke-virtual {p0}, Lcom/braze/reactbridge/BannerContainer;->getId()I

    move-result v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v0}, Lcom/braze/reactbridge/BrazeBannerManagerImpl$BannerDimensionsEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    .line 69
    invoke-virtual {p0}, Lcom/braze/reactbridge/BannerContainer;->getId()I

    move-result p0

    invoke-static {p3, p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 70
    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {p0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_2
    return-void
.end method

.method private static final createViewInstance$lambda$8$lambda$7$lambda$4$lambda$3(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/braze/reactbridge/BannerContainer;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/braze/reactbridge/BannerContainer;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/braze/reactbridge/BannerContainer;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0}, Lcom/braze/reactbridge/BannerContainer;->getBannerView()Lcom/braze/ui/banners/BannerView;

    move-result-object v1

    new-instance v2, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v0}, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/braze/reactbridge/BannerContainer;)V

    invoke-virtual {v1, v2}, Lcom/braze/ui/banners/BannerView;->setHeightCallback(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 87
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "bubbled"

    const-string/jumbo v2, "onHeightChanged"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 88
    const-string v1, "captured"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 86
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "phasedRegistrationNames"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final setPlacementID(Lcom/braze/reactbridge/BannerContainer;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    invoke-virtual {p1, v0}, Lcom/braze/reactbridge/BannerContainer;->setAlpha(F)V

    .line 80
    invoke-virtual {p1}, Lcom/braze/reactbridge/BannerContainer;->getBannerView()Lcom/braze/ui/banners/BannerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/braze/ui/banners/BannerView;->setPlacementId(Ljava/lang/String;)V

    return-void
.end method
