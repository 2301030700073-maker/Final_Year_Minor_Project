.class public final Lorg/wikipedia/page/action/PageActionItem$FIND_IN_ARTICLE;
.super Lorg/wikipedia/page/action/PageActionItem;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final select(Lorg/wikipedia/page/action/PageActionItem$Callback;)V
    .locals 0

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
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->showFindInPage()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string p1, "find_in_article"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
