.class public final Lcom/reactnativepagerview/PagerViewViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "PagerViewViewManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNCViewPagerManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCViewPager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativepagerview/PagerViewViewManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/reactnativepagerview/NestedScrollableHost;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNCViewPagerManagerInterface<",
        "Lcom/reactnativepagerview/NestedScrollableHost;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010%\n\u0002\u0010$\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 72\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u00017B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0008\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J \u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0002H\u0016J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0017H\u0016J\u0010\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0002H\u0016J\u0018\u0010 \u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010!\u001a\u00020\"H\u0016J\u001a\u0010#\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0006\u0010$\u001a\u00020\"H\u0017J\u001c\u0010%\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0008\u0010$\u001a\u0004\u0018\u00010\nH\u0017J\u001a\u0010&\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0006\u0010$\u001a\u00020\u0019H\u0017J\u001c\u0010\'\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0008\u0010$\u001a\u0004\u0018\u00010\nH\u0017J\u001a\u0010(\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0006\u0010$\u001a\u00020\u0019H\u0017J\u001a\u0010)\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0006\u0010$\u001a\u00020\u0019H\u0017J\u001c\u0010*\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0008\u0010$\u001a\u0004\u0018\u00010\nH\u0017J\u001a\u0010+\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0006\u0010$\u001a\u00020\"H\u0017J\u001c\u0010,\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0008\u0010$\u001a\u0004\u0018\u00010\nH\u0017J \u0010-\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u00020\"J\u001a\u00100\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0006\u0010.\u001a\u00020\u0019H\u0016J\u001a\u00101\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0006\u0010.\u001a\u00020\u0019H\u0016J\u001a\u00102\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0006\u00103\u001a\u00020\"H\u0016J \u00104\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0605H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/reactnativepagerview/PagerViewViewManager;",
        "Lcom/facebook/react/uimanager/ViewGroupManager;",
        "Lcom/reactnativepagerview/NestedScrollableHost;",
        "Lcom/facebook/react/viewmanagers/RNCViewPagerManagerInterface;",
        "<init>",
        "()V",
        "mDelegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "getDelegate",
        "getName",
        "",
        "receiveCommand",
        "",
        "root",
        "commandId",
        "args",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "createViewInstance",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "addView",
        "host",
        "child",
        "Landroid/view/View;",
        "index",
        "",
        "getChildCount",
        "parent",
        "getChildAt",
        "removeView",
        "view",
        "removeAllViews",
        "removeViewAt",
        "needsCustomLayoutForChildren",
        "",
        "setScrollEnabled",
        "value",
        "setLayoutDirection",
        "setInitialPage",
        "setOrientation",
        "setOffscreenPageLimit",
        "setPageMargin",
        "setOverScrollMode",
        "setOverdrag",
        "setKeyboardDismissMode",
        "goTo",
        "selectedPage",
        "scrollWithAnimation",
        "setPage",
        "setPageWithoutAnimation",
        "setScrollEnabledImperatively",
        "scrollEnabled",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "",
        "Companion",
        "react-native-pager-view_release"
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
.field public static final Companion:Lcom/reactnativepagerview/PagerViewViewManager$Companion;


# instance fields
.field private final mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/reactnativepagerview/NestedScrollableHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$haVtxNJn6u4zBLGictRk2BpGqEE(Landroidx/viewpager2/widget/ViewPager2;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativepagerview/NestedScrollableHost;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->createViewInstance$lambda$0(Landroidx/viewpager2/widget/ViewPager2;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativepagerview/NestedScrollableHost;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/reactnativepagerview/PagerViewViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/reactnativepagerview/PagerViewViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/reactnativepagerview/PagerViewViewManager;->Companion:Lcom/reactnativepagerview/PagerViewViewManager$Companion;

    .line 26
    sget-object v0, Lcom/reactnativepagerview/BuildConfig;->CODEGEN_MODULE_REGISTRATION:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/reactnativepagerview/BuildConfig;->CODEGEN_MODULE_REGISTRATION:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 32
    new-instance v0, Lcom/facebook/react/viewmanagers/RNCViewPagerManagerDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/uimanager/BaseViewManager;

    invoke-direct {v0, v1}, Lcom/facebook/react/viewmanagers/RNCViewPagerManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    iput-object v0, p0, Lcom/reactnativepagerview/PagerViewViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method

.method private static final createViewInstance$lambda$0(Landroidx/viewpager2/widget/ViewPager2;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativepagerview/NestedScrollableHost;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;

    invoke-direct {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativepagerview/NestedScrollableHost;)V

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 83
    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p2}, Lcom/reactnativepagerview/NestedScrollableHost;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Lcom/reactnativepagerview/event/PageSelectedEvent;

    invoke-virtual {p2}, Lcom/reactnativepagerview/NestedScrollableHost;->getId()I

    move-result p2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-direct {v0, p2, p0}, Lcom/reactnativepagerview/event/PageSelectedEvent;-><init>(II)V

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    .line 83
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativepagerview/PagerViewViewManager;->addView(Lcom/reactnativepagerview/NestedScrollableHost;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativepagerview/PagerViewViewManager;->addView(Lcom/reactnativepagerview/NestedScrollableHost;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/reactnativepagerview/NestedScrollableHost;Landroid/view/View;I)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->addView(Lcom/reactnativepagerview/NestedScrollableHost;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativepagerview/NestedScrollableHost;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativepagerview/NestedScrollableHost;
    .locals 4

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/reactnativepagerview/NestedScrollableHost;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/reactnativepagerview/NestedScrollableHost;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/reactnativepagerview/NestedScrollableHost;->setId(I)V

    .line 47
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/reactnativepagerview/NestedScrollableHost;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v2}, Lcom/reactnativepagerview/NestedScrollableHost;->setSaveEnabled(Z)V

    .line 49
    new-instance v3, Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v3, v1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v1, Lcom/reactnativepagerview/ViewPagerAdapter;

    invoke-direct {v1}, Lcom/reactnativepagerview/ViewPagerAdapter;-><init>()V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    invoke-virtual {v3, v2}, Landroidx/viewpager2/widget/ViewPager2;->setSaveEnabled(Z)V

    .line 54
    new-instance v1, Lcom/reactnativepagerview/PagerViewViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, p1, v0}, Lcom/reactnativepagerview/PagerViewViewManager$$ExternalSyntheticLambda0;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativepagerview/NestedScrollableHost;)V

    invoke-virtual {v3, v1}, Landroidx/viewpager2/widget/ViewPager2;->post(Ljava/lang/Runnable;)Z

    .line 87
    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/reactnativepagerview/NestedScrollableHost;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic getChildAt(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->getChildAt(Lcom/reactnativepagerview/NestedScrollableHost;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->getChildAt(Lcom/reactnativepagerview/NestedScrollableHost;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildAt(Lcom/reactnativepagerview/NestedScrollableHost;I)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getChildAt(Lcom/reactnativepagerview/NestedScrollableHost;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildCount(Landroid/view/View;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManager;->getChildCount(Lcom/reactnativepagerview/NestedScrollableHost;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getChildCount(Landroid/view/ViewGroup;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManager;->getChildCount(Lcom/reactnativepagerview/NestedScrollableHost;)I

    move-result p1

    return p1
.end method

.method public getChildCount(Lcom/reactnativepagerview/NestedScrollableHost;)I
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getChildCount(Lcom/reactnativepagerview/NestedScrollableHost;)I

    move-result p1

    return p1
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/reactnativepagerview/NestedScrollableHost;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/reactnativepagerview/PagerViewViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 8
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

    .line 205
    const-string v0, "onPageScroll"

    const-string v1, "registrationName"

    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 206
    const-string v0, "onPageScrollStateChanged"

    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 207
    const-string v0, "onPageSelected"

    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 204
    const-string v2, "topPageScroll"

    const-string v4, "topPageScrollStateChanged"

    const-string v6, "topPageSelected"

    invoke-static/range {v2 .. v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "RNCViewPager"

    return-object v0
.end method

.method public final goTo(Lcom/reactnativepagerview/NestedScrollableHost;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    .line 181
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    if-ltz p2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 185
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setCurrentItem(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    :cond_2
    return-void
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    .line 114
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->needsCustomLayoutForChildren()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativepagerview/PagerViewViewManager;->receiveCommand(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/reactnativepagerview/PagerViewViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewManagerDelegate;->kotlinCompat$receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic removeAllViews(Landroid/view/View;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManager;->removeAllViews(Lcom/reactnativepagerview/NestedScrollableHost;)V

    return-void
.end method

.method public removeAllViews(Lcom/reactnativepagerview/NestedScrollableHost;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->removeAllViews(Lcom/reactnativepagerview/NestedScrollableHost;)V

    return-void
.end method

.method public bridge synthetic removeView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->removeView(Lcom/reactnativepagerview/NestedScrollableHost;Landroid/view/View;)V

    return-void
.end method

.method public removeView(Lcom/reactnativepagerview/NestedScrollableHost;Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->removeView(Lcom/reactnativepagerview/NestedScrollableHost;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/View;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->removeViewAt(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->removeViewAt(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    return-void
.end method

.method public removeViewAt(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->removeViewAt(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    return-void
.end method

.method public bridge synthetic setInitialPage(Landroid/view/View;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setInitialPage(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    return-void
.end method

.method public setInitialPage(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x0
        name = "initialPage"
    .end annotation

    if-eqz p1, :cond_0

    .line 134
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setInitialPage(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setKeyboardDismissMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setKeyboardDismissMode(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V

    return-void
.end method

.method public setKeyboardDismissMode(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "keyboardDismissMode"
    .end annotation

    return-void
.end method

.method public bridge synthetic setLayoutDirection(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setLayoutDirection(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V

    return-void
.end method

.method public setLayoutDirection(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "layoutDirection"
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 127
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setLayoutDirection(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOffscreenPageLimit(Landroid/view/View;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setOffscreenPageLimit(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    return-void
.end method

.method public setOffscreenPageLimit(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = -0x1
        name = "offscreenPageLimit"
    .end annotation

    if-eqz p1, :cond_0

    .line 148
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setOffscreenPageLimit(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOrientation(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setOrientation(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V

    return-void
.end method

.method public setOrientation(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "orientation"
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 141
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setOrientation(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOverScrollMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setOverScrollMode(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V

    return-void
.end method

.method public setOverScrollMode(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overScrollMode"
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 162
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setOverScrollMode(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOverdrag(Landroid/view/View;Z)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setOverdrag(Lcom/reactnativepagerview/NestedScrollableHost;Z)V

    return-void
.end method

.method public setOverdrag(Lcom/reactnativepagerview/NestedScrollableHost;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overdrag"
    .end annotation

    return-void
.end method

.method public bridge synthetic setPage(Landroid/view/View;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setPage(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    return-void
.end method

.method public setPage(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 1

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p0, p1, p2, v0}, Lcom/reactnativepagerview/PagerViewViewManager;->goTo(Lcom/reactnativepagerview/NestedScrollableHost;IZ)V

    return-void
.end method

.method public bridge synthetic setPageMargin(Landroid/view/View;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setPageMargin(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    return-void
.end method

.method public setPageMargin(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x0
        name = "pageMargin"
    .end annotation

    if-eqz p1, :cond_0

    .line 155
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setPageMargin(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setPageWithoutAnimation(Landroid/view/View;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setPageWithoutAnimation(Lcom/reactnativepagerview/NestedScrollableHost;I)V

    return-void
.end method

.method public setPageWithoutAnimation(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, p2, v0}, Lcom/reactnativepagerview/PagerViewViewManager;->goTo(Lcom/reactnativepagerview/NestedScrollableHost;IZ)V

    return-void
.end method

.method public bridge synthetic setScrollEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setScrollEnabled(Lcom/reactnativepagerview/NestedScrollableHost;Z)V

    return-void
.end method

.method public setScrollEnabled(Lcom/reactnativepagerview/NestedScrollableHost;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "scrollEnabled"
    .end annotation

    if-eqz p1, :cond_0

    .line 120
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setScrollEnabled(Lcom/reactnativepagerview/NestedScrollableHost;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setScrollEnabledImperatively(Landroid/view/View;Z)V
    .locals 0

    .line 22
    check-cast p1, Lcom/reactnativepagerview/NestedScrollableHost;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManager;->setScrollEnabledImperatively(Lcom/reactnativepagerview/NestedScrollableHost;Z)V

    return-void
.end method

.method public setScrollEnabledImperatively(Lcom/reactnativepagerview/NestedScrollableHost;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 199
    sget-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setScrollEnabled(Lcom/reactnativepagerview/NestedScrollableHost;Z)V

    :cond_0
    return-void
.end method
