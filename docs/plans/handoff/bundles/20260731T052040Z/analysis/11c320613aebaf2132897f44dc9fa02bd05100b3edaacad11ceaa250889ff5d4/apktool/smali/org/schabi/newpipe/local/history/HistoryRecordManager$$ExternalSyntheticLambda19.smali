.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 2
    .line 3
    iput-object p4, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p5, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-wide p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$2:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$2:J

    .line 4
    .line 5
    iget-object v3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 13
    .line 14
    invoke-static {p0, v3, v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$eNBP1zdXEFl1l_okXilSz2egaec(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 19
    .line 20
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 25
    .line 26
    new-instance v4, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 27
    .line 28
    invoke-direct {v4, v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    new-instance v0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 36
    .line 37
    invoke-direct {v0, v4, v5, v1, v2}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;-><init>(JJ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->isValid(J)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 53
    .line 54
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 55
    .line 56
    new-instance v2, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {v2, p0, v0, v3}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;I)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    invoke-static {v1, v3, p0, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Ljava/lang/Number;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
