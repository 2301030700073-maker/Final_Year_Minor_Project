.class public final Lorg/wikipedia/page/action/PageActionItem$EDIT_ARTICLE;
.super Lorg/wikipedia/page/action/PageActionItem;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final select(Lorg/wikipedia/page/action/PageActionItem$Callback;)V
    .locals 3

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
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->editHandler:Lorg/wikipedia/edit/EditHandler;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object v1, p1, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    iget-object v1, v1, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    invoke-virtual {p1, v2, v0, v1, v0}, Lorg/wikipedia/page/PageFragment;->onRequestEditSection(ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const-string p1, "edit_article"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    const-string p0, "editHandler"

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method
