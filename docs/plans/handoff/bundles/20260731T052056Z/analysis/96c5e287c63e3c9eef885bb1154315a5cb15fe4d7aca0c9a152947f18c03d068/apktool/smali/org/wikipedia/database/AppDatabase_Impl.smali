.class public final Lorg/wikipedia/database/AppDatabase_Impl;
.super Lorg/wikipedia/database/AppDatabase;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/database/AppDatabase_Impl;",
        "Lorg/wikipedia/database/AppDatabase;",
        "<init>",
        "()V",
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
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _categoryDao:Lkotlin/SynchronizedLazyImpl;

.field public final _dailyGameHistoryDao:Lkotlin/SynchronizedLazyImpl;

.field public final _editSummaryDao:Lkotlin/SynchronizedLazyImpl;

.field public final _historyEntryDao:Lkotlin/SynchronizedLazyImpl;

.field public final _historyEntryWithImageDao:Lkotlin/SynchronizedLazyImpl;

.field public final _interestArticleDao:Lkotlin/SynchronizedLazyImpl;

.field public final _interestTopicDao:Lkotlin/SynchronizedLazyImpl;

.field public final _notificationDao:Lkotlin/SynchronizedLazyImpl;

.field public final _offlineObjectDao:Lkotlin/SynchronizedLazyImpl;

.field public final _pageImageDao:Lkotlin/SynchronizedLazyImpl;

.field public final _readingListDao:Lkotlin/SynchronizedLazyImpl;

.field public final _readingListPageDao:Lkotlin/SynchronizedLazyImpl;

.field public final _recentSearchDao:Lkotlin/SynchronizedLazyImpl;

.field public final _recommendedPageDao:Lkotlin/SynchronizedLazyImpl;

.field public final _talkPageSeenDao:Lkotlin/SynchronizedLazyImpl;

.field public final _talkTemplateDao:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/database/AppDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

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
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_historyEntryDao:Lkotlin/SynchronizedLazyImpl;

    .line 16
    .line 17
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/16 v1, 0xd

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_historyEntryWithImageDao:Lkotlin/SynchronizedLazyImpl;

    .line 30
    .line 31
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/16 v1, 0xe

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_pageImageDao:Lkotlin/SynchronizedLazyImpl;

    .line 44
    .line 45
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/16 v1, 0xf

    .line 48
    .line 49
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_recentSearchDao:Lkotlin/SynchronizedLazyImpl;

    .line 58
    .line 59
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_talkPageSeenDao:Lkotlin/SynchronizedLazyImpl;

    .line 71
    .line 72
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    const/4 v1, 0x2

    .line 75
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_editSummaryDao:Lkotlin/SynchronizedLazyImpl;

    .line 84
    .line 85
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_offlineObjectDao:Lkotlin/SynchronizedLazyImpl;

    .line 97
    .line 98
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v1, 0x4

    .line 101
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_readingListDao:Lkotlin/SynchronizedLazyImpl;

    .line 110
    .line 111
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    const/4 v1, 0x5

    .line 114
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 118
    .line 119
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_readingListPageDao:Lkotlin/SynchronizedLazyImpl;

    .line 123
    .line 124
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    const/4 v1, 0x6

    .line 127
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 131
    .line 132
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 133
    .line 134
    .line 135
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_notificationDao:Lkotlin/SynchronizedLazyImpl;

    .line 136
    .line 137
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    const/4 v1, 0x7

    .line 140
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 141
    .line 142
    .line 143
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 144
    .line 145
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 146
    .line 147
    .line 148
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_talkTemplateDao:Lkotlin/SynchronizedLazyImpl;

    .line 149
    .line 150
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    const/16 v1, 0x8

    .line 153
    .line 154
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 155
    .line 156
    .line 157
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 158
    .line 159
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_categoryDao:Lkotlin/SynchronizedLazyImpl;

    .line 163
    .line 164
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 165
    .line 166
    const/16 v1, 0x9

    .line 167
    .line 168
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 172
    .line 173
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 174
    .line 175
    .line 176
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_dailyGameHistoryDao:Lkotlin/SynchronizedLazyImpl;

    .line 177
    .line 178
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    const/16 v1, 0xa

    .line 181
    .line 182
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 183
    .line 184
    .line 185
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 186
    .line 187
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 188
    .line 189
    .line 190
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_recommendedPageDao:Lkotlin/SynchronizedLazyImpl;

    .line 191
    .line 192
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 193
    .line 194
    const/16 v1, 0xb

    .line 195
    .line 196
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 197
    .line 198
    .line 199
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 200
    .line 201
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 202
    .line 203
    .line 204
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_interestTopicDao:Lkotlin/SynchronizedLazyImpl;

    .line 205
    .line 206
    new-instance v0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    const/16 v1, 0xc

    .line 209
    .line 210
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 214
    .line 215
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 216
    .line 217
    .line 218
    iput-object v1, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_interestArticleDao:Lkotlin/SynchronizedLazyImpl;

    .line 219
    .line 220
    return-void
.end method


# virtual methods
.method public final articleInterestDao()Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_interestArticleDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_categoryDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

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
    .locals 18

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
    const-string v16, "InterestTopic"

    .line 14
    .line 15
    const-string v17, "InterestArticle"

    .line 16
    .line 17
    const-string v3, "HistoryEntry"

    .line 18
    .line 19
    const-string v4, "PageImage"

    .line 20
    .line 21
    const-string v5, "RecentSearch"

    .line 22
    .line 23
    const-string v6, "TalkPageSeen"

    .line 24
    .line 25
    const-string v7, "EditSummary"

    .line 26
    .line 27
    const-string v8, "OfflineObject"

    .line 28
    .line 29
    const-string v9, "ReadingList"

    .line 30
    .line 31
    const-string v10, "ReadingListPage"

    .line 32
    .line 33
    const-string v11, "Notification"

    .line 34
    .line 35
    const-string v12, "TalkTemplate"

    .line 36
    .line 37
    const-string v13, "Category"

    .line 38
    .line 39
    const-string v14, "DailyGameHistory"

    .line 40
    .line 41
    const-string v15, "RecommendedPage"

    .line 42
    .line 43
    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    move-object/from16 v4, p0

    .line 48
    .line 49
    invoke-direct {v2, v4, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v2
.end method

.method public final createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;-><init>(Lorg/wikipedia/database/AppDatabase_Impl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_dailyGameHistoryDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final editSummaryDao()Lorg/wikipedia/edit/db/EditSummaryDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_editSummaryDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/edit/db/EditSummaryDao_Impl;

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
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 7
    .line 8
    const-class v1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 15
    .line 16
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-class v1, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-class v1, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-class v1, Lorg/wikipedia/search/db/RecentSearchDao_Impl;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-class v1, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const-class v1, Lorg/wikipedia/edit/db/EditSummaryDao_Impl;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-class v1, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-class v1, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-class v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-class v1, Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-class v1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-class v1, Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-class v1, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-class v1, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const-class v1, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const-class v1, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    return-object p0
.end method

.method public final historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_historyEntryDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_historyEntryWithImageDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final notificationDao()Lorg/wikipedia/notifications/db/NotificationDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_notificationDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final offlineObjectDao()Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_offlineObjectDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final pageImagesDao()Lorg/wikipedia/pageimages/db/PageImageDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_pageImageDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_readingListDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_readingListPageDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final recentSearchDao()Lorg/wikipedia/search/db/RecentSearchDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_recentSearchDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/search/db/RecentSearchDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_recommendedPageDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final talkPageSeenDao()Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_talkPageSeenDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final talkTemplateDao()Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_talkTemplateDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final topicInterestDao()Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl;->_interestTopicDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method
