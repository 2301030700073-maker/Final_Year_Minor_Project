.class public final Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final binding:Lretrofit2/Retrofit;

.field public page:Lorg/wikipedia/dataclient/page/NearbyPage;

.field public final synthetic this$0:Lorg/wikipedia/places/PlacesFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/places/PlacesFragment;Lretrofit2/Retrofit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;->this$0:Lorg/wikipedia/places/PlacesFragment;

    .line 2
    .line 3
    iget-object p1, p2, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;->binding:Lretrofit2/Retrofit;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    new-array p0, p0, [Landroid/view/View;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    aput-object p1, p0, p2

    .line 23
    .line 24
    aget-object p0, p0, p2

    .line 25
    .line 26
    new-instance p1, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 5
    .line 6
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 7
    .line 8
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 15
    .line 16
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-string v6, "app_places_interaction"

    .line 21
    .line 22
    const-string v1, "read_click"

    .line 23
    .line 24
    const-string v2, "list_view"

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    .line 35
    .line 36
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;->page:Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, v0, Lorg/wikipedia/dataclient/page/NearbyPage;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 42
    .line 43
    const/16 v2, 0x9

    .line 44
    .line 45
    invoke-direct {p1, v2, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 46
    .line 47
    .line 48
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 49
    .line 50
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;->this$0:Lorg/wikipedia/places/PlacesFragment;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v0, p1, v2}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    const-string p0, "page"

    .line 69
    .line 70
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;->page:Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "page"

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v1, Lorg/wikipedia/dataclient/page/NearbyPage;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    invoke-direct {v0, v4, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;->page:Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/NearbyPage;->getLocation()Landroid/location/Location;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    new-instance v4, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 29
    .line 30
    new-instance v8, Lorg/wikipedia/media/AvPlayer;

    .line 31
    .line 32
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;->this$0:Lorg/wikipedia/places/PlacesFragment;

    .line 33
    .line 34
    const/16 v1, 0x12

    .line 35
    .line 36
    invoke-direct {v8, v1, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v9, 0x6

    .line 40
    const v6, 0x7f0e0019

    .line 41
    .line 42
    .line 43
    move-object v5, p1

    .line 44
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v0}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v2

    .line 56
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v2
.end method
