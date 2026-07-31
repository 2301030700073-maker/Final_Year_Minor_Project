.class public final Lorg/wikipedia/media/AvPlayer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/descriptions/DescriptionEditView$Callback;
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
.implements Lorg/wikipedia/views/imageservice/ImageLoadListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Lorg/wikipedia/feed/view/ListItemView$Callback;
.implements Lorg/wikipedia/readinglist/LongPressMenu$Callback;
.implements Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;
.implements Lorg/wikipedia/views/PageItemView$Callback;
.implements Lorg/wikipedia/login/LoginClient$LoginCallback;
.implements Lorg/wikipedia/views/PageScrollerView$Callback;
.implements Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;
.implements Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcoil3/request/ImageRequest$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final player:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lorg/wikipedia/media/AvPlayer;

    .line 10
    .line 11
    const/16 v0, 0xe

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lorg/wikipedia/media/AvPlayer;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Landroid/media/MediaPlayer;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/notifications/db/NotificationDao_Impl;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    return-void
.end method

.method private final onError$org$wikipedia$suggestededits$SuggestedEditsImageRecsFragment$onLoadSuccess$1(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onListChipClick$org$wikipedia$history$HistoryFragment$ItemCallback(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onListChipClick$org$wikipedia$talk$ArchivedTalkPagesActivity$ItemCallback(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onRemoveRequest$org$wikipedia$feed$onthisday$OnThisDayPagesViewHolder$showOverflowMenu$1$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onRemoveRequest$org$wikipedia$feed$view$ListItemView$2$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onRemoveRequest$org$wikipedia$places$PlacesFragment$RecyclerViewItemHolder$onLongClick$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onShareRequest$org$wikipedia$feed$onthisday$OnThisDayPagesViewHolder$showOverflowMenu$1$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onShareRequest$org$wikipedia$feed$view$ListItemView$2$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onShareRequest$org$wikipedia$places$PlacesFragment$RecyclerViewItemHolder$onLongClick$1()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lorg/wikipedia/login/ResetPasswordActivity;

    .line 7
    .line 8
    sget v0, Lorg/wikipedia/login/ResetPasswordActivity;->$r8$clinit:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lorg/wikipedia/login/ResetPasswordActivity;->showProgressBar$3(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/login/ResetPasswordActivity;->resetAuthState$1()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Landroidx/paging/HintHandler;

    .line 29
    .line 30
    invoke-direct {v3, v2}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v4, 0x23

    .line 36
    .line 37
    if-lt v2, v4, :cond_0

    .line 38
    .line 39
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 40
    .line 41
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v4, 0x1e

    .line 46
    .line 47
    if-lt v2, v4, :cond_1

    .line 48
    .line 49
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 50
    .line 51
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/16 v4, 0x1a

    .line 56
    .line 57
    if-lt v2, v4, :cond_2

    .line 58
    .line 59
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 60
    .line 61
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 66
    .line 67
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v2}, Lcoil3/util/UtilsKt;->hide()V

    .line 71
    .line 72
    .line 73
    instance-of v1, p1, Lorg/wikipedia/login/LoginFailedException;

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    const-string v3, "binding"

    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 91
    .line 92
    sget v4, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 93
    .line 94
    invoke-virtual {v1, p1, v2}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 98
    .line 99
    if-eqz p0, :cond_4

    .line 100
    .line 101
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v2

    .line 113
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v2
.end method

.method public fetchAndSave(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;-><init>(Lorg/wikipedia/media/AvPlayer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    .line 40
    .line 41
    iget-object p1, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_2
    iget-object p1, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 65
    .line 66
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 67
    .line 68
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iput-object p3, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 81
    .line 82
    iput v4, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->label:I

    .line 83
    .line 84
    invoke-interface {v2, p1, p2, v0}, Lorg/wikipedia/dataclient/Service;->getAllNotifications(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v1, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move-object v6, p3

    .line 92
    move-object p3, p1

    .line 93
    move-object p1, v6

    .line 94
    :goto_1
    check-cast p3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 95
    .line 96
    iget-object p2, p3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 97
    .line 98
    if-eqz p2, :cond_8

    .line 99
    .line 100
    iget-object p2, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    .line 101
    .line 102
    if-eqz p2, :cond_8

    .line 103
    .line 104
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p0, Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 107
    .line 108
    iget-object p3, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list:Ljava/util/List;

    .line 109
    .line 110
    if-nez p3, :cond_5

    .line 111
    .line 112
    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 113
    .line 114
    :cond_5
    iput-object p1, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 115
    .line 116
    iput-object p2, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    .line 117
    .line 118
    iput v3, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchAndSave$1;->label:I

    .line 119
    .line 120
    iget-object v2, p0, Lorg/wikipedia/notifications/db/NotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 121
    .line 122
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 123
    .line 124
    const/16 v5, 0x15

    .line 125
    .line 126
    invoke-direct {v3, v5, p0, p3}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const/4 p0, 0x0

    .line 130
    invoke-static {v2, p0, v4, v3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-ne p0, v1, :cond_6

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 138
    .line 139
    :goto_2
    if-ne p0, v1, :cond_7

    .line 140
    .line 141
    :goto_3
    return-object v1

    .line 142
    :cond_7
    move-object p0, p2

    .line 143
    :goto_4
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->continueStr:Ljava/lang/String;

    .line 144
    .line 145
    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 146
    .line 147
    :cond_8
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 148
    .line 149
    return-object p0
.end method

.method public fetchUnreadWikiDbNames(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/wikipedia/notifications/NotificationRepository$fetchUnreadWikiDbNames$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/notifications/NotificationRepository$fetchUnreadWikiDbNames$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchUnreadWikiDbNames$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchUnreadWikiDbNames$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/notifications/NotificationRepository$fetchUnreadWikiDbNames$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/notifications/NotificationRepository$fetchUnreadWikiDbNames$1;-><init>(Lorg/wikipedia/media/AvPlayer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchUnreadWikiDbNames$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchUnreadWikiDbNames$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 51
    .line 52
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 53
    .line 54
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iput v3, v0, Lorg/wikipedia/notifications/NotificationRepository$fetchUnreadWikiDbNames$1;->label:I

    .line 67
    .line 68
    invoke-interface {p0, v0}, Lorg/wikipedia/dataclient/Service;->unreadNotificationWikis(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-ne p0, p1, :cond_3

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    :goto_1
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 76
    .line 77
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 78
    .line 79
    if-eqz p0, :cond_4

    .line 80
    .line 81
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->unreadNotificationWikis:Ljava/util/Map;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    move-object p0, v2

    .line 85
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance p1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lorg/wikipedia/notifications/db/Notification$UnreadNotificationWikiItem;

    .line 124
    .line 125
    iget-object v0, v0, Lorg/wikipedia/notifications/db/Notification$UnreadNotificationWikiItem;->source:Lorg/wikipedia/notifications/db/Notification$Source;

    .line 126
    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    new-instance v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 130
    .line 131
    iget-object v0, v0, Lorg/wikipedia/notifications/db/Notification$Source;->base:Ljava/lang/String;

    .line 132
    .line 133
    invoke-direct {v3, v0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lkotlin/Pair;

    .line 137
    .line 138
    invoke-direct {v0, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    move-object v0, v2

    .line 143
    :goto_4
    if-eqz v0, :cond_5

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0
.end method

.method public getLastOrderNumber(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/wikipedia/talk/template/TalkTemplatesRepository$getLastOrderNumber$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/talk/template/TalkTemplatesRepository$getLastOrderNumber$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesRepository$getLastOrderNumber$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesRepository$getLastOrderNumber$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/talk/template/TalkTemplatesRepository$getLastOrderNumber$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/talk/template/TalkTemplatesRepository$getLastOrderNumber$1;-><init>(Lorg/wikipedia/media/AvPlayer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/talk/template/TalkTemplatesRepository$getLastOrderNumber$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/talk/template/TalkTemplatesRepository$getLastOrderNumber$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 54
    .line 55
    iput v4, v0, Lorg/wikipedia/talk/template/TalkTemplatesRepository$getLastOrderNumber$1;->label:I

    .line 56
    .line 57
    iget-object p0, p0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 58
    .line 59
    new-instance p1, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    invoke-direct {p1, v4}, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v4, v3, p1, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    :cond_4
    new-instance p0, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-direct {p0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 82
    .line 83
    .line 84
    return-object p0
.end method

.method public hCaptchaPrompt(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/login/LoginFailedException;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onActionClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 10
    .line 11
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onAddPageToList(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/feed/topread/TopReadFragment;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->MOST_READ_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 25
    .line 26
    invoke-static {p0, p1, p2, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 31
    .line 32
    check-cast p0, Lorg/wikipedia/feed/news/NewsFragment;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->NEWS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 43
    .line 44
    invoke-static {p0, p1, p2, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onAddRequest(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/places/PlacesFragment;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->PLACES:Lorg/wikipedia/Constants$InvokeSource;

    .line 25
    .line 26
    invoke-static {p0, p1, p2, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    check-cast p0, Lorg/wikipedia/feed/view/ListItemView;

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListItemView;->getCallback()Lorg/wikipedia/feed/view/ListItemView$Callback;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-interface {p0, p1, p2}, Lorg/wikipedia/feed/view/ListItemView$Callback;->onAddPageToList(Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_2
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 43
    .line 44
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 45
    .line 46
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 53
    .line 54
    invoke-static {p0, p1, p2, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    check-cast p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 13
    .line 14
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 15
    .line 16
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->ARCHIVED_TALK_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 17
    .line 18
    invoke-static {p0, p1, v0}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :pswitch_0
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    .line 27
    .line 28
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 29
    .line 30
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment;->toggleSelectPage(Lorg/wikipedia/history/HistoryEntry;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-eqz p1, :cond_6

    .line 43
    .line 44
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v1, 0x4

    .line 51
    invoke-direct {v0, v1, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-class v2, Lorg/wikipedia/history/HistoryFragment$Callback;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    goto :goto_0

    .line 120
    :cond_5
    move-object p0, v3

    .line 121
    :goto_0
    check-cast p0, Lorg/wikipedia/history/HistoryFragment$Callback;

    .line 122
    .line 123
    if-eqz p0, :cond_6

    .line 124
    .line 125
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 126
    .line 127
    sget v1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v1, v0, v2, p1}, Lorg/wikipedia/login/LoginClient;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_1
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Lcoil3/request/ImageRequest;Lcoil3/request/ErrorResult;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    check-cast p0, Lorg/wikipedia/views/imageservice/ImageLoadListener;

    .line 50
    iget-object p1, p2, Lcoil3/request/ErrorResult;->throwable:Ljava/lang/Throwable;

    .line 51
    invoke-interface {p0, p1}, Lorg/wikipedia/views/imageservice/ImageLoadListener;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 4
    .line 5
    sparse-switch p1, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :sswitch_0
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 10
    .line 11
    iget p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->loadedImagesForShare:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iput p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->loadedImagesForShare:I

    .line 16
    .line 17
    return-void

    .line 18
    :sswitch_1
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyContainer:Landroid/view/View;

    .line 31
    .line 32
    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 33
    .line 34
    const/16 p1, 0x8

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p0, "binding"

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    throw p0

    .line 47
    :cond_1
    :goto_0
    return-void

    .line 48
    nop

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public onListChipClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public onLongClick(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 8
    .line 9
    return v1

    .line 10
    :pswitch_0
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 15
    .line 16
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    const-string v1, "searchActionMode"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment;->toggleSelectPage(Lorg/wikipedia/history/HistoryEntry;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :goto_1
    return v1

    .line 47
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 17
    .line 18
    iget-object v4, p0, Lorg/wikipedia/readinglist/LongPressMenu;->location:Landroid/location/Location;

    .line 19
    .line 20
    iget-object v5, p0, Lorg/wikipedia/readinglist/LongPressMenu;->callback:Lorg/wikipedia/readinglist/LongPressMenu$Callback;

    .line 21
    .line 22
    iget-object v6, p0, Lorg/wikipedia/readinglist/LongPressMenu;->anchorView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v6, p1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const v0, 0x7f0903c9

    .line 42
    .line 43
    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lorg/wikipedia/readinglist/LongPressMenu;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 47
    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    invoke-interface {v5, p0}, Lorg/wikipedia/readinglist/LongPressMenu$Callback;->onOpenLink(Lorg/wikipedia/history/HistoryEntry;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    move v1, v3

    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_1
    const v0, 0x7f0903c8

    .line 57
    .line 58
    .line 59
    if-ne p1, v0, :cond_2

    .line 60
    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    iget-object p0, p0, Lorg/wikipedia/readinglist/LongPressMenu;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 64
    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    invoke-interface {v5, p0, v4}, Lorg/wikipedia/readinglist/LongPressMenu$Callback;->onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const v0, 0x7f0903c7

    .line 72
    .line 73
    .line 74
    if-ne p1, v0, :cond_3

    .line 75
    .line 76
    const-string p1, "new_tab_click"

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->sendPlacesEvent(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lorg/wikipedia/readinglist/LongPressMenu;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 82
    .line 83
    if-eqz p0, :cond_0

    .line 84
    .line 85
    invoke-interface {v5, p0}, Lorg/wikipedia/readinglist/LongPressMenu$Callback;->onOpenInNewTab(Lorg/wikipedia/history/HistoryEntry;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const v0, 0x7f0903c3

    .line 90
    .line 91
    .line 92
    if-ne p1, v0, :cond_4

    .line 93
    .line 94
    const-string p1, "save_click"

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->sendPlacesEvent(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lorg/wikipedia/readinglist/LongPressMenu;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 100
    .line 101
    if-eqz p0, :cond_0

    .line 102
    .line 103
    invoke-interface {v5, p0, v3}, Lorg/wikipedia/readinglist/LongPressMenu$Callback;->onAddRequest(Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    const v0, 0x7f0903c2

    .line 108
    .line 109
    .line 110
    if-ne p1, v0, :cond_5

    .line 111
    .line 112
    const-string p1, "add_to_another_list_click"

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->sendPlacesEvent(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lorg/wikipedia/readinglist/LongPressMenu;->listsContainingPage:Ljava/util/List;

    .line 118
    .line 119
    if-eqz p1, :cond_0

    .line 120
    .line 121
    iget-object p0, p0, Lorg/wikipedia/readinglist/LongPressMenu;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 122
    .line 123
    if-eqz p0, :cond_0

    .line 124
    .line 125
    invoke-interface {v5, p0, v1}, Lorg/wikipedia/readinglist/LongPressMenu$Callback;->onAddRequest(Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    const v0, 0x7f0903c6

    .line 130
    .line 131
    .line 132
    if-ne p1, v0, :cond_6

    .line 133
    .line 134
    const-string p1, "move_from_list_to_another_list_click"

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->sendPlacesEvent(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lorg/wikipedia/readinglist/LongPressMenu;->listsContainingPage:Ljava/util/List;

    .line 140
    .line 141
    if-eqz p1, :cond_0

    .line 142
    .line 143
    iget-object p0, p0, Lorg/wikipedia/readinglist/LongPressMenu;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 144
    .line 145
    if-eqz p0, :cond_0

    .line 146
    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 152
    .line 153
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 160
    .line 161
    invoke-interface {v5, p1, p0}, Lorg/wikipedia/readinglist/LongPressMenu$Callback;->onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/history/HistoryEntry;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_6
    const v0, 0x7f0903ca

    .line 166
    .line 167
    .line 168
    if-ne p1, v0, :cond_8

    .line 169
    .line 170
    const-string p1, "remove_from_list_click"

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->sendPlacesEvent(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lorg/wikipedia/readinglist/LongPressMenu;->listsContainingPage:Ljava/util/List;

    .line 176
    .line 177
    if-eqz p1, :cond_7

    .line 178
    .line 179
    new-instance v0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 180
    .line 181
    invoke-direct {v0, p1}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Ljava/util/List;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/LongPressMenu;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    new-instance v1, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 189
    .line 190
    invoke-direct {v1, v3, p0}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p1, v1}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->deleteOrShowDialog(Landroid/app/Activity;Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    invoke-interface {v5}, Lorg/wikipedia/readinglist/LongPressMenu$Callback;->onRemoveRequest()V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_8
    const v0, 0x7f0903cb

    .line 202
    .line 203
    .line 204
    if-ne p1, v0, :cond_9

    .line 205
    .line 206
    const-string p1, "share_click"

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->sendPlacesEvent(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lorg/wikipedia/readinglist/LongPressMenu;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 212
    .line 213
    if-eqz p1, :cond_0

    .line 214
    .line 215
    invoke-interface {v5}, Lorg/wikipedia/readinglist/LongPressMenu$Callback;->onShareRequest()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/LongPressMenu;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_9
    const v0, 0x7f0903c4

    .line 232
    .line 233
    .line 234
    if-ne p1, v0, :cond_b

    .line 235
    .line 236
    const-string p1, "copy_link_click"

    .line 237
    .line 238
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->sendPlacesEvent(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lorg/wikipedia/readinglist/LongPressMenu;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 242
    .line 243
    if-eqz p1, :cond_0

    .line 244
    .line 245
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/LongPressMenu;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    const-class v1, Landroid/content/ClipboardManager;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Landroid/content/ClipboardManager;

    .line 264
    .line 265
    if-eqz v0, :cond_a

    .line 266
    .line 267
    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 272
    .line 273
    .line 274
    :cond_a
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/LongPressMenu;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    const p1, 0x7f12007a

    .line 279
    .line 280
    .line 281
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_b
    const v0, 0x7f0903c5

    .line 287
    .line 288
    .line 289
    if-ne p1, v0, :cond_c

    .line 290
    .line 291
    const-string p1, "directions_click"

    .line 292
    .line 293
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->sendPlacesEvent(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    if-eqz v4, :cond_0

    .line 297
    .line 298
    iget-object p1, p0, Lorg/wikipedia/readinglist/LongPressMenu;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 299
    .line 300
    if-eqz p1, :cond_0

    .line 301
    .line 302
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/LongPressMenu;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 307
    .line 308
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-static {p0, v4, p1}, Lorg/wikipedia/util/GeoUtil;->sendGeoIntent(Landroidx/appcompat/app/AppCompatActivity;Landroid/location/Location;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_c
    :goto_1
    return v1

    .line 330
    :pswitch_0
    check-cast p0, Lorg/wikipedia/edit/EditHandler;

    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    const v0, 0x7f0903d6

    .line 340
    .line 341
    .line 342
    if-ne p1, v0, :cond_d

    .line 343
    .line 344
    iget-object p0, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 345
    .line 346
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->PAGE_EDIT_PENCIL:Lorg/wikipedia/Constants$InvokeSource;

    .line 347
    .line 348
    invoke-virtual {p0, v2, p1}, Lorg/wikipedia/page/PageFragment;->verifyBeforeEditingDescription(Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;)V

    .line 349
    .line 350
    .line 351
    :goto_2
    move v1, v3

    .line 352
    goto :goto_3

    .line 353
    :cond_d
    const v0, 0x7f0903d7

    .line 354
    .line 355
    .line 356
    if-ne p1, v0, :cond_e

    .line 357
    .line 358
    invoke-virtual {p0, v1, v2}, Lorg/wikipedia/edit/EditHandler;->startEditingSection(ILjava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_2

    .line 362
    :cond_e
    :goto_3
    return v1

    .line 363
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onMovePageToList(JLorg/wikipedia/history/HistoryEntry;)V
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/feed/topread/TopReadFragment;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual/range {p3 .. p3}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->MOST_READ_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    move-wide v1, p1

    .line 28
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 33
    .line 34
    check-cast p0, Lorg/wikipedia/feed/news/NewsFragment;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual/range {p3 .. p3}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    sget-object v11, Lorg/wikipedia/Constants$InvokeSource;->NEWS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 45
    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v12, 0x1

    .line 48
    move-wide v8, p1

    .line 49
    invoke-static/range {v7 .. v13}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    if-eqz p1, :cond_0

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/places/PlacesFragment;

    .line 14
    .line 15
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-wide v2, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 22
    .line 23
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->PLACES:Lorg/wikipedia/Constants$InvokeSource;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-static/range {v1 .. v7}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :pswitch_1
    if-eqz p1, :cond_1

    .line 36
    .line 37
    check-cast p0, Lorg/wikipedia/feed/view/ListItemView;

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListItemView;->getCallback()Lorg/wikipedia/feed/view/ListItemView$Callback;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 46
    .line 47
    invoke-interface {p0, v0, v1, p2}, Lorg/wikipedia/feed/view/ListItemView$Callback;->onMovePageToList(JLorg/wikipedia/history/HistoryEntry;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_2
    if-eqz p1, :cond_2

    .line 52
    .line 53
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 54
    .line 55
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 56
    .line 57
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    .line 59
    iget-wide v2, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 60
    .line 61
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v6, 0x1

    .line 69
    invoke-static/range {v1 .. v7}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOpenInNewTab(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    check-cast p0, Lorg/wikipedia/places/PlacesFragment;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0, p1, v1}, Lorg/wikipedia/places/PlacesFragment;->onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    check-cast p0, Lorg/wikipedia/feed/view/ListItemView;

    .line 23
    .line 24
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListItemView;->title:Lorg/wikipedia/page/PageTitle;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListItemView;->getCallback()Lorg/wikipedia/feed/view/ListItemView$Callback;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-interface {p0, v0, p1, v1}, Lorg/wikipedia/feed/view/ListItemView$Callback;->onSelectPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :pswitch_2
    invoke-static {p1}, Lorg/wikipedia/util/TabUtil;->openInNewBackgroundTab(Lorg/wikipedia/history/HistoryEntry;)V

    .line 39
    .line 40
    .line 41
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 42
    .line 43
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 44
    .line 45
    const p1, 0x7f120099

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-static {p1, p2}, Lorg/wikipedia/dataclient/Service$-CC;->$default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    invoke-static {p1, p2}, Lorg/wikipedia/dataclient/Service$-CC;->$default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_2
    invoke-static {p1, p2}, Lorg/wikipedia/dataclient/Service$-CC;->$default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOpenLink(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/feed/view/ListItemView;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListItemView;->title:Lorg/wikipedia/page/PageTitle;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/ListItemView;->getCallback()Lorg/wikipedia/feed/view/ListItemView$Callback;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {p0, v0, p1, v1}, Lorg/wikipedia/feed/view/ListItemView$Callback;->onSelectPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 36
    .line 37
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 38
    .line 39
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p0, p1, v0}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 p2, 0x1

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lokio/Path$Companion;->setSyncEnabledWithSetup()V

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    new-instance p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {p0, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    new-array v6, p2, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v5, v6, v3

    .line 62
    .line 63
    const v5, 0x7f1205c4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iput-object v4, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-array v5, p2, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v4, v5, v3

    .line 83
    .line 84
    const v4, 0x7f1205c3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 92
    .line 93
    new-instance v0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;

    .line 94
    .line 95
    invoke-direct {v0, p2, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const p1, 0x7f1207b0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    const p1, 0x7f1207af

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 111
    .line 112
    .line 113
    return v3

    .line 114
    :cond_1
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 121
    .line 122
    .line 123
    const p2, 0x7f12078e

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 127
    .line 128
    .line 129
    const p2, 0x7f12078d

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 133
    .line 134
    .line 135
    new-instance p2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 136
    .line 137
    const/16 v0, 0xa

    .line 138
    .line 139
    invoke-direct {p2, v0, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const p0, 0x7f12078c

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    const p0, 0x7f12078b

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 155
    .line 156
    .line 157
    return v3
.end method

.method public onQueryTextChange(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->binding:Lokio/internal/DefaultSocket;

    .line 14
    .line 15
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonVisibility(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->callback:Lretrofit2/OkHttpCall$1;

    .line 23
    .line 24
    iget v0, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sparse-switch v0, :sswitch_data_1

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->onQueryChange(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :sswitch_0
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->onQueryChange(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :sswitch_1
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->onQueryChange(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :sswitch_2
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->onQueryChange(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :sswitch_3
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->onQueryChange(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void

    .line 72
    :sswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    check-cast p0, Lorg/wikipedia/views/SearchActionProvider;

    .line 76
    .line 77
    iget-object v0, p0, Lorg/wikipedia/views/SearchActionProvider;->binding:Lretrofit2/OkHttpCall$1;

    .line 78
    .line 79
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonVisibility(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lorg/wikipedia/views/SearchActionProvider;->callback:Lorg/wikipedia/views/SearchActionProvider$Callback;

    .line 87
    .line 88
    invoke-interface {p0, p1}, Lorg/wikipedia/views/SearchActionProvider$Callback;->onQueryTextChange(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :sswitch_5
    check-cast p0, Lorg/wikipedia/views/FindInPageActionProvider;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    .line 103
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Landroid/widget/TextView;

    .line 111
    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lorg/wikipedia/views/FindInPageActionProvider;->setFindInPageChevronsEnabled(Z)V

    .line 119
    .line 120
    .line 121
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    .line 122
    .line 123
    if-eqz p0, :cond_1

    .line 124
    .line 125
    invoke-interface {p0, p1}, Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;->onSearchTextChanged(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    return-void

    .line 129
    :sswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    check-cast p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 133
    .line 134
    iget-object v0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 135
    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonVisibility(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object p1, v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->searchQuery:Ljava/lang/String;

    .line 158
    .line 159
    iget-object p0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->templatesSearchAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 160
    .line 161
    if-eqz p0, :cond_2

    .line 162
    .line 163
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 164
    .line 165
    .line 166
    :cond_2
    return-void

    .line 167
    :cond_3
    const-string p0, "binding"

    .line 168
    .line 169
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const/4 p0, 0x0

    .line 173
    throw p0

    .line 174
    nop

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x1a -> :sswitch_5
        0x1b -> :sswitch_4
    .end sparse-switch

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x16 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    :sswitch_0
    return v1

    .line 11
    :sswitch_1
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Landroidx/paging/HintHandler;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v1, 0x23

    .line 34
    .line 35
    if-lt p1, v1, :cond_0

    .line 36
    .line 37
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 38
    .line 39
    invoke-direct {p1, p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v1, 0x1e

    .line 44
    .line 45
    if-lt p1, v1, :cond_1

    .line 46
    .line 47
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 48
    .line 49
    invoke-direct {p1, p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/16 v1, 0x1a

    .line 54
    .line 55
    if-lt p1, v1, :cond_2

    .line 56
    .line 57
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 58
    .line 59
    invoke-direct {p1, p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 64
    .line 65
    invoke-direct {p1, p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p1}, Lcoil3/util/UtilsKt;->hide()V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onRemoveRequest()V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public onSaveClick()V
    .locals 10

    .line 1
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->showingReviewContent()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 27
    .line 28
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 29
    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v2, "machineSuggestions.end"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->loadReviewContent(Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v2, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->composeLogString(Lorg/wikipedia/page/PageTitle;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, ".attempt"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 88
    .line 89
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 94
    .line 95
    const-string v2, "other"

    .line 96
    .line 97
    const-string v3, "saveAttempt"

    .line 98
    .line 99
    invoke-static {v0, v1, v3, v2, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 114
    .line 115
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-nez v0, :cond_2

    .line 120
    .line 121
    const-string v0, ""

    .line 122
    .line 123
    :cond_2
    move-object v5, v0

    .line 124
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getEditComment()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getEditTags()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 133
    .line 134
    const-string v1, "captchaHandler"

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 146
    .line 147
    if-eqz v0, :cond_4

    .line 148
    .line 149
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 150
    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    move-object v0, v2

    .line 157
    :goto_0
    move-object v8, v0

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v2

    .line 163
    :cond_5
    move-object v8, v2

    .line 164
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 165
    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 175
    .line 176
    if-eqz p0, :cond_7

    .line 177
    .line 178
    invoke-virtual {p0}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaWord()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    :cond_6
    move-object v9, v2

    .line 183
    goto :goto_2

    .line 184
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v2

    .line 188
    :goto_2
    invoke-virtual/range {v4 .. v9}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->postDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v2

    .line 196
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v2
.end method

.method public onSelectPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 3

    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    const/4 v1, 0x0

    const v2, 0x7f120099

    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/wikipedia/feed/topread/TopReadFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 157
    invoke-static {p2}, Lorg/wikipedia/util/TabUtil;->openInNewBackgroundTab(Lorg/wikipedia/history/HistoryEntry;)V

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, v2}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    goto :goto_0

    .line 159
    :cond_0
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 161
    :pswitch_0
    check-cast p0, Lorg/wikipedia/feed/news/NewsFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_1

    .line 162
    invoke-static {p2}, Lorg/wikipedia/util/TabUtil;->openInNewBackgroundTab(Lorg/wikipedia/history/HistoryEntry;)V

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, v2}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    goto :goto_1

    .line 164
    :cond_1
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onSelectPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;[Landroid/util/Pair;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const-string v3, "hasTransitionAnim"

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast p0, Lorg/wikipedia/feed/topread/TopReadFragment;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    array-length v0, p3

    .line 29
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, [Landroid/util/Pair;

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v0, p2, v5}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    array-length v0, p3

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 73
    .line 74
    if-ne v0, v2, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    array-length p3, p3

    .line 78
    if-nez p3, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_1
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_0
    check-cast p0, Lorg/wikipedia/feed/news/NewsFragment;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    array-length v0, p3

    .line 96
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, [Landroid/util/Pair;

    .line 101
    .line 102
    invoke-static {p1, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v0, p2, v5}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    array-length v0, p3

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 140
    .line 141
    if-ne v0, v2, :cond_4

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    array-length p3, p3

    .line 145
    if-nez p3, :cond_5

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :goto_3
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onShareRequest()V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget v0, p0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    const v1, 0x7f120259

    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    .line 980
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    return-void

    .line 981
    :pswitch_0
    check-cast p0, Lorg/wikipedia/gallery/GalleryActivity;

    invoke-static {p0, v1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(IILjava/lang/Object;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v0, Lorg/wikipedia/media/AvPlayer;->$r8$classId:I

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    sparse-switch v4, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1d

    .line 24
    .line 25
    sget-object v4, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 26
    .line 27
    if-eqz v4, :cond_1c

    .line 28
    .line 29
    instance-of v4, v3, Lcoil3/Image;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    check-cast v3, Lcoil3/Image;

    .line 34
    .line 35
    invoke-static {v3}, Lcoil3/UriKt;->toBitmap$default(Lcoil3/Image;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    instance-of v4, v3, Landroid/graphics/Bitmap;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    check-cast v3, Landroid/graphics/Bitmap;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 48
    .line 49
    invoke-static {v7, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v9, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    if-eqz v3, :cond_1b

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    if-nez v10, :cond_1b

    .line 73
    .line 74
    sget-object v10, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;

    .line 75
    .line 76
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    sget-object v10, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    .line 80
    .line 81
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    sget-object v10, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    .line 85
    .line 86
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    sget-object v10, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    .line 90
    .line 91
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    sget-object v10, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    .line 95
    .line 96
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    sget-object v10, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    .line 100
    .line 101
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    sget-object v10, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    .line 105
    .line 106
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    mul-int/2addr v11, v10

    .line 118
    const/16 v10, 0x3100

    .line 119
    .line 120
    if-le v11, v10, :cond_2

    .line 121
    .line 122
    const-wide v12, 0x40c8800000000000L    # 12544.0

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    int-to-double v10, v11

    .line 128
    div-double/2addr v12, v10

    .line 129
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 130
    .line 131
    .line 132
    move-result-wide v10

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 135
    .line 136
    :goto_1
    const-wide/16 v12, 0x0

    .line 137
    .line 138
    cmpg-double v12, v10, v12

    .line 139
    .line 140
    const/4 v13, 0x0

    .line 141
    if-gtz v12, :cond_3

    .line 142
    .line 143
    move-object v14, v3

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    int-to-double v14, v12

    .line 150
    mul-double/2addr v14, v10

    .line 151
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v14

    .line 155
    double-to-int v12, v14

    .line 156
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    int-to-double v14, v14

    .line 161
    mul-double/2addr v14, v10

    .line 162
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 163
    .line 164
    .line 165
    move-result-wide v10

    .line 166
    double-to-int v10, v10

    .line 167
    invoke-static {v3, v12, v10, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    move-object v14, v10

    .line 172
    :goto_2
    new-instance v10, Landroidx/palette/graphics/ColorCutQuantizer;

    .line 173
    .line 174
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    .line 175
    .line 176
    .line 177
    move-result v17

    .line 178
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    .line 179
    .line 180
    .line 181
    move-result v21

    .line 182
    mul-int v11, v17, v21

    .line 183
    .line 184
    new-array v15, v11, [I

    .line 185
    .line 186
    const/16 v18, 0x0

    .line 187
    .line 188
    const/16 v19, 0x0

    .line 189
    .line 190
    const/16 v16, 0x0

    .line 191
    .line 192
    move/from16 v20, v17

    .line 193
    .line 194
    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-eqz v11, :cond_4

    .line 202
    .line 203
    const/4 v9, 0x0

    .line 204
    goto :goto_3

    .line 205
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    new-array v11, v11, [Landroidx/palette/graphics/Palette$1;

    .line 210
    .line 211
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    check-cast v9, [Landroidx/palette/graphics/Palette$1;

    .line 216
    .line 217
    :goto_3
    invoke-direct {v10, v15, v9}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([I[Landroidx/palette/graphics/Palette$1;)V

    .line 218
    .line 219
    .line 220
    if-eq v14, v3, :cond_5

    .line 221
    .line 222
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    .line 224
    .line 225
    :cond_5
    new-instance v3, Landroid/util/SparseBooleanArray;

    .line 226
    .line 227
    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 228
    .line 229
    .line 230
    new-instance v9, Landroidx/collection/ArrayMap;

    .line 231
    .line 232
    invoke-direct {v9, v13}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 233
    .line 234
    .line 235
    iget-object v10, v10, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    const/high16 v12, -0x80000000

    .line 242
    .line 243
    move v14, v13

    .line 244
    const/4 v15, 0x0

    .line 245
    :goto_4
    if-ge v14, v11, :cond_7

    .line 246
    .line 247
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v16

    .line 251
    const/16 v17, 0x0

    .line 252
    .line 253
    move-object/from16 v5, v16

    .line 254
    .line 255
    check-cast v5, Landroidx/palette/graphics/Palette$Swatch;

    .line 256
    .line 257
    const/high16 v16, 0x41000000    # 8.0f

    .line 258
    .line 259
    iget v6, v5, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 260
    .line 261
    if-le v6, v12, :cond_6

    .line 262
    .line 263
    move-object v15, v5

    .line 264
    move v12, v6

    .line 265
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_7
    const/high16 v16, 0x41000000    # 8.0f

    .line 269
    .line 270
    const/16 v17, 0x0

    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    move v6, v13

    .line 277
    :goto_5
    if-ge v6, v5, :cond_15

    .line 278
    .line 279
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    check-cast v11, Landroidx/palette/graphics/Target;

    .line 284
    .line 285
    iget-object v12, v11, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 286
    .line 287
    iget-object v14, v11, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 288
    .line 289
    move/from16 p0, v13

    .line 290
    .line 291
    array-length v13, v12

    .line 292
    const/16 v18, 0x0

    .line 293
    .line 294
    move/from16 v8, p0

    .line 295
    .line 296
    move/from16 v20, v18

    .line 297
    .line 298
    const/16 v19, 0x2

    .line 299
    .line 300
    :goto_6
    if-ge v8, v13, :cond_9

    .line 301
    .line 302
    aget v21, v12, v8

    .line 303
    .line 304
    cmpl-float v22, v21, v18

    .line 305
    .line 306
    if-lez v22, :cond_8

    .line 307
    .line 308
    add-float v20, v20, v21

    .line 309
    .line 310
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_9
    cmpl-float v8, v20, v18

    .line 314
    .line 315
    if-eqz v8, :cond_b

    .line 316
    .line 317
    array-length v8, v12

    .line 318
    move/from16 v13, p0

    .line 319
    .line 320
    :goto_7
    if-ge v13, v8, :cond_b

    .line 321
    .line 322
    aget v21, v12, v13

    .line 323
    .line 324
    cmpl-float v22, v21, v18

    .line 325
    .line 326
    if-lez v22, :cond_a

    .line 327
    .line 328
    div-float v21, v21, v20

    .line 329
    .line 330
    aput v21, v12, v13

    .line 331
    .line 332
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    move/from16 v12, p0

    .line 340
    .line 341
    move-object/from16 v13, v17

    .line 342
    .line 343
    move/from16 v20, v18

    .line 344
    .line 345
    :goto_8
    if-ge v12, v8, :cond_13

    .line 346
    .line 347
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v21

    .line 351
    move/from16 v22, v7

    .line 352
    .line 353
    move-object/from16 v7, v21

    .line 354
    .line 355
    check-cast v7, Landroidx/palette/graphics/Palette$Swatch;

    .line 356
    .line 357
    invoke-virtual {v7}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 358
    .line 359
    .line 360
    move-result-object v21

    .line 361
    aget v23, v21, v22

    .line 362
    .line 363
    move-object/from16 p3, v4

    .line 364
    .line 365
    iget-object v4, v11, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 366
    .line 367
    aget v24, v14, p0

    .line 368
    .line 369
    cmpl-float v24, v23, v24

    .line 370
    .line 371
    if-ltz v24, :cond_11

    .line 372
    .line 373
    aget v24, v14, v19

    .line 374
    .line 375
    cmpg-float v23, v23, v24

    .line 376
    .line 377
    if-gtz v23, :cond_11

    .line 378
    .line 379
    aget v21, v21, v19

    .line 380
    .line 381
    aget v23, v4, p0

    .line 382
    .line 383
    cmpl-float v23, v21, v23

    .line 384
    .line 385
    if-ltz v23, :cond_11

    .line 386
    .line 387
    aget v23, v4, v19

    .line 388
    .line 389
    cmpg-float v21, v21, v23

    .line 390
    .line 391
    if-gtz v21, :cond_11

    .line 392
    .line 393
    move-object/from16 v21, v4

    .line 394
    .line 395
    iget v4, v7, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 396
    .line 397
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-nez v4, :cond_11

    .line 402
    .line 403
    invoke-virtual {v7}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    move-object/from16 v23, v4

    .line 408
    .line 409
    if-eqz v15, :cond_c

    .line 410
    .line 411
    iget v4, v15, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 412
    .line 413
    :goto_9
    move/from16 v24, v5

    .line 414
    .line 415
    goto :goto_a

    .line 416
    :cond_c
    move/from16 v4, v22

    .line 417
    .line 418
    goto :goto_9

    .line 419
    :goto_a
    iget-object v5, v11, Landroidx/palette/graphics/Target;->mWeights:[F

    .line 420
    .line 421
    aget v25, v5, p0

    .line 422
    .line 423
    cmpl-float v26, v25, v18

    .line 424
    .line 425
    const/high16 v27, 0x3f800000    # 1.0f

    .line 426
    .line 427
    if-lez v26, :cond_d

    .line 428
    .line 429
    aget v26, v23, v22

    .line 430
    .line 431
    aget v28, v14, v22

    .line 432
    .line 433
    sub-float v26, v26, v28

    .line 434
    .line 435
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    .line 436
    .line 437
    .line 438
    move-result v26

    .line 439
    sub-float v26, v27, v26

    .line 440
    .line 441
    mul-float v26, v26, v25

    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_d
    move/from16 v26, v18

    .line 445
    .line 446
    :goto_b
    aget v25, v5, v22

    .line 447
    .line 448
    cmpl-float v28, v25, v18

    .line 449
    .line 450
    if-lez v28, :cond_e

    .line 451
    .line 452
    aget v23, v23, v19

    .line 453
    .line 454
    aget v21, v21, v22

    .line 455
    .line 456
    sub-float v23, v23, v21

    .line 457
    .line 458
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    .line 459
    .line 460
    .line 461
    move-result v21

    .line 462
    sub-float v27, v27, v21

    .line 463
    .line 464
    mul-float v27, v27, v25

    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_e
    move/from16 v27, v18

    .line 468
    .line 469
    :goto_c
    aget v5, v5, v19

    .line 470
    .line 471
    cmpl-float v21, v5, v18

    .line 472
    .line 473
    if-lez v21, :cond_f

    .line 474
    .line 475
    move/from16 v21, v5

    .line 476
    .line 477
    iget v5, v7, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    .line 478
    .line 479
    int-to-float v5, v5

    .line 480
    int-to-float v4, v4

    .line 481
    div-float/2addr v5, v4

    .line 482
    mul-float v5, v5, v21

    .line 483
    .line 484
    goto :goto_d

    .line 485
    :cond_f
    move/from16 v5, v18

    .line 486
    .line 487
    :goto_d
    add-float v26, v26, v27

    .line 488
    .line 489
    add-float v26, v26, v5

    .line 490
    .line 491
    if-eqz v13, :cond_10

    .line 492
    .line 493
    cmpl-float v4, v26, v20

    .line 494
    .line 495
    if-lez v4, :cond_12

    .line 496
    .line 497
    :cond_10
    move-object v13, v7

    .line 498
    move/from16 v20, v26

    .line 499
    .line 500
    goto :goto_e

    .line 501
    :cond_11
    move/from16 v24, v5

    .line 502
    .line 503
    :cond_12
    :goto_e
    add-int/lit8 v12, v12, 0x1

    .line 504
    .line 505
    move-object/from16 v4, p3

    .line 506
    .line 507
    move/from16 v7, v22

    .line 508
    .line 509
    move/from16 v5, v24

    .line 510
    .line 511
    goto/16 :goto_8

    .line 512
    .line 513
    :cond_13
    move-object/from16 p3, v4

    .line 514
    .line 515
    move/from16 v24, v5

    .line 516
    .line 517
    move/from16 v22, v7

    .line 518
    .line 519
    if-eqz v13, :cond_14

    .line 520
    .line 521
    iget v4, v13, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 522
    .line 523
    move/from16 v5, v22

    .line 524
    .line 525
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 526
    .line 527
    .line 528
    :cond_14
    invoke-virtual {v9, v11, v13}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    add-int/lit8 v6, v6, 0x1

    .line 532
    .line 533
    const/4 v7, 0x1

    .line 534
    move/from16 v13, p0

    .line 535
    .line 536
    move-object/from16 v4, p3

    .line 537
    .line 538
    move/from16 v5, v24

    .line 539
    .line 540
    goto/16 :goto_5

    .line 541
    .line 542
    :cond_15
    move/from16 p0, v13

    .line 543
    .line 544
    const/16 v19, 0x2

    .line 545
    .line 546
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    const v4, 0x7f0600a4

    .line 554
    .line 555
    .line 556
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    sget-object v4, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    .line 561
    .line 562
    invoke-virtual {v9, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    check-cast v4, Landroidx/palette/graphics/Palette$Swatch;

    .line 567
    .line 568
    if-eqz v4, :cond_16

    .line 569
    .line 570
    iget v3, v4, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 571
    .line 572
    :cond_16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    const v5, 0x7f0600a1

    .line 577
    .line 578
    .line 579
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    sget-object v5, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    .line 584
    .line 585
    invoke-virtual {v9, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v5

    .line 589
    check-cast v5, Landroidx/palette/graphics/Palette$Swatch;

    .line 590
    .line 591
    if-eqz v5, :cond_17

    .line 592
    .line 593
    iget v4, v5, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 594
    .line 595
    :cond_17
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 596
    .line 597
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    iget-object v5, v5, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 602
    .line 603
    invoke-virtual {v5}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 604
    .line 605
    .line 606
    move-result v5

    .line 607
    if-eqz v5, :cond_18

    .line 608
    .line 609
    const v5, 0x3e99999a    # 0.3f

    .line 610
    .line 611
    .line 612
    const/high16 v6, -0x1000000

    .line 613
    .line 614
    invoke-static {v3, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    invoke-static {v4, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    :cond_18
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 623
    .line 624
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 625
    .line 626
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 631
    .line 632
    .line 633
    move-result-object v4

    .line 634
    move/from16 v7, v19

    .line 635
    .line 636
    new-array v8, v7, [Ljava/lang/Integer;

    .line 637
    .line 638
    aput-object v3, v8, p0

    .line 639
    .line 640
    const/16 v22, 0x1

    .line 641
    .line 642
    aput-object v4, v8, v22

    .line 643
    .line 644
    new-array v3, v7, [I

    .line 645
    .line 646
    move/from16 v13, p0

    .line 647
    .line 648
    :goto_f
    if-ge v13, v7, :cond_19

    .line 649
    .line 650
    aget-object v4, v8, v13

    .line 651
    .line 652
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 653
    .line 654
    .line 655
    move-result v4

    .line 656
    aput v4, v3, v13

    .line 657
    .line 658
    add-int/lit8 v13, v13, 0x1

    .line 659
    .line 660
    const/4 v7, 0x2

    .line 661
    goto :goto_f

    .line 662
    :cond_19
    invoke-direct {v5, v6, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 663
    .line 664
    .line 665
    iget-object v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 666
    .line 667
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 668
    .line 669
    .line 670
    iget-object v3, v3, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsErrorList:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v3, Landroid/widget/FrameLayout;

    .line 673
    .line 674
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 675
    .line 676
    .line 677
    iget-object v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 678
    .line 679
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    iget-object v3, v3, Lorg/maplibre/android/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v3, Landroid/widget/ImageView;

    .line 685
    .line 686
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 694
    .line 695
    iget-object v4, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 696
    .line 697
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    iget-object v4, v4, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsErrorList:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v4, Landroid/widget/FrameLayout;

    .line 703
    .line 704
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    int-to-float v4, v4

    .line 709
    iget-object v5, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 710
    .line 711
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    iget-object v5, v5, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsErrorList:Ljava/lang/Object;

    .line 715
    .line 716
    check-cast v5, Landroid/widget/FrameLayout;

    .line 717
    .line 718
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 719
    .line 720
    .line 721
    move-result v5

    .line 722
    int-to-float v5, v5

    .line 723
    div-float/2addr v4, v5

    .line 724
    int-to-float v1, v1

    .line 725
    int-to-float v2, v2

    .line 726
    div-float/2addr v1, v2

    .line 727
    cmpl-float v2, v1, v4

    .line 728
    .line 729
    if-lez v2, :cond_1a

    .line 730
    .line 731
    invoke-static/range {v16 .. v16}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 736
    .line 737
    .line 738
    goto :goto_10

    .line 739
    :cond_1a
    iget-object v2, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 740
    .line 741
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    .line 743
    .line 744
    iget-object v2, v2, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsErrorList:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast v2, Landroid/widget/FrameLayout;

    .line 747
    .line 748
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 749
    .line 750
    .line 751
    move-result v2

    .line 752
    int-to-float v2, v2

    .line 753
    mul-float/2addr v2, v1

    .line 754
    invoke-static/range {v16 .. v16}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    iget-object v4, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 759
    .line 760
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    iget-object v4, v4, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsErrorList:Ljava/lang/Object;

    .line 764
    .line 765
    check-cast v4, Landroid/widget/FrameLayout;

    .line 766
    .line 767
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    const/16 v19, 0x2

    .line 772
    .line 773
    div-int/lit8 v4, v4, 0x2

    .line 774
    .line 775
    float-to-int v2, v2

    .line 776
    div-int/lit8 v2, v2, 0x2

    .line 777
    .line 778
    sub-int/2addr v4, v2

    .line 779
    add-int/2addr v4, v1

    .line 780
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 781
    .line 782
    .line 783
    :goto_10
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 784
    .line 785
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    iget-object v0, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/lang/Object;

    .line 789
    .line 790
    check-cast v0, Landroid/widget/ImageView;

    .line 791
    .line 792
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    .line 794
    .line 795
    goto :goto_11

    .line 796
    :cond_1b
    const-string v0, "Bitmap is not valid"

    .line 797
    .line 798
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    goto :goto_11

    .line 802
    :cond_1c
    const-string v0, "ImageService has not been set, call ImageService.setImplementation() before using ImageService"

    .line 803
    .line 804
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    :cond_1d
    :goto_11
    return-void

    .line 808
    :sswitch_0
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 809
    .line 810
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->loadedImagesForShare:I

    .line 811
    .line 812
    const/16 v22, 0x1

    .line 813
    .line 814
    add-int/lit8 v1, v1, 0x1

    .line 815
    .line 816
    iput v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->loadedImagesForShare:I

    .line 817
    .line 818
    return-void

    .line 819
    :sswitch_1
    const/high16 v16, 0x41000000    # 8.0f

    .line 820
    .line 821
    const/16 v17, 0x0

    .line 822
    .line 823
    check-cast v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 824
    .line 825
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 826
    .line 827
    .line 828
    move-result v3

    .line 829
    if-nez v3, :cond_26

    .line 830
    .line 831
    iget-object v3, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 832
    .line 833
    const-string v4, "binding"

    .line 834
    .line 835
    if-eqz v3, :cond_25

    .line 836
    .line 837
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentPlacesBinding;->backButton:Landroid/widget/ImageView;

    .line 838
    .line 839
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 847
    .line 848
    iget-object v5, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 849
    .line 850
    if-eqz v5, :cond_24

    .line 851
    .line 852
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentPlacesBinding;->langCodeButton:Landroid/widget/FrameLayout;

    .line 853
    .line 854
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 855
    .line 856
    .line 857
    move-result v5

    .line 858
    int-to-float v5, v5

    .line 859
    iget-object v6, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 860
    .line 861
    if-eqz v6, :cond_23

    .line 862
    .line 863
    iget-object v6, v6, Lorg/wikipedia/databinding/FragmentPlacesBinding;->langCodeButton:Landroid/widget/FrameLayout;

    .line 864
    .line 865
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 866
    .line 867
    .line 868
    move-result v6

    .line 869
    int-to-float v6, v6

    .line 870
    div-float/2addr v5, v6

    .line 871
    int-to-float v1, v1

    .line 872
    int-to-float v2, v2

    .line 873
    div-float/2addr v1, v2

    .line 874
    cmpl-float v2, v1, v5

    .line 875
    .line 876
    if-lez v2, :cond_1e

    .line 877
    .line 878
    invoke-static/range {v16 .. v16}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 883
    .line 884
    .line 885
    goto :goto_12

    .line 886
    :cond_1e
    iget-object v2, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 887
    .line 888
    if-eqz v2, :cond_22

    .line 889
    .line 890
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentPlacesBinding;->langCodeButton:Landroid/widget/FrameLayout;

    .line 891
    .line 892
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 893
    .line 894
    .line 895
    move-result v2

    .line 896
    int-to-float v2, v2

    .line 897
    mul-float/2addr v2, v1

    .line 898
    invoke-static/range {v16 .. v16}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    iget-object v5, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 903
    .line 904
    if-eqz v5, :cond_21

    .line 905
    .line 906
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentPlacesBinding;->langCodeButton:Landroid/widget/FrameLayout;

    .line 907
    .line 908
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 909
    .line 910
    .line 911
    move-result v5

    .line 912
    const/16 v19, 0x2

    .line 913
    .line 914
    div-int/lit8 v5, v5, 0x2

    .line 915
    .line 916
    float-to-int v2, v2

    .line 917
    div-int/lit8 v2, v2, 0x2

    .line 918
    .line 919
    sub-int/2addr v5, v2

    .line 920
    add-int/2addr v5, v1

    .line 921
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 922
    .line 923
    .line 924
    :goto_12
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 925
    .line 926
    if-eqz v1, :cond_20

    .line 927
    .line 928
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->backButton:Landroid/widget/ImageView;

    .line 929
    .line 930
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    .line 932
    .line 933
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 934
    .line 935
    if-eqz v0, :cond_1f

    .line 936
    .line 937
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyContainer:Landroid/view/View;

    .line 938
    .line 939
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 940
    .line 941
    const/16 v1, 0x8

    .line 942
    .line 943
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 944
    .line 945
    .line 946
    goto :goto_13

    .line 947
    :cond_1f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    throw v17

    .line 951
    :cond_20
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    throw v17

    .line 955
    :cond_21
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    throw v17

    .line 959
    :cond_22
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    throw v17

    .line 963
    :cond_23
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    throw v17

    .line 967
    :cond_24
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    throw v17

    .line 971
    :cond_25
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    throw v17

    .line 975
    :cond_26
    :goto_13
    return-void

    .line 976
    nop

    .line 977
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public onSuccess(Lcoil3/request/ImageRequest;Lcoil3/request/SuccessResult;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 977
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    check-cast p0, Lorg/wikipedia/views/imageservice/ImageLoadListener;

    .line 978
    iget-object p1, p2, Lcoil3/request/SuccessResult;->image:Lcoil3/Image;

    .line 979
    invoke-interface {p1}, Lcoil3/Image;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcoil3/Image;->getHeight()I

    move-result p1

    invoke-interface {p0, v0, p1, p2}, Lorg/wikipedia/views/imageservice/ImageLoadListener;->onSuccess(IILjava/lang/Object;)V

    return-void
.end method

.method public onViewClick(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v1, v1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 8
    .line 9
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 10
    .line 11
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x0

    .line 23
    if-ge v2, v3, :cond_0

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object v0, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->requestAddLanguage:Landroidx/fragment/app/Fragment$10;

    .line 28
    .line 29
    sget v2, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->$r8$clinit:I

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 36
    .line 37
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 46
    .line 47
    if-eqz v2, :cond_f

    .line 48
    .line 49
    if-eq v0, v2, :cond_c

    .line 50
    .line 51
    iget-object v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 52
    .line 53
    if-eqz v2, :cond_b

    .line 54
    .line 55
    if-eq v0, v2, :cond_8

    .line 56
    .line 57
    iget-object v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 58
    .line 59
    if-eqz v2, :cond_7

    .line 60
    .line 61
    if-eq v0, v2, :cond_5

    .line 62
    .line 63
    iget-object v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->imageRecommendationsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    if-eq v0, v2, :cond_3

    .line 68
    .line 69
    iget-object v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->vandalismPatrolTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    if-eq v0, v2, :cond_1

    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    const/16 v17, 0x3ff4

    .line 89
    .line 90
    const-string v5, "edit_home"

    .line 91
    .line 92
    const-string v6, "edit_patrol_click"

    .line 93
    .line 94
    const/4 v8, 0x0

    .line 95
    const/4 v9, 0x0

    .line 96
    const/4 v10, 0x0

    .line 97
    const/4 v11, 0x0

    .line 98
    const/4 v12, 0x0

    .line 99
    const/4 v13, 0x0

    .line 100
    const/4 v14, 0x0

    .line 101
    const/4 v15, 0x0

    .line 102
    invoke-static/range {v5 .. v17}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    sget v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsActivity;->$r8$clinit:I

    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v2, Landroid/content/Intent;

    .line 112
    .line 113
    const-class v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsActivity;

    .line 114
    .line 115
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    const-string/jumbo v0, "vandalismPatrolTask"

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v4

    .line 129
    :cond_3
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 134
    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const/16 v17, 0x3ff4

    .line 142
    .line 143
    const-string v5, "edit_home"

    .line 144
    .line 145
    const-string v6, "image_add_click"

    .line 146
    .line 147
    const/4 v8, 0x0

    .line 148
    const/4 v9, 0x0

    .line 149
    const/4 v10, 0x0

    .line 150
    const/4 v11, 0x0

    .line 151
    const/4 v12, 0x0

    .line 152
    const/4 v13, 0x0

    .line 153
    const/4 v14, 0x0

    .line 154
    const/4 v15, 0x0

    .line 155
    invoke-static/range {v5 .. v17}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    sget v0, Lorg/wikipedia/suggestededits/SuggestionsActivity;->$r8$clinit:I

    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->IMAGE_RECOMMENDATIONS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 165
    .line 166
    invoke-static {v0, v2}, Lokhttp3/Cookie$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v1, v0, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_4
    const-string v0, "imageRecommendationsTask"

    .line 175
    .line 176
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v4

    .line 180
    :cond_5
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 185
    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    const/16 v16, 0x0

    .line 191
    .line 192
    const/16 v17, 0x3ff4

    .line 193
    .line 194
    const-string v5, "edit_home"

    .line 195
    .line 196
    const-string v6, "image_tag_add_click"

    .line 197
    .line 198
    const/4 v8, 0x0

    .line 199
    const/4 v9, 0x0

    .line 200
    const/4 v10, 0x0

    .line 201
    const/4 v11, 0x0

    .line 202
    const/4 v12, 0x0

    .line 203
    const/4 v13, 0x0

    .line 204
    const/4 v14, 0x0

    .line 205
    const/4 v15, 0x0

    .line 206
    invoke-static/range {v5 .. v17}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 210
    .line 211
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShowImageTagsOnboarding()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    iget-object v0, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->requestAddImageTags:Landroidx/fragment/app/Fragment$10;

    .line 218
    .line 219
    sget v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;->$r8$clinit:I

    .line 220
    .line 221
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    new-instance v2, Landroid/content/Intent;

    .line 226
    .line 227
    const-class v3, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;

    .line 228
    .line 229
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_6
    sget v0, Lorg/wikipedia/suggestededits/SuggestionsActivity;->$r8$clinit:I

    .line 237
    .line 238
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 243
    .line 244
    invoke-static {v0, v2}, Lokhttp3/Cookie$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Landroid/content/Intent;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v1, v0, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_7
    const-string v0, "addImageTagsTask"

    .line 253
    .line 254
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v4

    .line 258
    :cond_8
    if-eqz p2, :cond_9

    .line 259
    .line 260
    const-string v0, "caption_translate_click"

    .line 261
    .line 262
    :goto_0
    move-object v6, v0

    .line 263
    goto :goto_1

    .line 264
    :cond_9
    const-string v0, "caption_add_click"

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :goto_1
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 272
    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    const/16 v17, 0x3ff4

    .line 280
    .line 281
    const-string v5, "edit_home"

    .line 282
    .line 283
    const/4 v8, 0x0

    .line 284
    const/4 v9, 0x0

    .line 285
    const/4 v10, 0x0

    .line 286
    const/4 v11, 0x0

    .line 287
    const/4 v12, 0x0

    .line 288
    const/4 v13, 0x0

    .line 289
    const/4 v14, 0x0

    .line 290
    const/4 v15, 0x0

    .line 291
    invoke-static/range {v5 .. v17}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    sget v0, Lorg/wikipedia/suggestededits/SuggestionsActivity;->$r8$clinit:I

    .line 295
    .line 296
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    if-eqz p2, :cond_a

    .line 301
    .line 302
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_a
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 306
    .line 307
    :goto_2
    invoke-static {v0, v2}, Lokhttp3/Cookie$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v1, v0, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :cond_b
    const-string v0, "addImageCaptionsTask"

    .line 316
    .line 317
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v4

    .line 321
    :cond_c
    if-eqz p2, :cond_d

    .line 322
    .line 323
    const-string v0, "desc_translate_click"

    .line 324
    .line 325
    :goto_3
    move-object v6, v0

    .line 326
    goto :goto_4

    .line 327
    :cond_d
    const-string v0, "desc_add_click"

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :goto_4
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    iget v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 335
    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    const/16 v16, 0x0

    .line 341
    .line 342
    const/16 v17, 0x3ff4

    .line 343
    .line 344
    const-string v5, "edit_home"

    .line 345
    .line 346
    const/4 v8, 0x0

    .line 347
    const/4 v9, 0x0

    .line 348
    const/4 v10, 0x0

    .line 349
    const/4 v11, 0x0

    .line 350
    const/4 v12, 0x0

    .line 351
    const/4 v13, 0x0

    .line 352
    const/4 v14, 0x0

    .line 353
    const/4 v15, 0x0

    .line 354
    invoke-static/range {v5 .. v17}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    sget v0, Lorg/wikipedia/suggestededits/SuggestionsActivity;->$r8$clinit:I

    .line 358
    .line 359
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz p2, :cond_e

    .line 364
    .line 365
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_e
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 369
    .line 370
    :goto_5
    invoke-static {v0, v2}, Lokhttp3/Cookie$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Landroid/content/Intent;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v1, v0, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :cond_f
    const-string v0, "addDescriptionsTask"

    .line 379
    .line 380
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v4
.end method

.method public passwordResetPrompt(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public success(Lorg/wikipedia/login/LoginResult;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lorg/wikipedia/login/ResetPasswordActivity;

    .line 7
    .line 8
    sget v0, Lorg/wikipedia/login/ResetPasswordActivity;->$r8$clinit:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lorg/wikipedia/login/ResetPasswordActivity;->showProgressBar$3(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "PASS"

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v1, "accountAuthenticatorResponse"

    .line 32
    .line 33
    const-class v2, Landroid/accounts/AccountAuthenticatorResponse;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/os/Parcelable;

    .line 40
    .line 41
    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lokhttp3/Headers$Companion;->updateAccount(Landroid/accounts/AccountAuthenticatorResponse;Lorg/wikipedia/login/LoginResult;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Landroidx/paging/HintHandler;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    const/16 v2, 0x23

    .line 65
    .line 66
    if-lt v0, v2, :cond_0

    .line 67
    .line 68
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 69
    .line 70
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/16 v2, 0x1e

    .line 75
    .line 76
    if-lt v0, v2, :cond_1

    .line 77
    .line 78
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 79
    .line 80
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/16 v2, 0x1a

    .line 85
    .line 86
    if-lt v0, v2, :cond_2

    .line 87
    .line 88
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 89
    .line 90
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 95
    .line 96
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-virtual {v0}, Lcoil3/util/UtilsKt;->hide()V

    .line 100
    .line 101
    .line 102
    const/4 p1, -0x1

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    const-string v2, "FAIL"

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    iget-object p1, p1, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 124
    .line 125
    .line 126
    const-string p0, "Login failed with result "

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    sget-object p1, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 133
    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p0, v0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void
.end method

.method public uiPrompt(Lorg/wikipedia/login/LoginResult;Lorg/wikipedia/login/LoginFailedException;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lorg/wikipedia/login/ResetPasswordActivity;

    .line 7
    .line 8
    sget p3, Lorg/wikipedia/login/ResetPasswordActivity;->$r8$clinit:I

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-virtual {p0, p3}, Lorg/wikipedia/login/ResetPasswordActivity;->showProgressBar$3(Z)V

    .line 12
    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    if-nez p4, :cond_0

    .line 17
    .line 18
    move-object p4, v0

    .line 19
    :cond_0
    iput-object p4, p0, Lorg/wikipedia/login/ResetPasswordActivity;->firstStepToken:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->uiPromptResult:Lorg/wikipedia/login/LoginResult;

    .line 22
    .line 23
    iget-object p4, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const-string v2, "binding"

    .line 27
    .line 28
    if-eqz p4, :cond_9

    .line 29
    .line 30
    iget-object p4, p4, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 33
    .line 34
    instance-of p1, p1, Lorg/wikipedia/login/LoginEmailAuthResult;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const p1, 0x7f12034b

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const p1, 0x7f120346

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p4, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 53
    .line 54
    if-eqz p1, :cond_8

    .line 55
    .line 56
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 64
    .line 65
    if-eqz p1, :cond_7

    .line 66
    .line 67
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 81
    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    new-instance p4, Landroidx/paging/HintHandler;

    .line 103
    .line 104
    invoke-direct {p4, p3}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    const/16 v0, 0x23

    .line 110
    .line 111
    if-lt p3, v0, :cond_3

    .line 112
    .line 113
    new-instance p3, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 114
    .line 115
    invoke-direct {p3, p1, p4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    const/16 v0, 0x1e

    .line 120
    .line 121
    if-lt p3, v0, :cond_4

    .line 122
    .line 123
    new-instance p3, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 124
    .line 125
    invoke-direct {p3, p1, p4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    const/16 v0, 0x1a

    .line 130
    .line 131
    if-lt p3, v0, :cond_5

    .line 132
    .line 133
    new-instance p3, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 134
    .line 135
    invoke-direct {p3, p1, p4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    new-instance p3, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 140
    .line 141
    invoke-direct {p3, p1, p4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-virtual {p3}, Lcoil3/util/UtilsKt;->hide()V

    .line 145
    .line 146
    .line 147
    invoke-static {p0, p2}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v1

    .line 155
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1

    .line 163
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v1
.end method
