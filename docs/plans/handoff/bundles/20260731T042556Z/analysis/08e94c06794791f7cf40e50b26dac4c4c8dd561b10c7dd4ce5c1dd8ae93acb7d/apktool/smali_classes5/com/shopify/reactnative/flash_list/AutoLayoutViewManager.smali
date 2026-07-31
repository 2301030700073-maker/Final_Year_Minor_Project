.class public final Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "AutoLayoutViewManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AutoLayoutView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/shopify/reactnative/flash_list/AutoLayoutView;",
        ">;",
        "Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface<",
        "Lcom/shopify/reactnative/flash_list/AutoLayoutView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoLayoutViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoLayoutViewManager.kt\ncom/shopify/reactnative/flash_list/AutoLayoutViewManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0014J \u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00100\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0017J\u0018\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0015H\u0017J\u0018\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001aH\u0017J\u0018\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001aH\u0017J\u0018\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001aH\u0017J\u0018\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u0015H\u0017J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001aH\u0002R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;",
        "Lcom/facebook/react/uimanager/ViewGroupManager;",
        "Lcom/shopify/reactnative/flash_list/AutoLayoutView;",
        "Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerInterface;",
        "<init>",
        "()V",
        "mDelegate",
        "Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;",
        "getName",
        "",
        "getDelegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "setHorizontal",
        "",
        "view",
        "isHorizontal",
        "",
        "setDisableAutoLayout",
        "disableAutoLayout",
        "setScrollOffset",
        "scrollOffset",
        "",
        "setWindowSize",
        "windowSize",
        "setRenderAheadOffset",
        "renderOffset",
        "setEnableInstrumentation",
        "enableInstrumentation",
        "convertToPixelLayout",
        "",
        "dp",
        "density",
        "Companion",
        "shopify_flash-list_release"
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
.field public static final Companion:Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "AutoLayoutView"


# instance fields
.field private final mDelegate:Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate<",
            "Lcom/shopify/reactnative/flash_list/AutoLayoutView;",
            "Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->Companion:Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 17
    new-instance v0, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/uimanager/BaseViewManager;

    invoke-direct {v0, v1}, Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->mDelegate:Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;

    return-void
.end method

.method private final convertToPixelLayout(DD)I
    .locals 0

    mul-double/2addr p1, p3

    .line 68
    invoke-static {p1, p2}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/shopify/reactnative/flash_list/AutoLayoutView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/shopify/reactnative/flash_list/AutoLayoutView;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->setPixelDensity(D)V

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/shopify/reactnative/flash_list/AutoLayoutView;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->mDelegate:Lcom/facebook/react/viewmanagers/AutoLayoutViewManagerDelegate;

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 34
    new-array v1, v0, [Lkotlin/Pair;

    new-array v0, v0, [Lkotlin/Pair;

    const-string v2, "registrationName"

    const-string v3, "onBlankAreaEvent"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v4

    .line 33
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "AutoLayoutView"

    return-object v0
.end method

.method public bridge synthetic setDisableAutoLayout(Landroid/view/View;Z)V
    .locals 0

    .line 14
    check-cast p1, Lcom/shopify/reactnative/flash_list/AutoLayoutView;

    invoke-virtual {p0, p1, p2}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->setDisableAutoLayout(Lcom/shopify/reactnative/flash_list/AutoLayoutView;Z)V

    return-void
.end method

.method public setDisableAutoLayout(Lcom/shopify/reactnative/flash_list/AutoLayoutView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "disableAutoLayout"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1, p2}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->setDisableAutoLayout(Z)V

    return-void
.end method

.method public bridge synthetic setEnableInstrumentation(Landroid/view/View;Z)V
    .locals 0

    .line 14
    check-cast p1, Lcom/shopify/reactnative/flash_list/AutoLayoutView;

    invoke-virtual {p0, p1, p2}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->setEnableInstrumentation(Lcom/shopify/reactnative/flash_list/AutoLayoutView;Z)V

    return-void
.end method

.method public setEnableInstrumentation(Lcom/shopify/reactnative/flash_list/AutoLayoutView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "enableInstrumentation"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, p2}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->setEnableInstrumentation(Z)V

    return-void
.end method

.method public bridge synthetic setHorizontal(Landroid/view/View;Z)V
    .locals 0

    .line 14
    check-cast p1, Lcom/shopify/reactnative/flash_list/AutoLayoutView;

    invoke-virtual {p0, p1, p2}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->setHorizontal(Lcom/shopify/reactnative/flash_list/AutoLayoutView;Z)V

    return-void
.end method

.method public setHorizontal(Lcom/shopify/reactnative/flash_list/AutoLayoutView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "horizontal"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getAlShadow()Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->setHorizontal(Z)V

    return-void
.end method

.method public bridge synthetic setRenderAheadOffset(Landroid/view/View;D)V
    .locals 0

    .line 14
    check-cast p1, Lcom/shopify/reactnative/flash_list/AutoLayoutView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->setRenderAheadOffset(Lcom/shopify/reactnative/flash_list/AutoLayoutView;D)V

    return-void
.end method

.method public setRenderAheadOffset(Lcom/shopify/reactnative/flash_list/AutoLayoutView;D)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "renderAheadOffset"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getAlShadow()Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getPixelDensity()D

    move-result-wide v1

    invoke-direct {p0, p2, p3, v1, v2}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->convertToPixelLayout(DD)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->setRenderOffset(I)V

    return-void
.end method

.method public bridge synthetic setScrollOffset(Landroid/view/View;D)V
    .locals 0

    .line 14
    check-cast p1, Lcom/shopify/reactnative/flash_list/AutoLayoutView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->setScrollOffset(Lcom/shopify/reactnative/flash_list/AutoLayoutView;D)V

    return-void
.end method

.method public setScrollOffset(Lcom/shopify/reactnative/flash_list/AutoLayoutView;D)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scrollOffset"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getAlShadow()Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getPixelDensity()D

    move-result-wide v1

    invoke-direct {p0, p2, p3, v1, v2}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->convertToPixelLayout(DD)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->setScrollOffset(I)V

    return-void
.end method

.method public bridge synthetic setWindowSize(Landroid/view/View;D)V
    .locals 0

    .line 14
    check-cast p1, Lcom/shopify/reactnative/flash_list/AutoLayoutView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->setWindowSize(Lcom/shopify/reactnative/flash_list/AutoLayoutView;D)V

    return-void
.end method

.method public setWindowSize(Lcom/shopify/reactnative/flash_list/AutoLayoutView;D)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "windowSize"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getAlShadow()Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getPixelDensity()D

    move-result-wide v1

    invoke-direct {p0, p2, p3, v1, v2}, Lcom/shopify/reactnative/flash_list/AutoLayoutViewManager;->convertToPixelLayout(DD)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->setWindowSize(I)V

    return-void
.end method
