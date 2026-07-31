.class public final synthetic Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 7
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final invoke$org$wikipedia$readinglist$recommended$RecommendedReadingListInterestsViewModel$loadItems$2$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 14
    .line 15
    if-eq p0, p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private final invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/wikipedia/search/SearchResult;

    .line 2
    .line 3
    iget-object p0, p1, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p1, p1, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "#"

    .line 14
    .line 15
    invoke-static {p0, v0, p1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private final invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/wikipedia/search/SearchResult;

    .line 2
    .line 3
    iget-object p0, p1, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private final invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/wikipedia/search/SemanticSearchResult;

    .line 2
    .line 3
    iget-object p0, p1, Lorg/wikipedia/search/SemanticSearchResult;->title:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method private final invoke$org$wikipedia$search$db$RecentSearchDao_Impl$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "SELECT * FROM RecentSearch ORDER BY timestamp DESC"

    .line 7
    .line 8
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :try_start_0
    const-string p1, "text"

    .line 13
    .line 14
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const-string v0, "timestamp"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :goto_1
    invoke-static {v3}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    new-instance v4, Lorg/wikipedia/search/db/RecentSearch;

    .line 62
    .line 63
    invoke-direct {v4, v2, v3}, Lorg/wikipedia/search/db/RecentSearch;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v0, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :goto_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method private final invoke$org$wikipedia$search$db$RecentSearchDao_Impl$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "DELETE FROM RecentSearch"

    .line 7
    .line 8
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private final invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroidx/compose/animation/EnterTransitionImpl;->None:Landroidx/compose/animation/EnterTransitionImpl;

    .line 7
    .line 8
    return-object p0
.end method

.method private final invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    .line 7
    .line 8
    return-object p0
.end method

.method private final invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroidx/compose/animation/EnterTransitionImpl;->None:Landroidx/compose/animation/EnterTransitionImpl;

    .line 7
    .line 8
    return-object p0
.end method

.method private final invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    .line 7
    .line 8
    return-object p0
.end method

.method private final invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsFilterActivity$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    sget p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method private final invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 2
    .line 3
    iget-object p0, p1, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 4
    .line 5
    return-object p0
.end method

.method private final invoke$org$wikipedia$talk$db$TalkPageSeenDao_Impl$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "DELETE FROM TalkPageSeen"

    .line 7
    .line 8
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "revId"

    .line 6
    .line 7
    const-string v3, "offline"

    .line 8
    .line 9
    const-string v4, "listId"

    .line 10
    .line 11
    const-string v5, "remoteId"

    .line 12
    .line 13
    const-string v6, "sizeBytes"

    .line 14
    .line 15
    const-string v7, "atime"

    .line 16
    .line 17
    const-string v8, "mtime"

    .line 18
    .line 19
    const-string v9, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 20
    .line 21
    const-string v10, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 22
    .line 23
    const-string v11, "status"

    .line 24
    .line 25
    const-string v12, "thumbUrl"

    .line 26
    .line 27
    const-string v13, "displayTitle"

    .line 28
    .line 29
    const-string v14, "apiTitle"

    .line 30
    .line 31
    const-string v15, "namespace"

    .line 32
    .line 33
    const-string v0, "lang"

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    const-string/jumbo v1, "wiki"

    .line 38
    .line 39
    .line 40
    move-object/from16 v17, v5

    .line 41
    .line 42
    sget-object v18, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    const-string v5, "description"

    .line 45
    .line 46
    const/16 v19, 0x0

    .line 47
    .line 48
    move-object/from16 v20, v2

    .line 49
    .line 50
    const-string v2, "id"

    .line 51
    .line 52
    packed-switch v16, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    move-object/from16 v0, p1

    .line 56
    .line 57
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const-string v1, "SELECT * FROM TalkTemplate ORDER BY `order`"

    .line 63
    .line 64
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :try_start_0
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const-string/jumbo v2, "type"

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const-string v3, "order"

    .line 80
    .line 81
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const-string v4, "title"

    .line 86
    .line 87
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    const-string v5, "subject"

    .line 92
    .line 93
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    const-string v6, "message"

    .line 98
    .line 99
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    new-instance v7, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_0

    .line 113
    .line 114
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 115
    .line 116
    .line 117
    move-result-wide v8

    .line 118
    long-to-int v11, v8

    .line 119
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 120
    .line 121
    .line 122
    move-result-wide v8

    .line 123
    long-to-int v12, v8

    .line 124
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v8

    .line 128
    long-to-int v13, v8

    .line 129
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v16

    .line 141
    new-instance v10, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 142
    .line 143
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/talk/db/TalkTemplate;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto :goto_1

    .line 152
    :cond_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 153
    .line 154
    .line 155
    return-object v7

    .line 156
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$talk$db$TalkPageSeenDao_Impl$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0

    .line 165
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    return-object v0

    .line 170
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsFilterActivity$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    return-object v0

    .line 175
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    return-object v0

    .line 180
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda3(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0

    .line 185
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    return-object v0

    .line 190
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$settings$homefeed$HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    return-object v0

    .line 195
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$search$db$RecentSearchDao_Impl$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0

    .line 200
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$search$db$RecentSearchDao_Impl$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    return-object v0

    .line 205
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0

    .line 210
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    return-object v0

    .line 215
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$search$SearchResultsViewModel$loadHybridSearchResults$2$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    return-object v0

    .line 220
    :pswitch_c
    move-object/from16 v0, p1

    .line 221
    .line 222
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 223
    .line 224
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    return-object v0

    .line 229
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;->invoke$org$wikipedia$readinglist$recommended$RecommendedReadingListInterestsViewModel$loadItems$2$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    return-object v0

    .line 234
    :pswitch_e
    move-object/from16 v3, p1

    .line 235
    .line 236
    check-cast v3, Landroidx/sqlite/SQLiteConnection;

    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    const-string v4, "SELECT * FROM RecommendedPage WHERE id = 0"

    .line 242
    .line 243
    invoke-interface {v3, v4}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    :try_start_1
    invoke-static {v3, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-static {v3, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    invoke-static {v3, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-static {v3, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    const-string v6, "timestamp"

    .line 264
    .line 265
    invoke-static {v3, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    invoke-static {v3, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    invoke-static {v3, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    invoke-static {v3, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    invoke-static {v3, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v12

    .line 285
    invoke-static {v3, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v11

    .line 289
    const-string v13, "extract"

    .line 290
    .line 291
    invoke-static {v3, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v13

    .line 295
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 296
    .line 297
    .line 298
    move-result v14

    .line 299
    if-eqz v14, :cond_a

    .line 300
    .line 301
    invoke-interface {v3, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 302
    .line 303
    .line 304
    move-result-wide v14

    .line 305
    long-to-int v2, v14

    .line 306
    invoke-interface {v3, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-eqz v14, :cond_1

    .line 311
    .line 312
    move-object/from16 v1, v19

    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_1
    invoke-interface {v3, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    :goto_2
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 320
    .line 321
    .line 322
    move-result-object v22

    .line 323
    if-eqz v22, :cond_9

    .line 324
    .line 325
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v23

    .line 329
    invoke-interface {v3, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_2

    .line 334
    .line 335
    move-object/from16 v0, v19

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_2
    invoke-interface {v3, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 339
    .line 340
    .line 341
    move-result-wide v0

    .line 342
    long-to-int v0, v0

    .line 343
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    :goto_3
    invoke-static {v0}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 348
    .line 349
    .line 350
    move-result-object v24

    .line 351
    if-eqz v24, :cond_8

    .line 352
    .line 353
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_3

    .line 358
    .line 359
    move-object/from16 v0, v19

    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_3
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 363
    .line 364
    .line 365
    move-result-wide v0

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    :goto_4
    invoke-static {v0}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 371
    .line 372
    .line 373
    move-result-object v25

    .line 374
    if-eqz v25, :cond_7

    .line 375
    .line 376
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v26

    .line 380
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v27

    .line 384
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_4

    .line 389
    .line 390
    move-object/from16 v28, v19

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_4
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    move-object/from16 v28, v0

    .line 398
    .line 399
    :goto_5
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_5

    .line 404
    .line 405
    move-object/from16 v29, v19

    .line 406
    .line 407
    goto :goto_6

    .line 408
    :cond_5
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    move-object/from16 v29, v0

    .line 413
    .line 414
    :goto_6
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 415
    .line 416
    .line 417
    move-result-wide v0

    .line 418
    long-to-int v0, v0

    .line 419
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_6

    .line 424
    .line 425
    :goto_7
    move-object/from16 v31, v19

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_6
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v19

    .line 432
    goto :goto_7

    .line 433
    :goto_8
    new-instance v20, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 434
    .line 435
    move/from16 v30, v0

    .line 436
    .line 437
    move/from16 v21, v2

    .line 438
    .line 439
    invoke-direct/range {v20 .. v31}, Lorg/wikipedia/readinglist/database/RecommendedPage;-><init>(ILorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    .line 441
    .line 442
    move-object/from16 v19, v20

    .line 443
    .line 444
    goto :goto_9

    .line 445
    :catchall_1
    move-exception v0

    .line 446
    goto :goto_a

    .line 447
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 448
    .line 449
    const-string v1, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 450
    .line 451
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v0

    .line 455
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 456
    .line 457
    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v0

    .line 461
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 462
    .line 463
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    :cond_a
    :goto_9
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 468
    .line 469
    .line 470
    return-object v19

    .line 471
    :goto_a
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 472
    .line 473
    .line 474
    throw v0

    .line 475
    :pswitch_f
    move-object/from16 v3, p1

    .line 476
    .line 477
    check-cast v3, Landroidx/sqlite/SQLiteConnection;

    .line 478
    .line 479
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    const-string v4, "SELECT * FROM RecommendedPage WHERE status = 0 ORDER BY timestamp DESC"

    .line 483
    .line 484
    invoke-interface {v3, v4}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    :try_start_2
    invoke-static {v3, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    invoke-static {v3, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    invoke-static {v3, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    invoke-static {v3, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    const-string v6, "timestamp"

    .line 505
    .line 506
    invoke-static {v3, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    invoke-static {v3, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    invoke-static {v3, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    invoke-static {v3, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    invoke-static {v3, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    move-result v12

    .line 526
    invoke-static {v3, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    move-result v11

    .line 530
    const-string v13, "extract"

    .line 531
    .line 532
    invoke-static {v3, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    move-result v13

    .line 536
    new-instance v14, Ljava/util/ArrayList;

    .line 537
    .line 538
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .line 540
    .line 541
    :goto_b
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 542
    .line 543
    .line 544
    move-result v15

    .line 545
    if-eqz v15, :cond_14

    .line 546
    .line 547
    move-object/from16 v22, v9

    .line 548
    .line 549
    move-object/from16 v16, v10

    .line 550
    .line 551
    invoke-interface {v3, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 552
    .line 553
    .line 554
    move-result-wide v9

    .line 555
    long-to-int v9, v9

    .line 556
    invoke-interface {v3, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 557
    .line 558
    .line 559
    move-result v10

    .line 560
    if-eqz v10, :cond_b

    .line 561
    .line 562
    move-object/from16 v10, v19

    .line 563
    .line 564
    goto :goto_c

    .line 565
    :cond_b
    invoke-interface {v3, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v10

    .line 569
    :goto_c
    invoke-static {v10}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 570
    .line 571
    .line 572
    move-result-object v25

    .line 573
    if-eqz v25, :cond_13

    .line 574
    .line 575
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v26

    .line 579
    invoke-interface {v3, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 580
    .line 581
    .line 582
    move-result v10

    .line 583
    if-eqz v10, :cond_c

    .line 584
    .line 585
    move/from16 p1, v0

    .line 586
    .line 587
    move/from16 p0, v1

    .line 588
    .line 589
    move-object/from16 v0, v19

    .line 590
    .line 591
    goto :goto_d

    .line 592
    :cond_c
    move/from16 p1, v0

    .line 593
    .line 594
    move/from16 p0, v1

    .line 595
    .line 596
    invoke-interface {v3, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 597
    .line 598
    .line 599
    move-result-wide v0

    .line 600
    long-to-int v0, v0

    .line 601
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    :goto_d
    invoke-static {v0}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 606
    .line 607
    .line 608
    move-result-object v27

    .line 609
    if-eqz v27, :cond_12

    .line 610
    .line 611
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    if-eqz v0, :cond_d

    .line 616
    .line 617
    move-object/from16 v0, v19

    .line 618
    .line 619
    goto :goto_e

    .line 620
    :cond_d
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 621
    .line 622
    .line 623
    move-result-wide v0

    .line 624
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    :goto_e
    invoke-static {v0}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 629
    .line 630
    .line 631
    move-result-object v28

    .line 632
    if-eqz v28, :cond_11

    .line 633
    .line 634
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v29

    .line 638
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v30

    .line 642
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    if-eqz v0, :cond_e

    .line 647
    .line 648
    move-object/from16 v31, v19

    .line 649
    .line 650
    goto :goto_f

    .line 651
    :cond_e
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    move-object/from16 v31, v0

    .line 656
    .line 657
    :goto_f
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eqz v0, :cond_f

    .line 662
    .line 663
    move-object/from16 v32, v19

    .line 664
    .line 665
    goto :goto_10

    .line 666
    :cond_f
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    move-object/from16 v32, v0

    .line 671
    .line 672
    :goto_10
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 673
    .line 674
    .line 675
    move-result-wide v0

    .line 676
    long-to-int v0, v0

    .line 677
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    if-eqz v1, :cond_10

    .line 682
    .line 683
    move-object/from16 v34, v19

    .line 684
    .line 685
    goto :goto_11

    .line 686
    :cond_10
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    move-object/from16 v34, v1

    .line 691
    .line 692
    :goto_11
    new-instance v23, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 693
    .line 694
    move/from16 v33, v0

    .line 695
    .line 696
    move/from16 v24, v9

    .line 697
    .line 698
    invoke-direct/range {v23 .. v34}, Lorg/wikipedia/readinglist/database/RecommendedPage;-><init>(ILorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 699
    .line 700
    .line 701
    move-object/from16 v0, v23

    .line 702
    .line 703
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move/from16 v1, p0

    .line 707
    .line 708
    move/from16 v0, p1

    .line 709
    .line 710
    move-object/from16 v10, v16

    .line 711
    .line 712
    move-object/from16 v9, v22

    .line 713
    .line 714
    goto/16 :goto_b

    .line 715
    .line 716
    :catchall_2
    move-exception v0

    .line 717
    goto :goto_12

    .line 718
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 719
    .line 720
    const-string v1, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 721
    .line 722
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    throw v0

    .line 726
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 727
    .line 728
    move-object/from16 v9, v16

    .line 729
    .line 730
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    throw v0

    .line 734
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 735
    .line 736
    move-object/from16 v10, v22

    .line 737
    .line 738
    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 742
    :cond_14
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 743
    .line 744
    .line 745
    return-object v14

    .line 746
    :goto_12
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 747
    .line 748
    .line 749
    throw v0

    .line 750
    :pswitch_10
    move-object/from16 v0, p1

    .line 751
    .line 752
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 753
    .line 754
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 755
    .line 756
    .line 757
    const-string v1, "UPDATE RecommendedPage SET status = 1 WHERE status = 0"

    .line 758
    .line 759
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    :try_start_3
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 764
    .line 765
    .line 766
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 767
    .line 768
    .line 769
    return-object v18

    .line 770
    :catchall_3
    move-exception v0

    .line 771
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 772
    .line 773
    .line 774
    throw v0

    .line 775
    :pswitch_11
    move-object/from16 v22, v9

    .line 776
    .line 777
    move-object v9, v10

    .line 778
    move-object/from16 v10, p1

    .line 779
    .line 780
    check-cast v10, Landroidx/sqlite/SQLiteConnection;

    .line 781
    .line 782
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    move-object/from16 v16, v9

    .line 786
    .line 787
    const-string v9, "SELECT * FROM ReadingListPage WHERE atime > 0 ORDER BY atime DESC LIMIT 1"

    .line 788
    .line 789
    invoke-interface {v10, v9}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 790
    .line 791
    .line 792
    move-result-object v9

    .line 793
    :try_start_4
    invoke-static {v9, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    invoke-static {v9, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 798
    .line 799
    .line 800
    move-result v10

    .line 801
    invoke-static {v9, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 802
    .line 803
    .line 804
    move-result v13

    .line 805
    invoke-static {v9, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 806
    .line 807
    .line 808
    move-result v14

    .line 809
    invoke-static {v9, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    move-result v5

    .line 813
    invoke-static {v9, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 814
    .line 815
    .line 816
    move-result v12

    .line 817
    invoke-static {v9, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 818
    .line 819
    .line 820
    move-result v4

    .line 821
    invoke-static {v9, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 822
    .line 823
    .line 824
    move-result v2

    .line 825
    invoke-static {v9, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 826
    .line 827
    .line 828
    move-result v8

    .line 829
    invoke-static {v9, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 830
    .line 831
    .line 832
    move-result v7

    .line 833
    invoke-static {v9, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 834
    .line 835
    .line 836
    move-result v3

    .line 837
    invoke-static {v9, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 838
    .line 839
    .line 840
    move-result v11

    .line 841
    invoke-static {v9, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    move-result v6

    .line 845
    invoke-static {v9, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    move-object/from16 v15, v20

    .line 850
    .line 851
    invoke-static {v9, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 852
    .line 853
    .line 854
    move-result v15

    .line 855
    move/from16 p0, v15

    .line 856
    .line 857
    move-object/from16 v15, v17

    .line 858
    .line 859
    invoke-static {v9, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 860
    .line 861
    .line 862
    move-result v15

    .line 863
    invoke-interface {v9}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 864
    .line 865
    .line 866
    move-result v17

    .line 867
    if-eqz v17, :cond_1c

    .line 868
    .line 869
    invoke-interface {v9, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 870
    .line 871
    .line 872
    move-result v17

    .line 873
    if-eqz v17, :cond_15

    .line 874
    .line 875
    move-object/from16 v1, v19

    .line 876
    .line 877
    goto :goto_13

    .line 878
    :cond_15
    invoke-interface {v9, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    :goto_13
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 883
    .line 884
    .line 885
    move-result-object v24

    .line 886
    if-eqz v24, :cond_1b

    .line 887
    .line 888
    invoke-interface {v9, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 889
    .line 890
    .line 891
    move-result v1

    .line 892
    if-eqz v1, :cond_16

    .line 893
    .line 894
    move/from16 p1, v0

    .line 895
    .line 896
    move-object/from16 v0, v19

    .line 897
    .line 898
    goto :goto_14

    .line 899
    :cond_16
    move/from16 p1, v0

    .line 900
    .line 901
    invoke-interface {v9, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 902
    .line 903
    .line 904
    move-result-wide v0

    .line 905
    long-to-int v0, v0

    .line 906
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    :goto_14
    invoke-static {v0}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 911
    .line 912
    .line 913
    move-result-object v25

    .line 914
    if-eqz v25, :cond_1a

    .line 915
    .line 916
    invoke-interface {v9, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v26

    .line 920
    invoke-interface {v9, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v27

    .line 924
    invoke-interface {v9, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    if-eqz v0, :cond_17

    .line 929
    .line 930
    move-object/from16 v28, v19

    .line 931
    .line 932
    goto :goto_15

    .line 933
    :cond_17
    invoke-interface {v9, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    move-object/from16 v28, v0

    .line 938
    .line 939
    :goto_15
    invoke-interface {v9, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_18

    .line 944
    .line 945
    :goto_16
    move-object/from16 v29, v19

    .line 946
    .line 947
    goto :goto_17

    .line 948
    :cond_18
    invoke-interface {v9, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v19

    .line 952
    goto :goto_16

    .line 953
    :goto_17
    invoke-interface {v9, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 954
    .line 955
    .line 956
    move-result-wide v30

    .line 957
    invoke-interface {v9, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 958
    .line 959
    .line 960
    move-result-wide v32

    .line 961
    invoke-interface {v9, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 962
    .line 963
    .line 964
    move-result-wide v34

    .line 965
    invoke-interface {v9, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 966
    .line 967
    .line 968
    move-result-wide v36

    .line 969
    invoke-interface {v9, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 970
    .line 971
    .line 972
    move-result-wide v0

    .line 973
    long-to-int v0, v0

    .line 974
    if-eqz v0, :cond_19

    .line 975
    .line 976
    const/16 v38, 0x1

    .line 977
    .line 978
    goto :goto_18

    .line 979
    :cond_19
    const/16 v38, 0x0

    .line 980
    .line 981
    :goto_18
    invoke-interface {v9, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 982
    .line 983
    .line 984
    move-result-wide v39

    .line 985
    invoke-interface {v9, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 986
    .line 987
    .line 988
    move-result-wide v41

    .line 989
    move/from16 v0, p1

    .line 990
    .line 991
    invoke-interface {v9, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v43

    .line 995
    move/from16 v0, p0

    .line 996
    .line 997
    invoke-interface {v9, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 998
    .line 999
    .line 1000
    move-result-wide v44

    .line 1001
    invoke-interface {v9, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1002
    .line 1003
    .line 1004
    move-result-wide v46

    .line 1005
    new-instance v23, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 1006
    .line 1007
    invoke-direct/range {v23 .. v47}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 1008
    .line 1009
    .line 1010
    move-object/from16 v19, v23

    .line 1011
    .line 1012
    goto :goto_19

    .line 1013
    :catchall_4
    move-exception v0

    .line 1014
    goto :goto_1a

    .line 1015
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1016
    .line 1017
    move-object/from16 v10, v16

    .line 1018
    .line 1019
    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    throw v0

    .line 1023
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1024
    .line 1025
    move-object/from16 v1, v22

    .line 1026
    .line 1027
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1031
    :cond_1c
    :goto_19
    invoke-interface {v9}, Ljava/lang/AutoCloseable;->close()V

    .line 1032
    .line 1033
    .line 1034
    return-object v19

    .line 1035
    :goto_1a
    invoke-interface {v9}, Ljava/lang/AutoCloseable;->close()V

    .line 1036
    .line 1037
    .line 1038
    throw v0

    .line 1039
    :pswitch_12
    move-object/from16 v0, p1

    .line 1040
    .line 1041
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1042
    .line 1043
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1044
    .line 1045
    .line 1046
    const-string v1, "SELECT COUNT(*) FROM ReadingListPage"

    .line 1047
    .line 1048
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    :try_start_5
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1053
    .line 1054
    .line 1055
    move-result v0

    .line 1056
    if-eqz v0, :cond_1d

    .line 1057
    .line 1058
    const/4 v9, 0x0

    .line 1059
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1060
    .line 1061
    .line 1062
    move-result-wide v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1063
    long-to-int v5, v2

    .line 1064
    goto :goto_1b

    .line 1065
    :catchall_5
    move-exception v0

    .line 1066
    goto :goto_1c

    .line 1067
    :cond_1d
    const/4 v9, 0x0

    .line 1068
    move v5, v9

    .line 1069
    :goto_1b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1070
    .line 1071
    .line 1072
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    return-object v0

    .line 1077
    :goto_1c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1078
    .line 1079
    .line 1080
    throw v0

    .line 1081
    :pswitch_13
    move-object/from16 v0, p1

    .line 1082
    .line 1083
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1084
    .line 1085
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1086
    .line 1087
    .line 1088
    const-string v1, "DELETE FROM ReadingListPage WHERE status = ?"

    .line 1089
    .line 1090
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v1

    .line 1094
    const-wide/16 v2, 0x2

    .line 1095
    .line 1096
    const/4 v0, 0x1

    .line 1097
    :try_start_6
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1098
    .line 1099
    .line 1100
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1101
    .line 1102
    .line 1103
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1104
    .line 1105
    .line 1106
    return-object v18

    .line 1107
    :catchall_6
    move-exception v0

    .line 1108
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1109
    .line 1110
    .line 1111
    throw v0

    .line 1112
    :pswitch_14
    move-object/from16 v48, v9

    .line 1113
    .line 1114
    move-object/from16 v16, v10

    .line 1115
    .line 1116
    move-object v10, v15

    .line 1117
    move-object/from16 v9, v20

    .line 1118
    .line 1119
    move-object/from16 v15, p1

    .line 1120
    .line 1121
    check-cast v15, Landroidx/sqlite/SQLiteConnection;

    .line 1122
    .line 1123
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1124
    .line 1125
    .line 1126
    const-string v9, "SELECT * FROM ReadingListPage WHERE status = ?"

    .line 1127
    .line 1128
    invoke-interface {v15, v9}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v9

    .line 1132
    move-object/from16 v22, v6

    .line 1133
    .line 1134
    move-object v15, v7

    .line 1135
    const-wide/16 v6, 0x2

    .line 1136
    .line 1137
    move-object/from16 p0, v15

    .line 1138
    .line 1139
    const/4 v15, 0x1

    .line 1140
    :try_start_7
    invoke-interface {v9, v6, v7, v15}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1141
    .line 1142
    .line 1143
    invoke-static {v9, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1144
    .line 1145
    .line 1146
    move-result v1

    .line 1147
    invoke-static {v9, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1148
    .line 1149
    .line 1150
    move-result v6

    .line 1151
    invoke-static {v9, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1152
    .line 1153
    .line 1154
    move-result v7

    .line 1155
    invoke-static {v9, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1156
    .line 1157
    .line 1158
    move-result v10

    .line 1159
    invoke-static {v9, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1160
    .line 1161
    .line 1162
    move-result v5

    .line 1163
    invoke-static {v9, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1164
    .line 1165
    .line 1166
    move-result v12

    .line 1167
    invoke-static {v9, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1168
    .line 1169
    .line 1170
    move-result v4

    .line 1171
    invoke-static {v9, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1172
    .line 1173
    .line 1174
    move-result v2

    .line 1175
    invoke-static {v9, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1176
    .line 1177
    .line 1178
    move-result v8

    .line 1179
    move-object/from16 v15, p0

    .line 1180
    .line 1181
    invoke-static {v9, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1182
    .line 1183
    .line 1184
    move-result v13

    .line 1185
    invoke-static {v9, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1186
    .line 1187
    .line 1188
    move-result v3

    .line 1189
    invoke-static {v9, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1190
    .line 1191
    .line 1192
    move-result v11

    .line 1193
    move-object/from16 v14, v22

    .line 1194
    .line 1195
    invoke-static {v9, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1196
    .line 1197
    .line 1198
    move-result v14

    .line 1199
    invoke-static {v9, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1200
    .line 1201
    .line 1202
    move-result v0

    .line 1203
    move-object/from16 v15, v20

    .line 1204
    .line 1205
    invoke-static {v9, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1206
    .line 1207
    .line 1208
    move-result v15

    .line 1209
    move/from16 p0, v15

    .line 1210
    .line 1211
    move-object/from16 v15, v17

    .line 1212
    .line 1213
    invoke-static {v9, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1214
    .line 1215
    .line 1216
    move-result v15

    .line 1217
    move/from16 p1, v15

    .line 1218
    .line 1219
    new-instance v15, Ljava/util/ArrayList;

    .line 1220
    .line 1221
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    :goto_1d
    invoke-interface {v9}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1225
    .line 1226
    .line 1227
    move-result v17

    .line 1228
    if-eqz v17, :cond_25

    .line 1229
    .line 1230
    invoke-interface {v9, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v17

    .line 1234
    if-eqz v17, :cond_1e

    .line 1235
    .line 1236
    move-object/from16 v17, v19

    .line 1237
    .line 1238
    goto :goto_1e

    .line 1239
    :cond_1e
    invoke-interface {v9, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v17

    .line 1243
    :goto_1e
    invoke-static/range {v17 .. v17}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v23

    .line 1247
    if-eqz v23, :cond_24

    .line 1248
    .line 1249
    invoke-interface {v9, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v17

    .line 1253
    if-eqz v17, :cond_1f

    .line 1254
    .line 1255
    move/from16 v18, v0

    .line 1256
    .line 1257
    move/from16 v17, v1

    .line 1258
    .line 1259
    move-object/from16 v0, v19

    .line 1260
    .line 1261
    goto :goto_1f

    .line 1262
    :cond_1f
    move/from16 v18, v0

    .line 1263
    .line 1264
    move/from16 v17, v1

    .line 1265
    .line 1266
    invoke-interface {v9, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1267
    .line 1268
    .line 1269
    move-result-wide v0

    .line 1270
    long-to-int v0, v0

    .line 1271
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    :goto_1f
    invoke-static {v0}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v24

    .line 1279
    if-eqz v24, :cond_23

    .line 1280
    .line 1281
    invoke-interface {v9, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v25

    .line 1285
    invoke-interface {v9, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v26

    .line 1289
    invoke-interface {v9, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1290
    .line 1291
    .line 1292
    move-result v0

    .line 1293
    if-eqz v0, :cond_20

    .line 1294
    .line 1295
    move-object/from16 v27, v19

    .line 1296
    .line 1297
    goto :goto_20

    .line 1298
    :cond_20
    invoke-interface {v9, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    move-object/from16 v27, v0

    .line 1303
    .line 1304
    :goto_20
    invoke-interface {v9, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v0

    .line 1308
    if-eqz v0, :cond_21

    .line 1309
    .line 1310
    move-object/from16 v28, v19

    .line 1311
    .line 1312
    goto :goto_21

    .line 1313
    :cond_21
    invoke-interface {v9, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    move-object/from16 v28, v0

    .line 1318
    .line 1319
    :goto_21
    invoke-interface {v9, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1320
    .line 1321
    .line 1322
    move-result-wide v29

    .line 1323
    invoke-interface {v9, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1324
    .line 1325
    .line 1326
    move-result-wide v31

    .line 1327
    invoke-interface {v9, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1328
    .line 1329
    .line 1330
    move-result-wide v33

    .line 1331
    invoke-interface {v9, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1332
    .line 1333
    .line 1334
    move-result-wide v35

    .line 1335
    invoke-interface {v9, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1336
    .line 1337
    .line 1338
    move-result-wide v0

    .line 1339
    long-to-int v0, v0

    .line 1340
    if-eqz v0, :cond_22

    .line 1341
    .line 1342
    const/16 v37, 0x1

    .line 1343
    .line 1344
    goto :goto_22

    .line 1345
    :cond_22
    const/16 v37, 0x0

    .line 1346
    .line 1347
    :goto_22
    invoke-interface {v9, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1348
    .line 1349
    .line 1350
    move-result-wide v38

    .line 1351
    invoke-interface {v9, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1352
    .line 1353
    .line 1354
    move-result-wide v40

    .line 1355
    move/from16 v0, v18

    .line 1356
    .line 1357
    invoke-interface {v9, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v42

    .line 1361
    move/from16 v1, p0

    .line 1362
    .line 1363
    invoke-interface {v9, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1364
    .line 1365
    .line 1366
    move-result-wide v43

    .line 1367
    move/from16 v18, v0

    .line 1368
    .line 1369
    move/from16 v0, p1

    .line 1370
    .line 1371
    invoke-interface {v9, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1372
    .line 1373
    .line 1374
    move-result-wide v45

    .line 1375
    new-instance v22, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 1376
    .line 1377
    invoke-direct/range {v22 .. v46}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 1378
    .line 1379
    .line 1380
    move/from16 p1, v0

    .line 1381
    .line 1382
    move-object/from16 v0, v22

    .line 1383
    .line 1384
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    .line 1386
    .line 1387
    move/from16 p0, v1

    .line 1388
    .line 1389
    move/from16 v1, v17

    .line 1390
    .line 1391
    move/from16 v0, v18

    .line 1392
    .line 1393
    goto/16 :goto_1d

    .line 1394
    .line 1395
    :catchall_7
    move-exception v0

    .line 1396
    goto :goto_23

    .line 1397
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1398
    .line 1399
    move-object/from16 v6, v16

    .line 1400
    .line 1401
    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1402
    .line 1403
    .line 1404
    throw v0

    .line 1405
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1406
    .line 1407
    move-object/from16 v7, v48

    .line 1408
    .line 1409
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1410
    .line 1411
    .line 1412
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1413
    :cond_25
    invoke-interface {v9}, Ljava/lang/AutoCloseable;->close()V

    .line 1414
    .line 1415
    .line 1416
    return-object v15

    .line 1417
    :goto_23
    invoke-interface {v9}, Ljava/lang/AutoCloseable;->close()V

    .line 1418
    .line 1419
    .line 1420
    throw v0

    .line 1421
    :pswitch_15
    move-object/from16 v16, v7

    .line 1422
    .line 1423
    move-object v7, v6

    .line 1424
    move-object/from16 v6, v16

    .line 1425
    .line 1426
    move-object/from16 v22, v9

    .line 1427
    .line 1428
    move-object/from16 v16, v10

    .line 1429
    .line 1430
    move-object v10, v15

    .line 1431
    move-object/from16 v9, v20

    .line 1432
    .line 1433
    move-object/from16 v15, p1

    .line 1434
    .line 1435
    check-cast v15, Landroidx/sqlite/SQLiteConnection;

    .line 1436
    .line 1437
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1438
    .line 1439
    .line 1440
    const-string v9, "SELECT * FROM ReadingListPage WHERE remoteId < 1"

    .line 1441
    .line 1442
    invoke-interface {v15, v9}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v9

    .line 1446
    :try_start_8
    invoke-static {v9, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1447
    .line 1448
    .line 1449
    move-result v1

    .line 1450
    invoke-static {v9, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1451
    .line 1452
    .line 1453
    move-result v10

    .line 1454
    invoke-static {v9, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1455
    .line 1456
    .line 1457
    move-result v13

    .line 1458
    invoke-static {v9, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1459
    .line 1460
    .line 1461
    move-result v14

    .line 1462
    invoke-static {v9, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1463
    .line 1464
    .line 1465
    move-result v5

    .line 1466
    invoke-static {v9, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1467
    .line 1468
    .line 1469
    move-result v12

    .line 1470
    invoke-static {v9, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1471
    .line 1472
    .line 1473
    move-result v4

    .line 1474
    invoke-static {v9, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1475
    .line 1476
    .line 1477
    move-result v2

    .line 1478
    invoke-static {v9, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1479
    .line 1480
    .line 1481
    move-result v8

    .line 1482
    invoke-static {v9, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1483
    .line 1484
    .line 1485
    move-result v6

    .line 1486
    invoke-static {v9, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1487
    .line 1488
    .line 1489
    move-result v3

    .line 1490
    invoke-static {v9, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1491
    .line 1492
    .line 1493
    move-result v11

    .line 1494
    invoke-static {v9, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1495
    .line 1496
    .line 1497
    move-result v7

    .line 1498
    invoke-static {v9, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1499
    .line 1500
    .line 1501
    move-result v0

    .line 1502
    move-object/from16 v15, v20

    .line 1503
    .line 1504
    invoke-static {v9, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1505
    .line 1506
    .line 1507
    move-result v15

    .line 1508
    move/from16 p0, v15

    .line 1509
    .line 1510
    move-object/from16 v15, v17

    .line 1511
    .line 1512
    invoke-static {v9, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1513
    .line 1514
    .line 1515
    move-result v15

    .line 1516
    move/from16 p1, v15

    .line 1517
    .line 1518
    new-instance v15, Ljava/util/ArrayList;

    .line 1519
    .line 1520
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    .line 1522
    .line 1523
    :goto_24
    invoke-interface {v9}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1524
    .line 1525
    .line 1526
    move-result v17

    .line 1527
    if-eqz v17, :cond_2d

    .line 1528
    .line 1529
    invoke-interface {v9, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1530
    .line 1531
    .line 1532
    move-result v17

    .line 1533
    if-eqz v17, :cond_26

    .line 1534
    .line 1535
    move-object/from16 v17, v19

    .line 1536
    .line 1537
    goto :goto_25

    .line 1538
    :cond_26
    invoke-interface {v9, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v17

    .line 1542
    :goto_25
    invoke-static/range {v17 .. v17}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v24

    .line 1546
    if-eqz v24, :cond_2c

    .line 1547
    .line 1548
    invoke-interface {v9, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1549
    .line 1550
    .line 1551
    move-result v17

    .line 1552
    if-eqz v17, :cond_27

    .line 1553
    .line 1554
    move/from16 v18, v0

    .line 1555
    .line 1556
    move/from16 v17, v1

    .line 1557
    .line 1558
    move-object/from16 v0, v19

    .line 1559
    .line 1560
    goto :goto_26

    .line 1561
    :cond_27
    move/from16 v18, v0

    .line 1562
    .line 1563
    move/from16 v17, v1

    .line 1564
    .line 1565
    invoke-interface {v9, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1566
    .line 1567
    .line 1568
    move-result-wide v0

    .line 1569
    long-to-int v0, v0

    .line 1570
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v0

    .line 1574
    :goto_26
    invoke-static {v0}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v25

    .line 1578
    if-eqz v25, :cond_2b

    .line 1579
    .line 1580
    invoke-interface {v9, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v26

    .line 1584
    invoke-interface {v9, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v27

    .line 1588
    invoke-interface {v9, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1589
    .line 1590
    .line 1591
    move-result v0

    .line 1592
    if-eqz v0, :cond_28

    .line 1593
    .line 1594
    move-object/from16 v28, v19

    .line 1595
    .line 1596
    goto :goto_27

    .line 1597
    :cond_28
    invoke-interface {v9, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v0

    .line 1601
    move-object/from16 v28, v0

    .line 1602
    .line 1603
    :goto_27
    invoke-interface {v9, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1604
    .line 1605
    .line 1606
    move-result v0

    .line 1607
    if-eqz v0, :cond_29

    .line 1608
    .line 1609
    move-object/from16 v29, v19

    .line 1610
    .line 1611
    goto :goto_28

    .line 1612
    :cond_29
    invoke-interface {v9, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v0

    .line 1616
    move-object/from16 v29, v0

    .line 1617
    .line 1618
    :goto_28
    invoke-interface {v9, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1619
    .line 1620
    .line 1621
    move-result-wide v30

    .line 1622
    invoke-interface {v9, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1623
    .line 1624
    .line 1625
    move-result-wide v32

    .line 1626
    invoke-interface {v9, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1627
    .line 1628
    .line 1629
    move-result-wide v34

    .line 1630
    invoke-interface {v9, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1631
    .line 1632
    .line 1633
    move-result-wide v36

    .line 1634
    invoke-interface {v9, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1635
    .line 1636
    .line 1637
    move-result-wide v0

    .line 1638
    long-to-int v0, v0

    .line 1639
    if-eqz v0, :cond_2a

    .line 1640
    .line 1641
    const/16 v38, 0x1

    .line 1642
    .line 1643
    goto :goto_29

    .line 1644
    :cond_2a
    const/16 v38, 0x0

    .line 1645
    .line 1646
    :goto_29
    invoke-interface {v9, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1647
    .line 1648
    .line 1649
    move-result-wide v39

    .line 1650
    invoke-interface {v9, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1651
    .line 1652
    .line 1653
    move-result-wide v41

    .line 1654
    move/from16 v0, v18

    .line 1655
    .line 1656
    invoke-interface {v9, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v43

    .line 1660
    move/from16 v1, p0

    .line 1661
    .line 1662
    invoke-interface {v9, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1663
    .line 1664
    .line 1665
    move-result-wide v44

    .line 1666
    move/from16 v18, v0

    .line 1667
    .line 1668
    move/from16 v0, p1

    .line 1669
    .line 1670
    invoke-interface {v9, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1671
    .line 1672
    .line 1673
    move-result-wide v46

    .line 1674
    new-instance v23, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 1675
    .line 1676
    invoke-direct/range {v23 .. v47}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 1677
    .line 1678
    .line 1679
    move/from16 p1, v0

    .line 1680
    .line 1681
    move-object/from16 v0, v23

    .line 1682
    .line 1683
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    .line 1685
    .line 1686
    move/from16 p0, v1

    .line 1687
    .line 1688
    move/from16 v1, v17

    .line 1689
    .line 1690
    move/from16 v0, v18

    .line 1691
    .line 1692
    goto/16 :goto_24

    .line 1693
    .line 1694
    :catchall_8
    move-exception v0

    .line 1695
    goto :goto_2a

    .line 1696
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1697
    .line 1698
    move-object/from16 v6, v16

    .line 1699
    .line 1700
    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1701
    .line 1702
    .line 1703
    throw v0

    .line 1704
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1705
    .line 1706
    move-object/from16 v1, v22

    .line 1707
    .line 1708
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1709
    .line 1710
    .line 1711
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1712
    :cond_2d
    invoke-interface {v9}, Ljava/lang/AutoCloseable;->close()V

    .line 1713
    .line 1714
    .line 1715
    return-object v15

    .line 1716
    :goto_2a
    invoke-interface {v9}, Ljava/lang/AutoCloseable;->close()V

    .line 1717
    .line 1718
    .line 1719
    throw v0

    .line 1720
    :pswitch_16
    move-object/from16 v0, p1

    .line 1721
    .line 1722
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1723
    .line 1724
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1725
    .line 1726
    .line 1727
    const-string v1, "UPDATE ReadingListPage SET remoteId = -1"

    .line 1728
    .line 1729
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v1

    .line 1733
    :try_start_9
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1734
    .line 1735
    .line 1736
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1737
    .line 1738
    .line 1739
    return-object v18

    .line 1740
    :catchall_9
    move-exception v0

    .line 1741
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1742
    .line 1743
    .line 1744
    throw v0

    .line 1745
    :pswitch_17
    move-object/from16 v0, p1

    .line 1746
    .line 1747
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1748
    .line 1749
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1750
    .line 1751
    .line 1752
    const-string v1, "UPDATE ReadingListPage SET status = ? WHERE status = ? AND offline = ?"

    .line 1753
    .line 1754
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v1

    .line 1758
    const-wide/16 v2, 0x0

    .line 1759
    .line 1760
    const/4 v0, 0x1

    .line 1761
    :try_start_a
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1762
    .line 1763
    .line 1764
    const/4 v0, 0x2

    .line 1765
    const-wide/16 v4, 0x1

    .line 1766
    .line 1767
    invoke-interface {v1, v4, v5, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1768
    .line 1769
    .line 1770
    const/4 v0, 0x3

    .line 1771
    invoke-interface {v1, v2, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1772
    .line 1773
    .line 1774
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1775
    .line 1776
    .line 1777
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1778
    .line 1779
    .line 1780
    return-object v18

    .line 1781
    :catchall_a
    move-exception v0

    .line 1782
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1783
    .line 1784
    .line 1785
    throw v0

    .line 1786
    :pswitch_18
    move-object/from16 v0, p1

    .line 1787
    .line 1788
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1789
    .line 1790
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1791
    .line 1792
    .line 1793
    const-string v1, "UPDATE ReadingList SET remoteId = -1"

    .line 1794
    .line 1795
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v1

    .line 1799
    :try_start_b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1800
    .line 1801
    .line 1802
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1803
    .line 1804
    .line 1805
    return-object v18

    .line 1806
    :catchall_b
    move-exception v0

    .line 1807
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1808
    .line 1809
    .line 1810
    throw v0

    .line 1811
    :pswitch_19
    move-object v0, v7

    .line 1812
    move-object v7, v6

    .line 1813
    move-object v6, v0

    .line 1814
    move-object/from16 v15, v17

    .line 1815
    .line 1816
    const/4 v0, 0x1

    .line 1817
    move-object/from16 v1, p1

    .line 1818
    .line 1819
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1820
    .line 1821
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1822
    .line 1823
    .line 1824
    const-string v3, "SELECT * FROM ReadingList"

    .line 1825
    .line 1826
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v1

    .line 1830
    :try_start_c
    const-string v3, "listTitle"

    .line 1831
    .line 1832
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1833
    .line 1834
    .line 1835
    move-result v3

    .line 1836
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1837
    .line 1838
    .line 1839
    move-result v4

    .line 1840
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1841
    .line 1842
    .line 1843
    move-result v5

    .line 1844
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1845
    .line 1846
    .line 1847
    move-result v6

    .line 1848
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1849
    .line 1850
    .line 1851
    move-result v2

    .line 1852
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1853
    .line 1854
    .line 1855
    move-result v7

    .line 1856
    const-string v8, "dirty"

    .line 1857
    .line 1858
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1859
    .line 1860
    .line 1861
    move-result v8

    .line 1862
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1863
    .line 1864
    .line 1865
    move-result v9

    .line 1866
    new-instance v10, Ljava/util/ArrayList;

    .line 1867
    .line 1868
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .line 1870
    .line 1871
    :goto_2b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1872
    .line 1873
    .line 1874
    move-result v11

    .line 1875
    if-eqz v11, :cond_30

    .line 1876
    .line 1877
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v21

    .line 1881
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1882
    .line 1883
    .line 1884
    move-result v11

    .line 1885
    if-eqz v11, :cond_2e

    .line 1886
    .line 1887
    move-object/from16 v22, v19

    .line 1888
    .line 1889
    goto :goto_2c

    .line 1890
    :cond_2e
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v11

    .line 1894
    move-object/from16 v22, v11

    .line 1895
    .line 1896
    :goto_2c
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1897
    .line 1898
    .line 1899
    move-result-wide v23

    .line 1900
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1901
    .line 1902
    .line 1903
    move-result-wide v25

    .line 1904
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1905
    .line 1906
    .line 1907
    move-result-wide v27

    .line 1908
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1909
    .line 1910
    .line 1911
    move-result-wide v29

    .line 1912
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1913
    .line 1914
    .line 1915
    move-result-wide v11

    .line 1916
    long-to-int v11, v11

    .line 1917
    if-eqz v11, :cond_2f

    .line 1918
    .line 1919
    move/from16 v31, v0

    .line 1920
    .line 1921
    goto :goto_2d

    .line 1922
    :cond_2f
    const/16 v31, 0x0

    .line 1923
    .line 1924
    :goto_2d
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1925
    .line 1926
    .line 1927
    move-result-wide v32

    .line 1928
    new-instance v20, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 1929
    .line 1930
    invoke-direct/range {v20 .. v33}, Lorg/wikipedia/readinglist/database/ReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJZJ)V

    .line 1931
    .line 1932
    .line 1933
    move-object/from16 v11, v20

    .line 1934
    .line 1935
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 1936
    .line 1937
    .line 1938
    goto :goto_2b

    .line 1939
    :catchall_c
    move-exception v0

    .line 1940
    goto :goto_2e

    .line 1941
    :cond_30
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1942
    .line 1943
    .line 1944
    return-object v10

    .line 1945
    :goto_2e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1946
    .line 1947
    .line 1948
    throw v0

    .line 1949
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1950
    .line 1951
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 1952
    .line 1953
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 1954
    .line 1955
    .line 1956
    move-result v0

    .line 1957
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v0

    .line 1961
    return-object v0

    .line 1962
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1963
    .line 1964
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1965
    .line 1966
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1967
    .line 1968
    .line 1969
    const-string v1, "DELETE FROM PageImage"

    .line 1970
    .line 1971
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v1

    .line 1975
    :try_start_d
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 1976
    .line 1977
    .line 1978
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1979
    .line 1980
    .line 1981
    return-object v18

    .line 1982
    :catchall_d
    move-exception v0

    .line 1983
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1984
    .line 1985
    .line 1986
    throw v0

    .line 1987
    :pswitch_1c
    const/4 v0, 0x1

    .line 1988
    move-object/from16 v1, p1

    .line 1989
    .line 1990
    check-cast v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1991
    .line 1992
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1993
    .line 1994
    .line 1995
    sget v2, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 1996
    .line 1997
    invoke-static {v1}, Lorg/wikipedia/util/UriUtil;->isHeaderTemplate(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 1998
    .line 1999
    .line 2000
    move-result v2

    .line 2001
    if-eqz v2, :cond_31

    .line 2002
    .line 2003
    iget-object v2, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 2004
    .line 2005
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 2006
    .line 2007
    .line 2008
    move-result v2

    .line 2009
    if-eqz v2, :cond_31

    .line 2010
    .line 2011
    iget-object v1, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->othercontent:Ljava/lang/String;

    .line 2012
    .line 2013
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2014
    .line 2015
    .line 2016
    move-result v1

    .line 2017
    if-nez v1, :cond_31

    .line 2018
    .line 2019
    move v5, v0

    .line 2020
    goto :goto_2f

    .line 2021
    :cond_31
    const/4 v5, 0x0

    .line 2022
    :goto_2f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v0

    .line 2026
    return-object v0

    .line 2027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
