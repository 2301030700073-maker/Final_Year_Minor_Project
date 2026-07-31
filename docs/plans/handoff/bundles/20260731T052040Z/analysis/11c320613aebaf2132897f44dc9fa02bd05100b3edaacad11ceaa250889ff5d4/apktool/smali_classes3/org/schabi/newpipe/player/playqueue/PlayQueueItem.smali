.class public final Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final duration:J

.field private error:Ljava/lang/Throwable;

.field private isAutoQueued:Z

.field private recoveryPosition:J

.field private final serviceId:I

.field private final streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private final thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;

.field private final uploader:Ljava/lang/String;

.field private final uploaderUrl:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$vA-o8T6BkmZw6CP1B3ol9GptCJ0(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->error:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->title:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 63
    :goto_1
    iput-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    .line 64
    iput p3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    .line 65
    iput-wide p4, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->duration:J

    .line 66
    iput-object p6, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->thumbnails:Ljava/util/List;

    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    move-object p7, v0

    .line 67
    :goto_2
    iput-object p7, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->uploader:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->uploaderUrl:Ljava/lang/String;

    .line 69
    iput-object p9, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-wide/high16 p1, -0x8000000000000000L

    .line 70
    iput-wide p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->recoveryPosition:J

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    move-object v0, p0

    .line 34
    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStartPosition()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    cmp-long p0, v1, v3

    .line 44
    .line 45
    if-lez p0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStartPosition()J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    const-wide/16 v1, 0x3e8

    .line 52
    .line 53
    mul-long/2addr p0, v1

    .line 54
    iput-wide p0, v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->recoveryPosition:J

    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 10

    .line 57
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v4

    .line 58
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v9

    move-object v0, p0

    .line 60
    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRecoveryPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->recoveryPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getServiceId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getStream()Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;

    .line 22
    .line 23
    invoke-direct {p0, v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Consumer;I)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThumbnails()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->thumbnails:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploader()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->uploader:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->uploaderUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isAutoQueued()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isAutoQueued:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    .line 6
    .line 7
    iget v2, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    return v0
.end method

.method public final setAutoQueued(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isAutoQueued:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRecoveryPosition(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->recoveryPosition:J

    .line 2
    .line 3
    return-void
.end method
