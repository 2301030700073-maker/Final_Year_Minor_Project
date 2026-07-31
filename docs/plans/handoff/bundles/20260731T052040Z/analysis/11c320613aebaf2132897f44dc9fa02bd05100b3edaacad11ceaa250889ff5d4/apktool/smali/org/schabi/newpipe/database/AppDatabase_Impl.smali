.class public final Lorg/schabi/newpipe/database/AppDatabase_Impl;
.super Lorg/schabi/newpipe/database/AppDatabase;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final _feedDAO:Lkotlin/SynchronizedLazyImpl;

.field public final _feedGroupDAO:Lkotlin/SynchronizedLazyImpl;

.field public final _playlistDAO:Lkotlin/SynchronizedLazyImpl;

.field public final _playlistRemoteDAO:Lkotlin/SynchronizedLazyImpl;

.field public final _playlistStreamDAO:Lkotlin/SynchronizedLazyImpl;

.field public final _searchHistoryDAO:Lkotlin/SynchronizedLazyImpl;

.field public final _streamDAO:Lkotlin/SynchronizedLazyImpl;

.field public final _streamHistoryDAO:Lkotlin/SynchronizedLazyImpl;

.field public final _streamStateDAO:Lkotlin/SynchronizedLazyImpl;

.field public final _subscriptionDAO:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/database/AppDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_feedDAO:Lkotlin/SynchronizedLazyImpl;

    .line 16
    .line 17
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_feedGroupDAO:Lkotlin/SynchronizedLazyImpl;

    .line 29
    .line 30
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_playlistDAO:Lkotlin/SynchronizedLazyImpl;

    .line 42
    .line 43
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_playlistRemoteDAO:Lkotlin/SynchronizedLazyImpl;

    .line 55
    .line 56
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_playlistStreamDAO:Lkotlin/SynchronizedLazyImpl;

    .line 68
    .line 69
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/4 v1, 0x5

    .line 72
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_searchHistoryDAO:Lkotlin/SynchronizedLazyImpl;

    .line 81
    .line 82
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/4 v1, 0x6

    .line 85
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_streamDAO:Lkotlin/SynchronizedLazyImpl;

    .line 94
    .line 95
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/4 v1, 0x7

    .line 98
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 102
    .line 103
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_streamHistoryDAO:Lkotlin/SynchronizedLazyImpl;

    .line 107
    .line 108
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 109
    .line 110
    const/16 v1, 0x8

    .line 111
    .line 112
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 116
    .line 117
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_streamStateDAO:Lkotlin/SynchronizedLazyImpl;

    .line 121
    .line 122
    new-instance v0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    const/16 v1, 0x9

    .line 125
    .line 126
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;I)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 130
    .line 131
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 132
    .line 133
    .line 134
    iput-object v1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_subscriptionDAO:Lkotlin/SynchronizedLazyImpl;

    .line 135
    .line 136
    return-void
.end method


# virtual methods
.method public final createAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 15

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroidx/room/InvalidationTracker;

    .line 12
    .line 13
    const-string v13, "feed_group_subscription_join"

    .line 14
    .line 15
    const-string v14, "feed_last_updated"

    .line 16
    .line 17
    const-string/jumbo v3, "subscriptions"

    .line 18
    .line 19
    .line 20
    const-string v4, "search_history"

    .line 21
    .line 22
    const-string/jumbo v5, "streams"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v6, "stream_history"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v7, "stream_state"

    .line 29
    .line 30
    .line 31
    const-string v8, "playlists"

    .line 32
    .line 33
    const-string v9, "playlist_stream_join"

    .line 34
    .line 35
    const-string v10, "remote_playlists"

    .line 36
    .line 37
    const-string v11, "feed"

    .line 38
    .line 39
    const-string v12, "feed_group"

    .line 40
    .line 41
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2
.end method

.method public final createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;-><init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final feedDAO()Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_feedDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final feedGroupDAO()Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_feedGroupDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getRequiredAutoMigrationSpecClasses()Ljava/util/Set;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final getRequiredTypeConverterClasses()Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->Companion:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$Companion;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 18
    .line 19
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-class v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v2, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->Companion:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$Companion;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-class v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$Companion;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const-class v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$Companion;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-class v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$Companion;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-class v0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget-object v2, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->Companion:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$Companion;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-class v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sget-object v2, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->Companion:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$Companion;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    const-class v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v2, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->Companion:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-class v0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 121
    .line 122
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v2, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->Companion:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$Companion;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-class v0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 135
    .line 136
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sget-object v2, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->Companion:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$Companion;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    return-object p0
.end method

.method public final playlistDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_playlistDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final playlistRemoteDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_playlistRemoteDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final playlistStreamDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_playlistStreamDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final searchHistoryDAO()Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_searchHistoryDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_streamDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final streamHistoryDAO()Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_streamHistoryDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final streamStateDAO()Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_streamStateDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final subscriptionDAO()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;->_subscriptionDAO:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 8
    .line 9
    return-object p0
.end method
