.class public final synthetic Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/database/AppDatabase_Impl;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/database/AppDatabase_Impl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/database/AppDatabase_Impl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/database/AppDatabase_Impl$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/database/AppDatabase_Impl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 9
    .line 10
    new-instance v0, Lorg/wikipedia/search/db/RecentSearchDao_Impl;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lorg/wikipedia/search/db/RecentSearchDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 17
    .line 18
    new-instance v0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_1
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 25
    .line 26
    new-instance v0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_2
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 33
    .line 34
    new-instance v0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_3
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 41
    .line 42
    new-instance v0, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_4
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 49
    .line 50
    new-instance v0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :pswitch_5
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 57
    .line 58
    new-instance v0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :pswitch_6
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 65
    .line 66
    new-instance v0, Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lorg/wikipedia/categories/db/CategoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_7
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 73
    .line 74
    new-instance v0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :pswitch_8
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 81
    .line 82
    new-instance v0, Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lorg/wikipedia/notifications/db/NotificationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :pswitch_9
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 89
    .line 90
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :pswitch_a
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 97
    .line 98
    new-instance v0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :pswitch_b
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 105
    .line 106
    new-instance v0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :pswitch_c
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 113
    .line 114
    new-instance v0, Lorg/wikipedia/edit/db/EditSummaryDao_Impl;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Lorg/wikipedia/edit/db/EditSummaryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :pswitch_d
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 121
    .line 122
    new-instance v0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :pswitch_e
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 129
    .line 130
    new-instance v0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
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
