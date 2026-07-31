.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public final synthetic f$2:Lj$/time/OffsetDateTime;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;->f$2:Lj$/time/OffsetDateTime;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 5
    .line 6
    iget-object v3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 14
    .line 15
    new-instance v4, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 16
    .line 17
    invoke-direct {v4, v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    iget-object v0, v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 27
    .line 28
    iget-object v2, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    .line 30
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JLorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static {v2, v1, v4, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    .line 41
    .line 42
    iget-object v8, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;->f$2:Lj$/time/OffsetDateTime;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iget-object p0, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    .line 48
    new-instance v3, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda4;

    .line 49
    .line 50
    invoke-direct {v3, v0, v2, v4}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;I)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v4, v1, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iput-object v8, v2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->accessDate:Lj$/time/OffsetDateTime;

    .line 60
    .line 61
    iget-wide v3, v2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    .line 62
    .line 63
    const-wide/16 v5, 0x1

    .line 64
    .line 65
    add-long/2addr v3, v5

    .line 66
    iput-wide v3, v2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->repeatCount:J

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->insert(Ljava/lang/Object;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance v5, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    .line 78
    .line 79
    const-wide/16 v9, 0x1

    .line 80
    .line 81
    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;-><init>(JLj$/time/OffsetDateTime;J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->insert(Ljava/lang/Object;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :goto_0
    return-object p0

    .line 93
    :pswitch_0
    iget-object v0, v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lorg/schabi/newpipe/database/AppDatabase;

    .line 96
    .line 97
    new-instance v4, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;

    .line 98
    .line 99
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;->f$2:Lj$/time/OffsetDateTime;

    .line 100
    .line 101
    invoke-direct {v4, v3, v2, p0, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    new-instance p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    const/16 v1, 0xe

    .line 110
    .line 111
    invoke-direct {p0, v4, v1}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ljava/lang/Long;

    .line 119
    .line 120
    return-object p0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
