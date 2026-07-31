.class public final Lorg/wikipedia/page/shareafact/ShareHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/LongPressMenu$Callback;
.implements Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;
.implements Lretrofit2/Converter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bridge:Ljava/lang/Object;

.field public final fragment:Ljava/lang/Object;

.field public webViewActionMode:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 33
    iput p4, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object v1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v0

    .line 22
    :goto_0
    iput-object v1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Ljava/lang/Object;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    iput-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Ljava/lang/Object;

    return-void
.end method

.method private final onRemoveRequest$org$wikipedia$page$PageContainerLongPressHandler()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onShareRequest$org$wikipedia$page$PageContainerLongPressHandler()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lretrofit2/OptionalConverterFactory$OptionalConverter;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lokhttp3/MediaType;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    iget-object v0, v0, Lretrofit2/OptionalConverterFactory$OptionalConverter;->delegate:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lkotlinx/serialization/json/Json;

    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget p1, Lokhttp3/RequestBody;->$r8$clinit:I

    .line 22
    .line 23
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    sget-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Lkotlin/text/Regex;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {v1, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "; charset=utf-8"

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :try_start_0
    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    move-object v1, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object p1, v2

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    array-length p1, p0

    .line 66
    array-length v0, p0

    .line 67
    int-to-long v2, v0

    .line 68
    const-wide/16 v4, 0x0

    .line 69
    .line 70
    int-to-long v6, p1

    .line 71
    invoke-static/range {v2 .. v7}, Lokhttp3/internal/_UtilCommonKt;->checkOffsetAndCount(JJJ)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 75
    .line 76
    invoke-direct {v0, v1, p1, p0}, Lokhttp3/RequestBody$Companion$toRequestBody$3;-><init>(Lokhttp3/MediaType;I[B)V

    .line 77
    .line 78
    .line 79
    return-object v0
.end method

.method public onAddRequest(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/page/PageFragment;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

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
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->CONTEXT_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 25
    .line 26
    invoke-static {p0, p1, p2, v0, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    check-cast v1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 31
    .line 32
    invoke-virtual {v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->savedPages:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getCurrentScreenName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-boolean p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/4 v5, 0x0

    .line 64
    const/16 v3, 0x3d8

    .line 65
    .line 66
    const-string v6, "save_click"

    .line 67
    .line 68
    const-string v7, "game_play"

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-static/range {v3 .. v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 84
    .line 85
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_GAME_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 86
    .line 87
    invoke-static {p1, p0, p2, v0, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

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
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Lorg/wikipedia/page/PageFragment;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-wide v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 22
    .line 23
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->CONTEXT_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v7, 0x1

    .line 31
    invoke-static/range {v2 .. v8}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :pswitch_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    check-cast v1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 38
    .line 39
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v5, p0

    .line 42
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 43
    .line 44
    sget-object p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-wide v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 51
    .line 52
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_GAME_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v7, 0x1

    .line 56
    invoke-static/range {v2 .. v8}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOpenInNewTab(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0, p1}, Lorg/wikipedia/page/PageFragment;->openInNewBackgroundTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 22
    .line 23
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, p1, v1}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lorg/wikipedia/dataclient/Service$-CC;->$default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-static {p1, p2}, Lorg/wikipedia/dataclient/Service$-CC;->$default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOpenLink(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 24
    .line 25
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1, v1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 32
    .line 33
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v0, p1, v1, v2}, Lorg/wikipedia/login/LoginClient;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRemoveRequest()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->savedPages:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onShareRequest()V
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getCurrentScreenName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-boolean p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/16 v1, 0x3d8

    .line 31
    .line 32
    const-string v4, "share_click"

    .line 33
    .line 34
    const-string v5, "game_play"

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-static/range {v1 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 12
    .line 13
    new-instance v2, Lcoil3/RealImageLoader$execute$result$1;

    .line 14
    .line 15
    iget-object v3, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 18
    .line 19
    iget-object v4, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v6, v4

    .line 22
    check-cast v6, Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v7, p0

    .line 27
    check-cast v7, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    const/16 v9, 0x11

    .line 31
    .line 32
    move-object v4, p1

    .line 33
    move-object v5, p2

    .line 34
    invoke-direct/range {v2 .. v9}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x2

    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-static {v0, v1, p1, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public showWiktionaryDefinition(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lorg/wikipedia/wiktionary/WiktionaryDialog;

    .line 17
    .line 18
    invoke-direct {v1}, Lorg/wikipedia/wiktionary/WiktionaryDialog;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lkotlin/Pair;

    .line 22
    .line 23
    const-string v3, "title"

    .line 24
    .line 25
    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lkotlin/Pair;

    .line 29
    .line 30
    const-string v3, "text"

    .line 31
    .line 32
    invoke-direct {v0, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    new-array p1, p1, [Lkotlin/Pair;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput-object v2, p1, v3

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    aput-object v0, p1, v2

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment;->showBottomSheet(Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
