.class public final Lcom/shopify/reactnative/flash_list/AutoLayoutView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "AutoLayoutView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoLayoutView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoLayoutView.kt\ncom/shopify/reactnative/flash_list/AutoLayoutView\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,159:1\n6180#2,2:160\n*S KotlinDebug\n*F\n+ 1 AutoLayoutView.kt\ncom/shopify/reactnative/flash_list/AutoLayoutView\n*L\n69#1:160,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u0008\u0010\u001d\u001a\u00020\u001aH\u0002J\u0008\u0010\u001e\u001a\u00020\u001aH\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0002J\n\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\n\u0010#\u001a\u0004\u0018\u00010\"H\u0002J\u0008\u0010$\u001a\u00020\u001aH\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shopify/reactnative/flash_list/AutoLayoutView;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "alShadow",
        "Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;",
        "getAlShadow",
        "()Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;",
        "enableInstrumentation",
        "",
        "getEnableInstrumentation",
        "()Z",
        "setEnableInstrumentation",
        "(Z)V",
        "disableAutoLayout",
        "getDisableAutoLayout",
        "setDisableAutoLayout",
        "pixelDensity",
        "",
        "getPixelDensity",
        "()D",
        "setPixelDensity",
        "(D)V",
        "dispatchDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "fixLayout",
        "fixFooter",
        "getFooterDiff",
        "",
        "getFooter",
        "Landroid/view/View;",
        "getParentScrollView",
        "emitBlankAreaEvent",
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


# instance fields
.field private final alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

.field private disableAutoLayout:Z

.field private enableInstrumentation:Z

.field private pixelDensity:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-direct {p1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;-><init>()V

    iput-object p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 27
    iput-wide v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->pixelDensity:D

    return-void
.end method

.method private final emitBlankAreaEvent()V
    .locals 10

    .line 144
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v4

    .line 149
    new-instance v1, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;

    .line 151
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getId()I

    move-result v5

    .line 152
    iget-object v2, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v2}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getBlankOffsetAtStart()I

    move-result v2

    int-to-double v2, v2

    iget-wide v6, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->pixelDensity:D

    div-double v6, v2, v6

    .line 153
    iget-object v2, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v2}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getBlankOffsetAtEnd()I

    move-result v2

    int-to-double v2, v2

    iget-wide v8, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->pixelDensity:D

    div-double v8, v2, v8

    move-object v3, v1

    .line 149
    invoke-direct/range {v3 .. v9}, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;-><init>(IIDD)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 148
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method private final fixFooter()V
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getParentScrollView()Landroid/view/View;

    move-result-object v0

    .line 78
    iget-boolean v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->disableAutoLayout:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gt v1, v0, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gt v1, v0, :cond_5

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/View;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 86
    :goto_1
    invoke-direct {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getFooter()Landroid/view/View;

    move-result-object v1

    .line 87
    invoke-direct {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getFooterDiff()I

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    goto :goto_2

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v3}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getHorizontal()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 94
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getRight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->setRight(I)V

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    goto :goto_2

    .line 97
    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 98
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getBottom()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->setBottom(I)V

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final fixLayout()V
    .locals 6

    .line 60
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->disableAutoLayout:Z

    if-nez v0, :cond_4

    .line 61
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getChildCount()I

    move-result v0

    new-array v2, v0, [Lcom/shopify/reactnative/flash_list/CellContainer;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 62
    invoke-virtual {p0, v3}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 63
    instance-of v5, v4, Lcom/shopify/reactnative/flash_list/CellContainer;

    if-eqz v5, :cond_0

    .line 66
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CellRendererComponent outer view should always be CellContainer. Learn more here: https://shopify.github.io/flash-list/docs/usage#cellrenderercomponent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le v0, v1, :cond_2

    .line 160
    new-instance v0, Lcom/shopify/reactnative/flash_list/AutoLayoutView$fixLayout$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView$fixLayout$$inlined$sortBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v2, v0}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v0}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getHorizontal()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getLeft()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getTop()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->setOffsetFromStart(I)V

    .line 71
    iget-object v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v0, v2}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->clearGapsAndOverlaps([Lcom/shopify/reactnative/flash_list/CellContainer;)V

    :cond_4
    return-void
.end method

.method private final getFooter()Landroid/view/View;
    .locals 7

    .line 119
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 121
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 122
    instance-of v5, v4, Lcom/shopify/reactnative/flash_list/CellContainer;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/shopify/reactnative/flash_list/CellContainer;

    invoke-interface {v5}, Lcom/shopify/reactnative/flash_list/CellContainer;->getIndex()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    move-object v2, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v2
.end method

.method private final getFooterDiff()I
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v0, v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->setLastMaxBoundOverall(I)V

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 107
    invoke-virtual {p0, v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getHorizontal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 108
    :goto_0
    invoke-virtual {v1, v0}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->setLastMaxBoundOverall(I)V

    .line 114
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v0}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getHorizontal()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getLeft()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getTop()I

    move-result v1

    :goto_2
    sub-int/2addr v0, v1

    .line 115
    iget-object v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getLastMaxBoundOverall()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private final getParentScrollView()Landroid/view/View;
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 133
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    :goto_1
    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->fixLayout()V

    .line 33
    invoke-direct {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->fixFooter()V

    .line 34
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-direct {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getParentScrollView()Landroid/view/View;

    move-result-object p1

    .line 37
    iget-boolean v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->enableInstrumentation:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 42
    iget-object v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v0}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    .line 46
    :goto_1
    iget-object v1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v1}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getLeft()I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getTop()I

    move-result v1

    .line 47
    :goto_2
    iget-object v2, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v2}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->getHorizontal()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getRight()I

    move-result v2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->getBottom()I

    move-result v2

    :goto_3
    sub-int/2addr v1, p1

    const/4 v3, 0x0

    .line 49
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 50
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    iget-object v2, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    invoke-virtual {v2, p1, v1, v0}, Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;->computeBlankFromGivenOffset(III)I

    .line 53
    invoke-direct {p0}, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->emitBlankAreaEvent()V

    :cond_4
    return-void
.end method

.method public final getAlShadow()Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->alShadow:Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;

    return-object v0
.end method

.method public final getDisableAutoLayout()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->disableAutoLayout:Z

    return v0
.end method

.method public final getEnableInstrumentation()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->enableInstrumentation:Z

    return v0
.end method

.method public final getPixelDensity()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->pixelDensity:D

    return-wide v0
.end method

.method public final setDisableAutoLayout(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->disableAutoLayout:Z

    return-void
.end method

.method public final setEnableInstrumentation(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->enableInstrumentation:Z

    return-void
.end method

.method public final setPixelDensity(D)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/shopify/reactnative/flash_list/AutoLayoutView;->pixelDensity:D

    return-void
.end method
