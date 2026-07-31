.class public final Lorg/wikipedia/views/ObservableWebView;
.super Landroid/webkit/WebView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u0001:\u0005\u001b\u001c\u001d\u001e\u001fB\u001d\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R$\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0014R$\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u0014R$\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0012\u001a\u0004\u0008\u001a\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lorg/wikipedia/views/ObservableWebView;",
        "Landroid/webkit/WebView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "scrollEventsEnabled",
        "Z",
        "getScrollEventsEnabled",
        "()Z",
        "setScrollEventsEnabled",
        "(Z)V",
        "",
        "value",
        "touchStartX",
        "F",
        "getTouchStartX",
        "()F",
        "touchStartY",
        "getTouchStartY",
        "lastTouchX",
        "getLastTouchX",
        "lastTouchY",
        "getLastTouchY",
        "OnClickListener",
        "OnScrollChangeListener",
        "org/wikipedia/page/ViewHideHandler",
        "OnUpOrCancelMotionEventListener",
        "OnContentHeightChangedListener",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INVALIDATE_EVENT:Lorg/wikipedia/events/WebViewInvalidateEvent;

.field public static final MAX_HUMAN_SCROLL:I


# instance fields
.field public currentContentHeight:I

.field public drawEventsWhileSwiping:I

.field public lastScrollTime:J

.field public lastTouchX:F

.field public lastTouchY:F

.field public final onClickListeners:Ljava/util/ArrayList;

.field public final onContentHeightChangedListeners:Ljava/util/ArrayList;

.field public final onDownMotionEventListeners:Ljava/util/ArrayList;

.field public final onScrollChangeListeners:Ljava/util/ArrayList;

.field public final onUpOrCancelMotionEventListeners:Ljava/util/ArrayList;

.field public scrollEventsEnabled:Z

.field public totalAmountScrolled:I

.field public final touchSlop:I

.field public touchStartX:F

.field public touchStartY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/events/WebViewInvalidateEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/views/ObservableWebView;->INVALIDATE_EVENT:Lorg/wikipedia/events/WebViewInvalidateEvent;

    .line 7
    .line 8
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .line 48
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 49
    .line 50
    mul-float/2addr v1, v0

    .line 51
    float-to-int v0, v1

    .line 52
    sput v0, Lorg/wikipedia/views/ObservableWebView;->MAX_HUMAN_SCROLL:I

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/wikipedia/views/ObservableWebView;->onDownMotionEventListeners:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lorg/wikipedia/views/ObservableWebView;->onContentHeightChangedListeners:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lorg/wikipedia/views/ObservableWebView;->touchSlop:I

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lorg/wikipedia/views/ObservableWebView;->scrollEventsEnabled:Z

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final clearAllListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onDownMotionEventListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/views/ObservableWebView;->onContentHeightChangedListeners:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getLastTouchX()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/ObservableWebView;->lastTouchX:F

    .line 2
    .line 3
    return p0
.end method

.method public final getLastTouchY()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/ObservableWebView;->lastTouchY:F

    .line 2
    .line 3
    return p0
.end method

.method public final getScrollEventsEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/wikipedia/views/ObservableWebView;->scrollEventsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getTouchStartX()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartX:F

    .line 2
    .line 3
    return p0
.end method

.method public final getTouchStartY()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartY:F

    .line 2
    .line 3
    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget p1, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    add-int/2addr p1, v0

    .line 18
    iput p1, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-le p1, v1, :cond_1

    .line 22
    .line 23
    sput-boolean v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->CHILD_VIEW_SCROLLED:Z

    .line 24
    .line 25
    :cond_1
    iget p1, p0, Lorg/wikipedia/views/ObservableWebView;->currentContentHeight:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lorg/wikipedia/views/ObservableWebView;->currentContentHeight:I

    .line 38
    .line 39
    iget-object p1, p0, Lorg/wikipedia/views/ObservableWebView;->onContentHeightChangedListeners:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;

    .line 56
    .line 57
    iget v1, p0, Lorg/wikipedia/views/ObservableWebView;->currentContentHeight:I

    .line 58
    .line 59
    invoke-interface {v0, v1}, Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;->onContentHeightChanged(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget-object p0, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 64
    .line 65
    sget-object p0, Lorg/wikipedia/views/ObservableWebView;->INVALIDATE_EVENT:Lorg/wikipedia/events/WebViewInvalidateEvent;

    .line 66
    .line 67
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onScrollChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    sub-int p1, p2, p4

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    sget v0, Lorg/wikipedia/views/ObservableWebView;->MAX_HUMAN_SCROLL:I

    .line 11
    .line 12
    if-ge p3, v0, :cond_0

    .line 13
    .line 14
    const/4 p3, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p3, 0x0

    .line 17
    :goto_0
    iget-boolean v0, p0, Lorg/wikipedia/views/ObservableWebView;->scrollEventsEnabled:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;

    .line 38
    .line 39
    invoke-interface {v1, p4, p2}, Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;->onScrollChanged(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    if-nez p3, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget p2, p0, Lorg/wikipedia/views/ObservableWebView;->totalAmountScrolled:I

    .line 47
    .line 48
    add-int/2addr p2, p1

    .line 49
    iput p2, p0, Lorg/wikipedia/views/ObservableWebView;->totalAmountScrolled:I

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide p1

    .line 58
    iput-wide p1, p0, Lorg/wikipedia/views/ObservableWebView;->lastScrollTime:J

    .line 59
    .line 60
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    new-instance v1, Lorg/wikipedia/views/ObservableWebView$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v1, p0, v0, p1}, Lorg/wikipedia/views/ObservableWebView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/ObservableWebView;FF)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lorg/wikipedia/views/ObservableWebView;->lastTouchX:F

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lorg/wikipedia/views/ObservableWebView;->lastTouchY:F

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    iget-object v3, p0, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/ArrayList;

    .line 55
    .line 56
    if-eq v0, v2, :cond_3

    .line 57
    .line 58
    const/4 v2, 0x3

    .line 59
    if-eq v0, v2, :cond_1

    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;

    .line 78
    .line 79
    invoke-interface {v2}, Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;->onUpOrCancelMotionEvent()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iput v1, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget v2, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartX:F

    .line 92
    .line 93
    sub-float/2addr v0, v2

    .line 94
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget v2, p0, Lorg/wikipedia/views/ObservableWebView;->touchSlop:I

    .line 99
    .line 100
    int-to-float v2, v2

    .line 101
    cmpg-float v0, v0, v2

    .line 102
    .line 103
    if-gtz v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget v4, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartY:F

    .line 110
    .line 111
    sub-float/2addr v0, v4

    .line 112
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    cmpg-float v0, v0, v2

    .line 117
    .line 118
    if-gtz v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_5

    .line 129
    .line 130
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/ArrayList;

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_4

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_5

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Lorg/wikipedia/views/ObservableWebView$OnClickListener;

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 161
    .line 162
    .line 163
    invoke-interface {v2}, Lorg/wikipedia/views/ObservableWebView$OnClickListener;->onClick()V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    :goto_2
    iput v1, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_6

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;

    .line 184
    .line 185
    invoke-interface {v2}, Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;->onUpOrCancelMotionEvent()V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_6
    iput v1, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_7
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onDownMotionEventListeners:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_8

    .line 203
    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Lorg/wikipedia/page/ViewHideHandler;

    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 215
    .line 216
    .line 217
    move-result-wide v2

    .line 218
    iget-wide v4, p0, Lorg/wikipedia/views/ObservableWebView;->lastScrollTime:J

    .line 219
    .line 220
    sub-long/2addr v2, v4

    .line 221
    const-wide/16 v4, 0x1f4

    .line 222
    .line 223
    cmp-long v0, v2, v4

    .line 224
    .line 225
    if-lez v0, :cond_9

    .line 226
    .line 227
    iput v1, p0, Lorg/wikipedia/views/ObservableWebView;->totalAmountScrolled:I

    .line 228
    .line 229
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    iput v0, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartX:F

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iput v0, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartY:F

    .line 240
    .line 241
    iput v1, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    .line 242
    .line 243
    :goto_5
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    return p0
.end method

.method public final setScrollEventsEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/wikipedia/views/ObservableWebView;->scrollEventsEnabled:Z

    .line 2
    .line 3
    return-void
.end method
