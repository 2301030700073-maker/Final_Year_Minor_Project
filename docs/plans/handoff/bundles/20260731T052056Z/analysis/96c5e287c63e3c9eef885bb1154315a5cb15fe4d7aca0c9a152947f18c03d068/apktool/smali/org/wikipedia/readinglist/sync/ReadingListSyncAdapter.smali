.class public final Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static IN_PROGRESS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static getBooleanExtraFromData(Landroidx/work/Data;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    check-cast v1, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method

.method public static pageTitleFromRemoteEntry(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lorg/wikipedia/page/PageTitle;
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, p0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-direct {v0, v1, v3, p0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static remoteEntryFromLocalPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput-object v0, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 30
    .line 31
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 32
    .line 33
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 38
    .line 39
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "://"

    .line 44
    .line 45
    invoke-static {v2, v4, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-wide v3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 54
    .line 55
    const-wide/16 v5, 0x0

    .line 56
    .line 57
    cmp-long v7, v3, v5

    .line 58
    .line 59
    if-nez v7, :cond_0

    .line 60
    .line 61
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v3, v4}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sget-object v4, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 71
    .line 72
    invoke-static {v3, v4}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-wide v7, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 80
    .line 81
    cmp-long p0, v7, v5

    .line 82
    .line 83
    if-nez p0, :cond_1

    .line 84
    .line 85
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-static {v7, v8}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    sget-object v4, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 95
    .line 96
    invoke-static {p0, v4}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v2, v0, v3, p0}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)V

    .line 104
    .line 105
    .line 106
    return-object v1
.end method


# virtual methods
.method public final createOrUpdatePage(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;

    .line 11
    .line 12
    iget v3, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;

    .line 25
    .line 26
    move-object/from16 v3, p0

    .line 27
    .line 28
    invoke-direct {v2, v3, v1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;-><init>(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v1, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v4, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->label:I

    .line 36
    .line 37
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v9, 0x1

    .line 42
    const/4 v10, 0x0

    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    if-eq v4, v9, :cond_3

    .line 46
    .line 47
    if-eq v4, v7, :cond_2

    .line 48
    .line 49
    if-ne v4, v6, :cond_1

    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v5

    .line 55
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v10

    .line 61
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v5

    .line 65
    :cond_3
    iget-object v0, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$3:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 66
    .line 67
    iget-object v4, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$1:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 68
    .line 69
    iget-object v11, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$0:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 70
    .line 71
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    move-object v6, v1

    .line 75
    move-object v1, v0

    .line 76
    move-object v0, v11

    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-static/range {p2 .. p2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->pageTitleFromRemoteEntry(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lorg/wikipedia/page/PageTitle;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v4, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-eqz v11, :cond_6

    .line 97
    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    move-object v12, v11

    .line 103
    check-cast v12, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 104
    .line 105
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget-object v15, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 109
    .line 110
    iget-object v13, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iput-object v13, v15, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 119
    .line 120
    new-instance v13, Lorg/wikipedia/page/PageTitle;

    .line 121
    .line 122
    iget-object v14, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v8, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v6, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v12, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 129
    .line 130
    move-object/from16 v17, v6

    .line 131
    .line 132
    move-object/from16 v16, v8

    .line 133
    .line 134
    move-object/from16 v18, v12

    .line 135
    .line 136
    invoke-direct/range {v13 .. v18}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13, v1}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_5

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    const/4 v6, 0x3

    .line 147
    goto :goto_1

    .line 148
    :cond_6
    move-object v11, v10

    .line 149
    :goto_2
    check-cast v11, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 150
    .line 151
    if-eqz v11, :cond_7

    .line 152
    .line 153
    move v4, v9

    .line 154
    goto :goto_3

    .line 155
    :cond_7
    const/4 v4, 0x0

    .line 156
    :goto_3
    if-nez v11, :cond_a

    .line 157
    .line 158
    new-instance v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 159
    .line 160
    invoke-static/range {p2 .. p2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->pageTitleFromRemoteEntry(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lorg/wikipedia/page/PageTitle;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-direct {v4, v6}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 165
    .line 166
    .line 167
    iget-wide v11, v0, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 168
    .line 169
    iput-wide v11, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 170
    .line 171
    sget-object v6, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 172
    .line 173
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v6}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    iput-object v0, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$0:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 182
    .line 183
    move-object/from16 v8, p2

    .line 184
    .line 185
    iput-object v8, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$1:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 186
    .line 187
    iput-object v4, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$3:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 188
    .line 189
    iput v9, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->label:I

    .line 190
    .line 191
    invoke-virtual {v6, v0, v1, v2}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getPageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-ne v1, v3, :cond_8

    .line 196
    .line 197
    goto/16 :goto_7

    .line 198
    .line 199
    :cond_8
    move-object v6, v1

    .line 200
    move-object v1, v4

    .line 201
    move-object v4, v8

    .line 202
    :goto_4
    if-eqz v6, :cond_9

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_9
    const/4 v9, 0x0

    .line 206
    :goto_5
    move-object v11, v1

    .line 207
    goto :goto_6

    .line 208
    :cond_a
    move-object/from16 v8, p2

    .line 209
    .line 210
    move v9, v4

    .line 211
    move-object v4, v8

    .line 212
    :goto_6
    iget-wide v12, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id:J

    .line 213
    .line 214
    iput-wide v12, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 215
    .line 216
    iget-object v1, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v6, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->created:Lj$/time/LocalDateTime;

    .line 219
    .line 220
    sget-object v8, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 221
    .line 222
    invoke-interface {v6, v8}, Lj$/time/chrono/ChronoLocalDateTime;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {v6}, Lj$/time/Instant;->toEpochMilli()J

    .line 227
    .line 228
    .line 229
    move-result-wide v12

    .line 230
    iput-wide v12, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 231
    .line 232
    iget-object v4, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->updated:Lj$/time/LocalDateTime;

    .line 233
    .line 234
    invoke-interface {v4, v8}, Lj$/time/chrono/ChronoLocalDateTime;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v4}, Lj$/time/Instant;->toEpochMilli()J

    .line 239
    .line 240
    .line 241
    move-result-wide v12

    .line 242
    iput-wide v12, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 243
    .line 244
    if-eqz v9, :cond_b

    .line 245
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v4, "Updating local page "

    .line 249
    .line 250
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 264
    .line 265
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iput-object v10, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$0:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 274
    .line 275
    iput-object v10, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$1:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 276
    .line 277
    iput-object v10, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$3:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 278
    .line 279
    iput v7, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->label:I

    .line 280
    .line 281
    invoke-virtual {v0, v11, v2}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-ne v0, v3, :cond_c

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v6, "Creating local page "

    .line 291
    .line 292
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 306
    .line 307
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static {v11}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    iput-object v10, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$0:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 320
    .line 321
    iput-object v10, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$1:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 322
    .line 323
    iput-object v10, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->L$3:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 324
    .line 325
    const/4 v6, 0x3

    .line 326
    iput v6, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$createOrUpdatePage$1;->label:I

    .line 327
    .line 328
    const/4 v6, 0x0

    .line 329
    invoke-virtual {v1, v0, v4, v6, v2}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    if-ne v0, v3, :cond_c

    .line 334
    .line 335
    :goto_7
    return-object v3

    .line 336
    :cond_c
    return-object v5
.end method

.method public final deletePageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;

    .line 13
    .line 14
    iget v4, v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;

    .line 27
    .line 28
    move-object/from16 v4, p0

    .line 29
    .line 30
    invoke-direct {v3, v4, v2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;-><init>(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v2, v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v5, v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;->label:I

    .line 38
    .line 39
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x1

    .line 43
    const/4 v9, 0x0

    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    if-eq v5, v8, :cond_2

    .line 47
    .line 48
    if-ne v5, v7, :cond_1

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v6

    .line 54
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v9

    .line 60
    :cond_2
    iget-object v0, v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;->L$0:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    move-object v10, v5

    .line 86
    check-cast v10, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 87
    .line 88
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v13, v10, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 92
    .line 93
    iget-object v11, v10, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    iput-object v11, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v11, Lorg/wikipedia/page/PageTitle;

    .line 104
    .line 105
    iget-object v12, v10, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v14, v10, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v15, v10, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v10, v10, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 112
    .line 113
    move-object/from16 v16, v10

    .line 114
    .line 115
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v1}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_4

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    move-object v5, v9

    .line 126
    :goto_1
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 127
    .line 128
    if-nez v5, :cond_7

    .line 129
    .line 130
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 131
    .line 132
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iput-object v0, v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;->L$0:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 141
    .line 142
    iput v8, v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;->label:I

    .line 143
    .line 144
    invoke-virtual {v2, v0, v1, v3}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getPageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-ne v2, v4, :cond_6

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    :goto_2
    move-object v5, v2

    .line 152
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 153
    .line 154
    if-nez v5, :cond_7

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    iget-object v1, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v8, "Deleting local page "

    .line 162
    .line 163
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 177
    .line 178
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v5}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iput-object v9, v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;->L$0:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 191
    .line 192
    iput v7, v3, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$deletePageByTitle$1;->label:I

    .line 193
    .line 194
    const/4 v5, 0x0

    .line 195
    invoke-virtual {v1, v0, v2, v5, v3}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-ne v0, v4, :cond_8

    .line 200
    .line 201
    :goto_3
    return-object v4

    .line 202
    :cond_8
    :goto_4
    return-object v6
.end method

.method public final doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$1;-><init>(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 53
    .line 54
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 55
    .line 56
    new-instance v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;

    .line 57
    .line 58
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;-><init>(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    iput v4, v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$1;->label:I

    .line 62
    .line 63
    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    return-object p1
.end method
