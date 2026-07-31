.class public final Lorg/wikipedia/page/action/PageActionItem$SAVE;
.super Lorg/wikipedia/page/action/PageActionItem;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final select(Lorg/wikipedia/page/action/PageActionItem$Callback;)V
    .locals 7

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
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 9
    .line 10
    iget-object v0, p1, Lorg/wikipedia/page/PageViewModel;->readingListPage:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 17
    .line 18
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getCustomizeToolbarOrder()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->SAVE:Lorg/wikipedia/page/action/PageActionItem;

    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/wikipedia/page/action/PageActionItem;->getId()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lorg/wikipedia/page/PageActionTabLayout;

    .line 46
    .line 47
    :goto_0
    move-object v2, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lorg/wikipedia/page/PageActivity;

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Landroid/widget/ImageView;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    new-instance v1, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 65
    .line 66
    new-instance v5, Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 67
    .line 68
    invoke-direct {v5, p0}, Lorg/wikipedia/page/PageFragment$AvCallback;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 69
    .line 70
    .line 71
    const/16 v6, 0x1c

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const/4 v1, 0x1

    .line 99
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-static {v0, p1, v1, v2, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    :goto_2
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 106
    .line 107
    if-eqz p0, :cond_3

    .line 108
    .line 109
    const-string p1, "save"

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    return-void
.end method
