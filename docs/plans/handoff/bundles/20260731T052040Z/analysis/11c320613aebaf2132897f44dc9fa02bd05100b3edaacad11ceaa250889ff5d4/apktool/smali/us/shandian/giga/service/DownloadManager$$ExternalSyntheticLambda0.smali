.class public final synthetic Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    .line 1
    iget p0, p0, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    return-wide p0

    .line 13
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    return-wide p0

    .line 20
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 21
    .line 22
    iget-wide p0, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    .line 23
    .line 24
    return-wide p0

    .line 25
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 26
    .line 27
    sget p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->$r8$clinit:I

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    return-wide p0

    .line 34
    :pswitch_3
    check-cast p1, Lus/shandian/giga/get/DownloadMission;

    .line 35
    .line 36
    iget-wide p0, p1, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 37
    .line 38
    return-wide p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
