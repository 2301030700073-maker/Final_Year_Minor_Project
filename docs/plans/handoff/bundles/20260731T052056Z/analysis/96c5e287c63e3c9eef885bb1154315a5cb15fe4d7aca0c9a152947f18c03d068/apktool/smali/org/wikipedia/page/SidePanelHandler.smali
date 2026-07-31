.class public final Lorg/wikipedia/page/SidePanelHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnClickListener;
.implements Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;
.implements Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;


# instance fields
.field public articleTocInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;

.field public final binding:Lorg/wikipedia/databinding/ActivityPageBinding;

.field public final bridge:Lorg/wikipedia/bridge/CommunicationBridge;

.field public currentItemSelected:I

.field public final fragment:Lorg/wikipedia/page/PageFragment;

.field public rtl:Z

.field public final scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

.field public final sectionOffsetsCallback:Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;

.field public final tocAdapter:Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;

.field public final webView:Lorg/wikipedia/views/ObservableWebView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/page/SidePanelHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/page/SidePanelHandler;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lorg/wikipedia/page/PageActivity;

    .line 16
    .line 17
    invoke-virtual {p2}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 22
    .line 23
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    const/high16 v1, 0x42300000    # 44.0f

    .line 26
    .line 27
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/wikipedia/page/SidePanelHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lorg/wikipedia/page/SidePanelHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 45
    .line 46
    new-instance v0, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;-><init>(Lorg/wikipedia/page/SidePanelHandler;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/wikipedia/page/SidePanelHandler;->tocAdapter:Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;

    .line 52
    .line 53
    new-instance v1, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;

    .line 54
    .line 55
    const/4 v2, 0x4

    .line 56
    invoke-direct {v1, v2, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lorg/wikipedia/page/SidePanelHandler;->sectionOffsetsCallback:Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;

    .line 60
    .line 61
    iget-object v1, p2, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lorg/wikipedia/views/SwipeableListView;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lorg/wikipedia/page/SidePanelHandler$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lorg/wikipedia/page/SidePanelHandler$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/page/SidePanelHandler;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/16 v2, 0x1a

    .line 79
    .line 80
    invoke-direct {v0, v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lorg/wikipedia/views/SwipeableListView;->setListener(Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p1, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    iget-object v0, p1, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object p1, p1, Lorg/wikipedia/views/ObservableWebView;->onContentHeightChangedListeners:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    iget-object p1, p2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lorg/wikipedia/views/PageScrollerView;

    .line 104
    .line 105
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 106
    .line 107
    const/16 v1, 0x10

    .line 108
    .line 109
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lorg/wikipedia/views/PageScrollerView;->setCallback(Lorg/wikipedia/views/PageScrollerView$Callback;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p2, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p1, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 118
    .line 119
    new-instance p2, Lorg/wikipedia/page/SidePanelHandler$3;

    .line 120
    .line 121
    invoke-direct {p2, p0}, Lorg/wikipedia/page/SidePanelHandler$3;-><init>(Lorg/wikipedia/page/SidePanelHandler;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p1, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/ArrayList;

    .line 125
    .line 126
    if-nez v0, :cond_0

    .line 127
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v0, p1, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/ArrayList;

    .line 134
    .line 135
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lorg/wikipedia/page/SidePanelHandler;->setScrollerPosition()V

    .line 139
    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler;->articleTocInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->scrollStop()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final log()V
    .locals 8

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler;->articleTocInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->scrollStop()V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numSections:I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numOpens:I

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 18
    .line 19
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;

    .line 20
    .line 21
    iget-object v7, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->wikiDb:Ljava/lang/String;

    .line 22
    .line 23
    iget v2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->pageId:I

    .line 24
    .line 25
    iget v3, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numOpens:I

    .line 26
    .line 27
    iget v4, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numSectionClicks:I

    .line 28
    .line 29
    iget v5, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->totalOpenedSec:I

    .line 30
    .line 31
    iget v6, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numSections:I

    .line 32
    .line 33
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;-><init>(IIIIILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/page/SidePanelHandler;->hide()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onContentHeightChanged(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/wikipedia/page/SidePanelHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p1, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p1, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "pcs.c1.Sections.getOffsets(document.body);"

    .line 17
    .line 18
    iget-object v0, p0, Lorg/wikipedia/page/SidePanelHandler;->sectionOffsetsCallback:Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;

    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void

    .line 26
    :cond_2
    const-string p0, "bridge"

    .line 27
    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0
.end method

.method public final onScrollChanged(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/SidePanelHandler;->setScrollerPosition()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onScrollerMoved(FZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/SidePanelHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    int-to-float v3, v3

    .line 16
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    mul-float/2addr v3, v4

    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr p1, v3

    .line 25
    iget-object v4, p0, Lorg/wikipedia/page/SidePanelHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4}, Lokio/Okio__OkioKt;->getToolbarHeightPx(Landroid/content/Context;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    mul-int/lit8 v4, v4, 0x2

    .line 36
    .line 37
    sub-int v4, v2, v4

    .line 38
    .line 39
    int-to-float v4, v4

    .line 40
    div-float/2addr p1, v4

    .line 41
    add-float/2addr p1, v1

    .line 42
    const/4 v1, 0x0

    .line 43
    cmpg-float v4, p1, v1

    .line 44
    .line 45
    if-gez v4, :cond_0

    .line 46
    .line 47
    move p1, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    int-to-float v1, v2

    .line 50
    sub-float/2addr v3, v1

    .line 51
    cmpl-float v1, p1, v3

    .line 52
    .line 53
    if-lez v1, :cond_1

    .line 54
    .line 55
    move p1, v3

    .line 56
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    float-to-int p2, p1

    .line 60
    invoke-virtual {v0, v1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 61
    .line 62
    .line 63
    :cond_2
    float-to-int p1, p1

    .line 64
    div-int/lit8 v2, v2, 0x2

    .line 65
    .line 66
    add-int/2addr v2, p1

    .line 67
    int-to-float p1, v2

    .line 68
    invoke-static {p1}, Lokio/Okio__OkioKt;->roundedPxToDp(F)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget-object p2, p0, Lorg/wikipedia/page/SidePanelHandler;->tocAdapter:Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;

    .line 73
    .line 74
    iget-object v0, p2, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v2, 0x1

    .line 81
    move v3, v1

    .line 82
    :goto_1
    if-ge v2, v0, :cond_3

    .line 83
    .line 84
    iget-object v4, p2, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    check-cast v4, Lorg/wikipedia/page/Section;

    .line 94
    .line 95
    iget v4, v4, Lorg/wikipedia/page/Section;->id:I

    .line 96
    .line 97
    iget-object v5, p2, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sectionYOffsets:Landroid/util/SparseIntArray;

    .line 98
    .line 99
    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-ge v4, p1, :cond_3

    .line 104
    .line 105
    add-int/lit8 v3, v2, 0x1

    .line 106
    .line 107
    move v6, v3

    .line 108
    move v3, v2

    .line 109
    move v2, v6

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    iget p1, p0, Lorg/wikipedia/page/SidePanelHandler;->currentItemSelected:I

    .line 112
    .line 113
    if-eq v3, p1, :cond_4

    .line 114
    .line 115
    iput v3, p2, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->highlightedSection:I

    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 118
    .line 119
    .line 120
    iput v3, p0, Lorg/wikipedia/page/SidePanelHandler;->currentItemSelected:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move v3, p1

    .line 124
    :goto_2
    iget-object p1, p0, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 125
    .line 126
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p1, Lorg/wikipedia/views/SwipeableListView;

    .line 129
    .line 130
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    .line 132
    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 133
    .line 134
    const/high16 p2, 0x428c0000    # 70.0f

    .line 135
    .line 136
    invoke-static {p2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    sub-int/2addr p0, p2

    .line 141
    invoke-virtual {p1, v3, p0, v1}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/page/SidePanelHandler;->setScrollerPosition()V

    .line 6
    .line 7
    .line 8
    iget-object p0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/FixedDrawerLayout;->setSlidingEnabled(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/FixedDrawerLayout;->setSlidingEnabled(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final setScrollerPosition()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/page/SidePanelHandler;->rtl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x5

    .line 8
    :goto_0
    iget-object v2, p0, Lorg/wikipedia/page/SidePanelHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    .line 10
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    .line 12
    const/high16 v1, 0x41400000    # 12.0f

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, v3

    .line 23
    :goto_1
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 24
    .line 25
    iget-boolean v0, p0, Lorg/wikipedia/page/SidePanelHandler;->rtl:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move v0, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_2
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 36
    .line 37
    iget-object v0, p0, Lorg/wikipedia/page/SidePanelHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const v1, 0x7f040006

    .line 44
    .line 45
    .line 46
    filled-new-array {v1}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    .line 67
    .line 68
    int-to-float v0, v1

    .line 69
    iget-object v3, p0, Lorg/wikipedia/page/SidePanelHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    mul-int/lit8 v5, v1, 0x2

    .line 76
    .line 77
    sub-int/2addr v4, v5

    .line 78
    int-to-float v4, v4

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    int-to-float v5, v5

    .line 84
    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    int-to-float v3, v3

    .line 89
    div-float/2addr v5, v3

    .line 90
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 91
    .line 92
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 111
    .line 112
    div-float/2addr v5, v3

    .line 113
    mul-float/2addr v5, v4

    .line 114
    add-float/2addr v5, v0

    .line 115
    float-to-int v0, v5

    .line 116
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 117
    .line 118
    if-ge v0, v1, :cond_3

    .line 119
    .line 120
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 121
    .line 122
    :cond_3
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 123
    .line 124
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p0, Lorg/wikipedia/views/PageScrollerView;

    .line 127
    .line 128
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
