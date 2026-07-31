.class public final Lorg/wikipedia/page/action/PageActionItem$CONTENTS;
.super Lorg/wikipedia/page/action/PageActionItem;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final select(Lorg/wikipedia/page/action/PageActionItem$Callback;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 5
    .line 6
    iget-object p0, p1, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p1, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 13
    .line 14
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p1, Lorg/wikipedia/page/SidePanelHandler;->currentItemSelected:I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/page/SidePanelHandler;->onScrollerMoved(FZ)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lorg/wikipedia/page/SidePanelHandler;->articleTocInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget v0, p1, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numOpens:I

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p1, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numOpens:I

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p1, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->lastScrollStartMillis:J

    .line 48
    .line 49
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const-string p1, "contents"

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
