.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

.field public final synthetic f$2:Lj$/time/OffsetDateTime;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;->f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;->f$2:Lj$/time/OffsetDateTime;

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;->f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v1, v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 16
    .line 17
    iget-object v5, v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 20
    .line 21
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    const-wide/16 v8, 0x0

    .line 26
    .line 27
    cmp-long v6, v6, v8

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    if-gez v6, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v6, v2, v7}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v6, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 45
    .line 46
    invoke-virtual {v2, v6}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 55
    .line 56
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 57
    .line 58
    .line 59
    move-result-wide v10

    .line 60
    new-instance v6, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 61
    .line 62
    invoke-direct {v6, v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v6}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    :goto_0
    move-wide v13, v5

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    .line 72
    .line 73
    .line 74
    move-result-wide v10

    .line 75
    new-instance v6, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 76
    .line 77
    invoke-direct {v6, v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v6}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    goto :goto_0

    .line 85
    :goto_1
    new-instance v2, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 86
    .line 87
    const-wide/16 v5, 0x3e8

    .line 88
    .line 89
    mul-long/2addr v10, v5

    .line 90
    invoke-direct {v2, v13, v14, v10, v11}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;-><init>(JJ)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v3, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 96
    .line 97
    iget-object v5, v3, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 98
    .line 99
    new-instance v6, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;

    .line 100
    .line 101
    invoke-direct {v6, v3, v2, v7}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;I)V

    .line 102
    .line 103
    .line 104
    invoke-static {v5, v7, v4, v6}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 111
    .line 112
    .line 113
    iget-object v2, v1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 114
    .line 115
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 116
    .line 117
    invoke-direct {v3, v13, v14, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JLorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v4, v7, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    .line 125
    .line 126
    if-nez v2, :cond_1

    .line 127
    .line 128
    new-instance v12, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    .line 129
    .line 130
    const-wide/16 v16, 0x0

    .line 131
    .line 132
    iget-object v15, v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;->f$2:Lj$/time/OffsetDateTime;

    .line 133
    .line 134
    invoke-direct/range {v12 .. v17}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;-><init>(JLj$/time/OffsetDateTime;J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v12}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->insert(Ljava/lang/Object;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_2

    .line 146
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_2
    return-object v0

    .line 151
    :pswitch_0
    iget-object v1, v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v1, Lorg/schabi/newpipe/database/AppDatabase;

    .line 154
    .line 155
    new-instance v5, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;

    .line 156
    .line 157
    iget-object v0, v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;->f$2:Lj$/time/OffsetDateTime;

    .line 158
    .line 159
    invoke-direct {v5, v3, v2, v0, v4}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    new-instance v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    const/16 v2, 0xe

    .line 168
    .line 169
    invoke-direct {v0, v5, v2}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Ljava/lang/Long;

    .line 177
    .line 178
    return-object v0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
