.class final Lcom/google/android/exoplayer2/PlaybackInfo;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field public volatile bufferedPositionUs:J

.field public final discontinuityStartPositionUs:J

.field public final isLoading:Z

.field public final loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final playWhenReady:Z

.field public final playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field public final playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public volatile positionUpdateTimeMs:J

.field public volatile positionUs:J

.field public final requestedContentPositionUs:J

.field public final sleepingForOffload:Z

.field public final staticMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;

.field public volatile totalBufferedDurationUs:J

.field public final trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "JJI",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            "Z",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "ZI",
            "Lcom/google/android/exoplayer2/PlaybackParameters;",
            "JJJJZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 11
    .line 12
    iput p7, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 13
    .line 14
    iput-object p8, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 15
    .line 16
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 17
    .line 18
    iput-object p10, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 19
    .line 20
    iput-object p11, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 21
    .line 22
    iput-object p12, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 23
    .line 24
    iput-object p13, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 25
    .line 26
    iput-boolean p14, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 27
    .line 28
    iput p15, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 29
    .line 30
    move-object/from16 p1, p16

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 33
    .line 34
    move-wide/from16 p1, p17

    .line 35
    .line 36
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 37
    .line 38
    move-wide/from16 p1, p19

    .line 39
    .line 40
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 41
    .line 42
    move-wide/from16 p1, p21

    .line 43
    .line 44
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 45
    .line 46
    move-wide/from16 p1, p23

    .line 47
    .line 48
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 49
    .line 50
    move/from16 p1, p25

    .line 51
    .line 52
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 53
    .line 54
    return-void
.end method

.method public static createDummy(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 26

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 6
    .line 7
    sget-object v10, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 8
    .line 9
    sget v3, Lcom/google/common/collect/ImmutableList;->$r8$clinit:I

    .line 10
    .line 11
    sget-object v12, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    .line 12
    .line 13
    sget-object v16, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 14
    .line 15
    const-wide/16 v23, 0x0

    .line 16
    .line 17
    const/16 v25, 0x0

    .line 18
    .line 19
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v14, 0x0

    .line 30
    const/4 v15, 0x0

    .line 31
    const-wide/16 v17, 0x0

    .line 32
    .line 33
    const-wide/16 v19, 0x0

    .line 34
    .line 35
    const-wide/16 v21, 0x0

    .line 36
    .line 37
    move-object v13, v2

    .line 38
    move-object/from16 v11, p0

    .line 39
    .line 40
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public static getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public copyWithEstimatedPosition()Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    move-object v5, v3

    .line 12
    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 13
    .line 14
    move-object v7, v5

    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 16
    .line 17
    move-object v8, v7

    .line 18
    iget v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 19
    .line 20
    move-object v9, v8

    .line 21
    iget-object v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 22
    .line 23
    move-object v10, v9

    .line 24
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 25
    .line 26
    move-object v11, v10

    .line 27
    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 28
    .line 29
    move-object v12, v11

    .line 30
    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 31
    .line 32
    move-object v13, v12

    .line 33
    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 34
    .line 35
    move-object v14, v13

    .line 36
    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 37
    .line 38
    move-object v15, v14

    .line 39
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 40
    .line 41
    move-object/from16 v16, v15

    .line 42
    .line 43
    iget v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 44
    .line 45
    move-object/from16 v17, v1

    .line 46
    .line 47
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 48
    .line 49
    move-object/from16 v19, v1

    .line 50
    .line 51
    move-object/from16 v18, v2

    .line 52
    .line 53
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 54
    .line 55
    move-wide/from16 v20, v1

    .line 56
    .line 57
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 58
    .line 59
    move-object/from16 v23, v16

    .line 60
    .line 61
    move-object/from16 v16, v19

    .line 62
    .line 63
    move-wide/from16 v26, v1

    .line 64
    .line 65
    move-object/from16 v1, v17

    .line 66
    .line 67
    move-object/from16 v2, v18

    .line 68
    .line 69
    move-wide/from16 v17, v20

    .line 70
    .line 71
    move-wide/from16 v19, v26

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->getEstimatedPositionUs()J

    .line 74
    .line 75
    .line 76
    move-result-wide v21

    .line 77
    move-object/from16 v25, v23

    .line 78
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v23

    .line 83
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 84
    .line 85
    move-object/from16 v26, v25

    .line 86
    .line 87
    move/from16 v25, v0

    .line 88
    .line 89
    move-object/from16 v0, v26

    .line 90
    .line 91
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method public copyWithIsLoading(Z)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    move-object v5, v3

    .line 12
    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 13
    .line 14
    move-object v7, v5

    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 16
    .line 17
    move-object v8, v7

    .line 18
    iget v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 19
    .line 20
    move-object v9, v8

    .line 21
    iget-object v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 22
    .line 23
    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 24
    .line 25
    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 26
    .line 27
    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 28
    .line 29
    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 30
    .line 31
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 32
    .line 33
    iget v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 34
    .line 35
    move-object/from16 v16, v1

    .line 36
    .line 37
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 38
    .line 39
    move-object/from16 v18, v1

    .line 40
    .line 41
    move-object/from16 v17, v2

    .line 42
    .line 43
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 44
    .line 45
    move-wide/from16 v19, v1

    .line 46
    .line 47
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 48
    .line 49
    move-wide/from16 v21, v1

    .line 50
    .line 51
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 52
    .line 53
    move-wide/from16 v23, v1

    .line 54
    .line 55
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 56
    .line 57
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 58
    .line 59
    move/from16 v25, v0

    .line 60
    .line 61
    move-object v0, v9

    .line 62
    move/from16 v9, p1

    .line 63
    .line 64
    move-wide/from16 v26, v1

    .line 65
    .line 66
    move-object/from16 v1, v16

    .line 67
    .line 68
    move-object/from16 v2, v17

    .line 69
    .line 70
    move-object/from16 v16, v18

    .line 71
    .line 72
    move-wide/from16 v17, v19

    .line 73
    .line 74
    move-wide/from16 v19, v21

    .line 75
    .line 76
    move-wide/from16 v21, v23

    .line 77
    .line 78
    move-wide/from16 v23, v26

    .line 79
    .line 80
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    move-object v5, v3

    .line 12
    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 13
    .line 14
    move-object v7, v5

    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 16
    .line 17
    move-object v8, v7

    .line 18
    iget v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 19
    .line 20
    move-object v9, v8

    .line 21
    iget-object v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 22
    .line 23
    move-object v10, v9

    .line 24
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 25
    .line 26
    move-object v11, v10

    .line 27
    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 28
    .line 29
    move-object v12, v11

    .line 30
    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 31
    .line 32
    move-object v13, v12

    .line 33
    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 34
    .line 35
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 36
    .line 37
    iget v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 38
    .line 39
    move-object/from16 v16, v1

    .line 40
    .line 41
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 42
    .line 43
    move-object/from16 v18, v1

    .line 44
    .line 45
    move-object/from16 v17, v2

    .line 46
    .line 47
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 48
    .line 49
    move-wide/from16 v19, v1

    .line 50
    .line 51
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 52
    .line 53
    move-wide/from16 v21, v1

    .line 54
    .line 55
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 56
    .line 57
    move-wide/from16 v23, v1

    .line 58
    .line 59
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 60
    .line 61
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 62
    .line 63
    move/from16 v25, v0

    .line 64
    .line 65
    move-object v0, v13

    .line 66
    move-object/from16 v13, p1

    .line 67
    .line 68
    move-wide/from16 v26, v1

    .line 69
    .line 70
    move-object/from16 v1, v16

    .line 71
    .line 72
    move-object/from16 v2, v17

    .line 73
    .line 74
    move-object/from16 v16, v18

    .line 75
    .line 76
    move-wide/from16 v17, v19

    .line 77
    .line 78
    move-wide/from16 v19, v21

    .line 79
    .line 80
    move-wide/from16 v21, v23

    .line 81
    .line 82
    move-wide/from16 v23, v26

    .line 83
    .line 84
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 85
    .line 86
    .line 87
    return-object v0
.end method

.method public copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "JJJJ",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)",
            "Lcom/google/android/exoplayer2/PlaybackInfo;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    .line 8
    iget v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 9
    .line 10
    iget-object v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 11
    .line 12
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 13
    .line 14
    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 15
    .line 16
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 17
    .line 18
    iget v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 19
    .line 20
    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 21
    .line 22
    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v23

    .line 28
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 29
    .line 30
    move-wide/from16 v21, p2

    .line 31
    .line 32
    move-wide/from16 v19, p8

    .line 33
    .line 34
    move-object/from16 v10, p10

    .line 35
    .line 36
    move-object/from16 v11, p11

    .line 37
    .line 38
    move-object/from16 v12, p12

    .line 39
    .line 40
    move/from16 v25, v0

    .line 41
    .line 42
    move-object v0, v2

    .line 43
    move-object/from16 v16, v3

    .line 44
    .line 45
    move-wide/from16 v17, v4

    .line 46
    .line 47
    move-object/from16 v2, p1

    .line 48
    .line 49
    move-wide/from16 v3, p4

    .line 50
    .line 51
    move-wide/from16 v5, p6

    .line 52
    .line 53
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public copyWithPlayWhenReady(ZI)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    move-object v5, v3

    .line 12
    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 13
    .line 14
    move-object v7, v5

    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 16
    .line 17
    move-object v8, v7

    .line 18
    iget v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 19
    .line 20
    move-object v9, v8

    .line 21
    iget-object v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 22
    .line 23
    move-object v10, v9

    .line 24
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 25
    .line 26
    move-object v11, v10

    .line 27
    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 28
    .line 29
    move-object v12, v11

    .line 30
    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 31
    .line 32
    move-object v13, v12

    .line 33
    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 34
    .line 35
    move-object v14, v13

    .line 36
    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 37
    .line 38
    iget-object v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 39
    .line 40
    move-object/from16 v16, v1

    .line 41
    .line 42
    move-object/from16 v17, v2

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 45
    .line 46
    move-wide/from16 v18, v1

    .line 47
    .line 48
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 49
    .line 50
    move-wide/from16 v20, v1

    .line 51
    .line 52
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 53
    .line 54
    move-wide/from16 v22, v1

    .line 55
    .line 56
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 57
    .line 58
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 59
    .line 60
    move-wide/from16 v26, v1

    .line 61
    .line 62
    move-object/from16 v2, v17

    .line 63
    .line 64
    move-wide/from16 v17, v18

    .line 65
    .line 66
    move-wide/from16 v19, v20

    .line 67
    .line 68
    move-wide/from16 v21, v22

    .line 69
    .line 70
    move-wide/from16 v23, v26

    .line 71
    .line 72
    move/from16 v25, v0

    .line 73
    .line 74
    move-object v0, v14

    .line 75
    move-object/from16 v1, v16

    .line 76
    .line 77
    move/from16 v14, p1

    .line 78
    .line 79
    move-object/from16 v16, v15

    .line 80
    .line 81
    move/from16 v15, p2

    .line 82
    .line 83
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 84
    .line 85
    .line 86
    move-object v13, v0

    .line 87
    return-object v13
.end method

.method public copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    move-object v5, v3

    .line 12
    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 13
    .line 14
    move-object v7, v5

    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 16
    .line 17
    move-object v8, v7

    .line 18
    iget v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 19
    .line 20
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 21
    .line 22
    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 23
    .line 24
    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 25
    .line 26
    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 27
    .line 28
    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 29
    .line 30
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 31
    .line 32
    iget v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 33
    .line 34
    move-object/from16 v16, v1

    .line 35
    .line 36
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 37
    .line 38
    move-object/from16 v18, v1

    .line 39
    .line 40
    move-object/from16 v17, v2

    .line 41
    .line 42
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 43
    .line 44
    move-wide/from16 v19, v1

    .line 45
    .line 46
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 47
    .line 48
    move-wide/from16 v21, v1

    .line 49
    .line 50
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 51
    .line 52
    move-wide/from16 v23, v1

    .line 53
    .line 54
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 55
    .line 56
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 57
    .line 58
    move/from16 v25, v0

    .line 59
    .line 60
    move-object v0, v8

    .line 61
    move-object/from16 v8, p1

    .line 62
    .line 63
    move-wide/from16 v26, v1

    .line 64
    .line 65
    move-object/from16 v1, v16

    .line 66
    .line 67
    move-object/from16 v2, v17

    .line 68
    .line 69
    move-object/from16 v16, v18

    .line 70
    .line 71
    move-wide/from16 v17, v19

    .line 72
    .line 73
    move-wide/from16 v19, v21

    .line 74
    .line 75
    move-wide/from16 v21, v23

    .line 76
    .line 77
    move-wide/from16 v23, v26

    .line 78
    .line 79
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public copyWithPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    move-object v5, v3

    .line 12
    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 13
    .line 14
    move-object v7, v5

    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 16
    .line 17
    move-object v8, v7

    .line 18
    iget v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 19
    .line 20
    move-object v9, v8

    .line 21
    iget-object v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 22
    .line 23
    move-object v10, v9

    .line 24
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 25
    .line 26
    move-object v11, v10

    .line 27
    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 28
    .line 29
    move-object v12, v11

    .line 30
    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 31
    .line 32
    move-object v13, v12

    .line 33
    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 34
    .line 35
    move-object v14, v13

    .line 36
    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 37
    .line 38
    move-object v15, v14

    .line 39
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 40
    .line 41
    move-object/from16 v16, v15

    .line 42
    .line 43
    iget v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 44
    .line 45
    move-object/from16 v17, v1

    .line 46
    .line 47
    move-object/from16 v18, v2

    .line 48
    .line 49
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 50
    .line 51
    move-wide/from16 v19, v1

    .line 52
    .line 53
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 54
    .line 55
    move-wide/from16 v21, v1

    .line 56
    .line 57
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 58
    .line 59
    move-wide/from16 v23, v1

    .line 60
    .line 61
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 62
    .line 63
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 64
    .line 65
    move/from16 v25, v0

    .line 66
    .line 67
    move-object/from16 v0, v16

    .line 68
    .line 69
    move-object/from16 v16, p1

    .line 70
    .line 71
    move-wide/from16 v26, v1

    .line 72
    .line 73
    move-object/from16 v1, v17

    .line 74
    .line 75
    move-object/from16 v2, v18

    .line 76
    .line 77
    move-wide/from16 v17, v19

    .line 78
    .line 79
    move-wide/from16 v19, v21

    .line 80
    .line 81
    move-wide/from16 v21, v23

    .line 82
    .line 83
    move-wide/from16 v23, v26

    .line 84
    .line 85
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method

.method public copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    move-object v5, v3

    .line 12
    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 13
    .line 14
    move-object v7, v5

    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 16
    .line 17
    iget-object v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 18
    .line 19
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 20
    .line 21
    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 28
    .line 29
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 30
    .line 31
    iget v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 32
    .line 33
    move-object/from16 v16, v1

    .line 34
    .line 35
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 36
    .line 37
    move-object/from16 v18, v1

    .line 38
    .line 39
    move-object/from16 v17, v2

    .line 40
    .line 41
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 42
    .line 43
    move-wide/from16 v19, v1

    .line 44
    .line 45
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 46
    .line 47
    move-wide/from16 v21, v1

    .line 48
    .line 49
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 50
    .line 51
    move-wide/from16 v23, v1

    .line 52
    .line 53
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 54
    .line 55
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 56
    .line 57
    move/from16 v25, v0

    .line 58
    .line 59
    move-object v0, v7

    .line 60
    move/from16 v7, p1

    .line 61
    .line 62
    move-wide/from16 v26, v1

    .line 63
    .line 64
    move-object/from16 v1, v16

    .line 65
    .line 66
    move-object/from16 v2, v17

    .line 67
    .line 68
    move-object/from16 v16, v18

    .line 69
    .line 70
    move-wide/from16 v17, v19

    .line 71
    .line 72
    move-wide/from16 v19, v21

    .line 73
    .line 74
    move-wide/from16 v21, v23

    .line 75
    .line 76
    move-wide/from16 v23, v26

    .line 77
    .line 78
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method public copyWithSleepingForOffload(Z)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    move-object v5, v3

    .line 12
    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 13
    .line 14
    move-object v7, v5

    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 16
    .line 17
    move-object v8, v7

    .line 18
    iget v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 19
    .line 20
    move-object v9, v8

    .line 21
    iget-object v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 22
    .line 23
    move-object v10, v9

    .line 24
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 25
    .line 26
    move-object v11, v10

    .line 27
    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 28
    .line 29
    move-object v12, v11

    .line 30
    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 31
    .line 32
    move-object v13, v12

    .line 33
    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 34
    .line 35
    move-object v14, v13

    .line 36
    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 37
    .line 38
    move-object v15, v14

    .line 39
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 40
    .line 41
    move-object/from16 v16, v15

    .line 42
    .line 43
    iget v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 44
    .line 45
    move-object/from16 v17, v1

    .line 46
    .line 47
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 48
    .line 49
    move-object/from16 v19, v1

    .line 50
    .line 51
    move-object/from16 v18, v2

    .line 52
    .line 53
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 54
    .line 55
    move-wide/from16 v20, v1

    .line 56
    .line 57
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 58
    .line 59
    move-wide/from16 v22, v1

    .line 60
    .line 61
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 62
    .line 63
    move-wide/from16 v24, v1

    .line 64
    .line 65
    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 66
    .line 67
    move-object/from16 v2, v18

    .line 68
    .line 69
    move-wide/from16 v26, v24

    .line 70
    .line 71
    move/from16 v25, p1

    .line 72
    .line 73
    move-wide/from16 v28, v0

    .line 74
    .line 75
    move-object/from16 v0, v16

    .line 76
    .line 77
    move-object/from16 v1, v17

    .line 78
    .line 79
    move-object/from16 v16, v19

    .line 80
    .line 81
    move-wide/from16 v17, v20

    .line 82
    .line 83
    move-wide/from16 v19, v22

    .line 84
    .line 85
    move-wide/from16 v21, v26

    .line 86
    .line 87
    move-wide/from16 v23, v28

    .line 88
    .line 89
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method

.method public copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 6
    .line 7
    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 8
    .line 9
    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 10
    .line 11
    iget v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 12
    .line 13
    iget-object v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 14
    .line 15
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 16
    .line 17
    iget-object v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 18
    .line 19
    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 20
    .line 21
    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 22
    .line 23
    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 24
    .line 25
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 26
    .line 27
    iget v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 28
    .line 29
    move-object/from16 v16, v1

    .line 30
    .line 31
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 32
    .line 33
    move-object/from16 v18, v1

    .line 34
    .line 35
    move-object/from16 v17, v2

    .line 36
    .line 37
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 38
    .line 39
    move-wide/from16 v19, v1

    .line 40
    .line 41
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 42
    .line 43
    move-wide/from16 v21, v1

    .line 44
    .line 45
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 46
    .line 47
    move-wide/from16 v23, v1

    .line 48
    .line 49
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 50
    .line 51
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 52
    .line 53
    move/from16 v25, v0

    .line 54
    .line 55
    move-object/from16 v0, v16

    .line 56
    .line 57
    move-object/from16 v16, v18

    .line 58
    .line 59
    move-wide/from16 v26, v1

    .line 60
    .line 61
    move-object/from16 v1, p1

    .line 62
    .line 63
    move-object/from16 v2, v17

    .line 64
    .line 65
    move-wide/from16 v17, v19

    .line 66
    .line 67
    move-wide/from16 v19, v21

    .line 68
    .line 69
    move-wide/from16 v21, v23

    .line 70
    .line 71
    move-wide/from16 v23, v26

    .line 72
    .line 73
    invoke-direct/range {v0 .. v25}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public getEstimatedPositionUs()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackInfo;->isPlaying()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 15
    .line 16
    cmp-long v4, v0, v4

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    sub-long/2addr v4, v0

    .line 25
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-float v2, v4

    .line 30
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 31
    .line 32
    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 33
    .line 34
    mul-float/2addr v2, p0

    .line 35
    float-to-long v2, v2

    .line 36
    add-long/2addr v0, v2

    .line 37
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public updatePositionUs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUpdateTimeMs:J

    .line 8
    .line 9
    return-void
.end method
