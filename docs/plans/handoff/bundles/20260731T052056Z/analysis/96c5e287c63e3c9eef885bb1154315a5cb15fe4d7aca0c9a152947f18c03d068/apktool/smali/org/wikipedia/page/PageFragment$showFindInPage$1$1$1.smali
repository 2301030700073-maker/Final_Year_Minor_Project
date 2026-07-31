.class public final Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field public final synthetic $articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

.field public final synthetic $findInPageActionProvider:Lorg/wikipedia/page/FindInWebPageActionProvider;

.field public final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/FindInWebPageActionProvider;Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;->$findInPageActionProvider:Lorg/wikipedia/page/FindInWebPageActionProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;->$articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const p1, 0x7f1203f5

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;->$findInPageActionProvider:Lorg/wikipedia/page/FindInWebPageActionProvider;

    .line 15
    .line 16
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->onPageSetToolbarElevationEnabled(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;->$articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

    .line 23
    .line 24
    iput v0, p0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->pageHeight:I

    .line 25
    .line 26
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 27
    .line 28
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl;

    .line 29
    .line 30
    iget v2, p0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->pageId:I

    .line 31
    .line 32
    iget-object v7, p0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->findText:Ljava/lang/String;

    .line 33
    .line 34
    iget v3, p0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindNext:I

    .line 35
    .line 36
    iget v4, p0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindPrev:I

    .line 37
    .line 38
    iget v5, p0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->pageHeight:I

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    iget-wide v10, p0, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->startTime:J

    .line 45
    .line 46
    sub-long/2addr v8, v10

    .line 47
    long-to-int v6, v8

    .line 48
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl;-><init>(IIIIILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Landroidx/paging/HintHandler;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    const/16 v2, 0x23

    .line 88
    .line 89
    if-lt v0, v2, :cond_1

    .line 90
    .line 91
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 92
    .line 93
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/16 v2, 0x1e

    .line 98
    .line 99
    if-lt v0, v2, :cond_2

    .line 100
    .line 101
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 102
    .line 103
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    const/16 v2, 0x1a

    .line 108
    .line 109
    if-lt v0, v2, :cond_3

    .line 110
    .line 111
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 112
    .line 113
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 118
    .line 119
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-virtual {v0}, Lcoil3/util/UtilsKt;->hide()V

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-eqz p0, :cond_5

    .line 130
    .line 131
    const/4 p1, 0x1

    .line 132
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->onPageSetToolbarElevationEnabled(Z)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_1
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string p0, "actionModeFindInPage"

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0
.end method
