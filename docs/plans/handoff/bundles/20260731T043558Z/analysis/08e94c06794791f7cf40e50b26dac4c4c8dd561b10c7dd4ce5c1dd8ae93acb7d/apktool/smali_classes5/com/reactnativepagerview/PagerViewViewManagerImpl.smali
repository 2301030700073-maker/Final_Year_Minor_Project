.class public final Lcom/reactnativepagerview/PagerViewViewManagerImpl;
.super Ljava/lang/Object;
.source "PagerViewViewManagerImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\rJ\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\tJ\u0016\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\rJ\u0016\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0013J\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\tJ\u0016\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010\u001b\u001a\u00020\u000fJ\u0016\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u000fJ\u0016\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u0005J\u0016\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\rJ\u0016\u0010 \u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u0005J\u0016\u0010!\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\rJ\u0016\u0010\"\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u0005J\u0016\u0010#\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010$\u001a\u00020\rJ\u0010\u0010%\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/reactnativepagerview/PagerViewViewManagerImpl;",
        "",
        "<init>",
        "()V",
        "NAME",
        "",
        "getViewPager",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "view",
        "Lcom/reactnativepagerview/NestedScrollableHost;",
        "setCurrentItem",
        "",
        "selectedTab",
        "",
        "scrollSmooth",
        "",
        "addView",
        "host",
        "child",
        "Landroid/view/View;",
        "index",
        "getChildCount",
        "parent",
        "getChildAt",
        "removeView",
        "removeAllViews",
        "removeViewAt",
        "needsCustomLayoutForChildren",
        "setScrollEnabled",
        "value",
        "setLayoutDirection",
        "setInitialPage",
        "setOrientation",
        "setOffscreenPageLimit",
        "setOverScrollMode",
        "setPageMargin",
        "margin",
        "refreshViewChildrenLayout",
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
.field public static final INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

.field public static final NAME:Ljava/lang/String; = "RNCViewPager"


# direct methods
.method public static synthetic $r8$lambda$GQgd023cnWEAb4sL7PYFpO-lrvQ(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->refreshViewChildrenLayout$lambda$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H1HU5IwsAreQXwZhh-lxpRWLBp4(Lcom/reactnativepagerview/NestedScrollableHost;)V
    .locals 0

    invoke-static {p0}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setInitialPage$lambda$0(Lcom/reactnativepagerview/NestedScrollableHost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mVI5xMWuo05oyyOIcBruwFfIUFE(ILandroidx/viewpager2/widget/ViewPager2;Landroid/view/View;F)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setPageMargin$lambda$1(ILandroidx/viewpager2/widget/ViewPager2;Landroid/view/View;F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    invoke-direct {v0}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;-><init>()V

    sput-object v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->INSTANCE:Lcom/reactnativepagerview/PagerViewViewManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final refreshViewChildrenLayout(Landroid/view/View;)V
    .locals 1

    .line 158
    new-instance v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final refreshViewChildrenLayout$lambda$2(Landroid/view/View;)V
    .locals 4

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 159
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private static final setInitialPage$lambda$0(Lcom/reactnativepagerview/NestedScrollableHost;)V
    .locals 1

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Lcom/reactnativepagerview/NestedScrollableHost;->setDidSetInitialIndex(Z)V

    return-void
.end method

.method private static final setPageMargin$lambda$1(ILandroidx/viewpager2/widget/ViewPager2;Landroid/view/View;F)V
    .locals 1

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p0

    mul-float/2addr p0, p3

    .line 148
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result p3

    if-nez p3, :cond_1

    .line 149
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    neg-float p0, p0

    .line 150
    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addView(Lcom/reactnativepagerview/NestedScrollableHost;Landroid/view/View;I)V
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/reactnativepagerview/ViewPagerAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p3}, Lcom/reactnativepagerview/ViewPagerAdapter;->addChild(Landroid/view/View;I)V

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    if-ne p2, p3, :cond_2

    .line 37
    move-object p2, v0

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->refreshViewChildrenLayout(Landroid/view/View;)V

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/reactnativepagerview/NestedScrollableHost;->getDidSetInitialIndex()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/reactnativepagerview/NestedScrollableHost;->getInitialIndex()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p3, :cond_4

    const/4 p2, 0x1

    .line 41
    invoke-virtual {p1, p2}, Lcom/reactnativepagerview/NestedScrollableHost;->setDidSetInitialIndex(Z)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, v0, p3, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->setCurrentItem(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final getChildAt(Lcom/reactnativepagerview/NestedScrollableHost;I)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/reactnativepagerview/ViewPagerAdapter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getChildCount(Lcom/reactnativepagerview/NestedScrollableHost;)I
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/reactnativepagerview/NestedScrollableHost;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p1, v0}, Lcom/reactnativepagerview/NestedScrollableHost;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.viewpager2.widget.ViewPager2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/ClassNotFoundException;

    const-string v0, "Could not retrieve ViewPager2 instance"

    invoke-direct {p1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final needsCustomLayoutForChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final removeAllViews(Lcom/reactnativepagerview/NestedScrollableHost;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 66
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/reactnativepagerview/ViewPagerAdapter;

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/reactnativepagerview/ViewPagerAdapter;->removeAll()V

    :cond_0
    return-void
.end method

.method public final removeView(Lcom/reactnativepagerview/NestedScrollableHost;Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/reactnativepagerview/ViewPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->removeChild(Landroid/view/View;)V

    .line 60
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->refreshViewChildrenLayout(Landroid/view/View;)V

    return-void
.end method

.method public final removeViewAt(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/reactnativepagerview/ViewPagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->removeChildAt(I)V

    .line 82
    :cond_3
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->refreshViewChildrenLayout(Landroid/view/View;)V

    return-void
.end method

.method public final setCurrentItem(Landroidx/viewpager2/widget/ViewPager2;IZ)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->refreshViewChildrenLayout(Landroid/view/View;)V

    .line 21
    invoke-virtual {p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public final setInitialPage(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/reactnativepagerview/NestedScrollableHost;->getInitialIndex()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/reactnativepagerview/NestedScrollableHost;->setInitialIndex(Ljava/lang/Integer;)V

    .line 111
    new-instance p2, Lcom/reactnativepagerview/PagerViewViewManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/reactnativepagerview/NestedScrollableHost;)V

    invoke-virtual {v0, p2}, Landroidx/viewpager2/widget/ViewPager2;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setLayoutDirection(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    .line 96
    const-string v0, "rtl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 97
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 100
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    :goto_0
    return-void
.end method

.method public final setOffscreenPageLimit(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public final setOrientation(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const-string v0, "vertical"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    return-void
.end method

.method public final setOverScrollMode(Lcom/reactnativepagerview/NestedScrollableHost;Ljava/lang/String;)V
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 128
    const-string v1, "never"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x2

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_0

    .line 131
    :cond_0
    const-string v1, "always"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    :goto_0
    return-void
.end method

.method public final setPageMargin(Lcom/reactnativepagerview/NestedScrollableHost;I)V
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    int-to-double v0, p2

    .line 142
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result p2

    float-to-int p2, p2

    .line 146
    new-instance v0, Lcom/reactnativepagerview/PagerViewViewManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl$$ExternalSyntheticLambda0;-><init>(ILandroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public final setScrollEnabled(Lcom/reactnativepagerview/NestedScrollableHost;Z)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/PagerViewViewManagerImpl;->getViewPager(Lcom/reactnativepagerview/NestedScrollableHost;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    return-void
.end method
