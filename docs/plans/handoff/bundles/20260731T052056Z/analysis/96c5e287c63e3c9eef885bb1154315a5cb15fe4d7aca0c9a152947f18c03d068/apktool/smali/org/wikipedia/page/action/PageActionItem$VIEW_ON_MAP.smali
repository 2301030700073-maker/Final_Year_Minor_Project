.class public final Lorg/wikipedia/page/action/PageActionItem$VIEW_ON_MAP;
.super Lorg/wikipedia/page/action/PageActionItem;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final select(Lorg/wikipedia/page/action/PageActionItem$Callback;)V
    .locals 9

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
    iget-object v0, p1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lorg/wikipedia/page/Page;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 23
    .line 24
    iget-object p1, p1, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 31
    .line 32
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 33
    .line 34
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 35
    .line 36
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 41
    .line 42
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const-string v8, "app_places_interaction"

    .line 47
    .line 48
    const-string v3, "places_click"

    .line 49
    .line 50
    const-string v4, "article_more_menu"

    .line 51
    .line 52
    const-string v5, ""

    .line 53
    .line 54
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget v2, Lorg/wikipedia/places/PlacesActivity;->$r8$clinit:I

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0, v0, p1}, Lokio/ByteString$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    const p1, 0x7f120037

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method
