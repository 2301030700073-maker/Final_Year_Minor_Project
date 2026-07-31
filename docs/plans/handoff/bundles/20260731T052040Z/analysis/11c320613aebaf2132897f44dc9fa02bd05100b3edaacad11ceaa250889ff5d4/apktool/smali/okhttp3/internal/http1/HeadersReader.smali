.class public final Lokhttp3/internal/http1/HeadersReader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public headerLimit:J

.field public source:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http1/HeadersReader;->$r8$classId:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;I)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lokhttp3/internal/http1/HeadersReader;->$r8$classId:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    return-void
.end method

.method public constructor <init>(Lokio/RealBufferedSource;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lokhttp3/internal/http1/HeadersReader;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 11
    .line 12
    const-wide/32 v0, 0x40000

    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/feed/FeedViewModel;J)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lokhttp3/internal/http1/HeadersReader;->$r8$classId:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    iput-wide p2, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 7
    .line 8
    iget-boolean v5, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    .line 9
    .line 10
    iget-boolean v6, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    .line 11
    .line 12
    iget-boolean v0, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    .line 13
    .line 14
    iget-wide v9, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    .line 15
    .line 16
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    .line 17
    .line 18
    instance-of v2, v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    instance-of v2, v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :goto_0
    move-object v2, p0

    .line 33
    goto :goto_5

    .line 34
    :cond_1
    :goto_1
    iget-object v2, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 37
    .line 38
    iget-object v2, v2, Lorg/schabi/newpipe/local/feed/FeedViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 39
    .line 40
    iget-wide v3, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 41
    .line 42
    iget-object v7, v2, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    :goto_2
    move-object v8, p0

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    invoke-static {}, Lj$/time/OffsetDateTime;->now()Lj$/time/OffsetDateTime;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    goto :goto_2

    .line 54
    :goto_3
    iget-object p0, v7, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 55
    .line 56
    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;

    .line 57
    .line 58
    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;-><init>(JZZLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v2}, Lokhttp3/Cookie$Companion;->createMaybe(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    const-wide/16 v6, 0x0

    .line 84
    .line 85
    cmp-long p0, v4, v6

    .line 86
    .line 87
    if-eqz p0, :cond_4

    .line 88
    .line 89
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :catch_0
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    iput-boolean v3, v2, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->cancelled:Z

    .line 96
    .line 97
    iget-object p1, v2, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 98
    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    throw p0

    .line 109
    :cond_4
    :goto_4
    iget-object p0, v2, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    .line 110
    .line 111
    if-nez p0, :cond_6

    .line 112
    .line 113
    iget-object p0, v2, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->value:Ljava/lang/Object;

    .line 114
    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    move-object v0, p0

    .line 118
    :cond_5
    move-object p0, v0

    .line 119
    check-cast p0, Ljava/util/List;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :goto_5
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;

    .line 123
    .line 124
    move-object v5, p1

    .line 125
    move-wide v3, v9

    .line 126
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;Ljava/util/List;JLj$/time/OffsetDateTime;)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_6
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    throw p0
.end method

.method public clear(I)V
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lokhttp3/internal/http1/HeadersReader;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sub-int/2addr p1, v0

    .line 12
    invoke-virtual {p0, p1}, Lokhttp3/internal/http1/HeadersReader;->clear(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 17
    .line 18
    const-wide/16 v2, 0x1

    .line 19
    .line 20
    shl-long/2addr v2, p1

    .line 21
    not-long v2, v2

    .line 22
    and-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 24
    .line 25
    return-void
.end method

.method public countOnesBefore(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/http1/HeadersReader;

    .line 4
    .line 5
    const/16 v1, 0x40

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-wide v4, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 12
    .line 13
    if-lt p1, v1, :cond_0

    .line 14
    .line 15
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    shl-long p0, v2, p1

    .line 21
    .line 22
    sub-long/2addr p0, v2

    .line 23
    and-long/2addr p0, v4

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    if-ge p1, v1, :cond_2

    .line 30
    .line 31
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 32
    .line 33
    shl-long p0, v2, p1

    .line 34
    .line 35
    sub-long/2addr p0, v2

    .line 36
    and-long/2addr p0, v0

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_2
    sub-int/2addr p1, v1

    .line 43
    invoke-virtual {v0, p1}, Lokhttp3/internal/http1/HeadersReader;->countOnesBefore(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 48
    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    add-int/2addr p0, p1

    .line 54
    return p0
.end method

.method public ensureNext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/http1/HeadersReader;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lokhttp3/internal/http1/HeadersReader;

    .line 8
    .line 9
    invoke-direct {v0}, Lokhttp3/internal/http1/HeadersReader;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public get(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/http1/HeadersReader;->ensureNext()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lokhttp3/internal/http1/HeadersReader;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {p0, p1}, Lokhttp3/internal/http1/HeadersReader;->get(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 19
    .line 20
    const-wide/16 v2, 0x1

    .line 21
    .line 22
    shl-long p0, v2, p1

    .line 23
    .line 24
    and-long/2addr p0, v0

    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    cmp-long p0, p0, v0

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public getPostSlopOffset-qto3Fdw(JFZ)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iput-wide p1, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    :goto_0
    iget-object p4, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p4, Landroidx/compose/foundation/gestures/Orientation;

    .line 19
    .line 20
    if-nez p4, :cond_1

    .line 21
    .line 22
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http1/HeadersReader;->mainAxis-k-4lQ0M(J)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_1
    cmpl-float p1, p1, p3

    .line 36
    .line 37
    if-ltz p1, :cond_5

    .line 38
    .line 39
    iget-object p1, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroidx/compose/foundation/gestures/Orientation;

    .line 42
    .line 43
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 44
    .line 45
    const-wide v2, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const/16 p2, 0x20

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    shr-long v4, v0, p2

    .line 59
    .line 60
    long-to-int p4, v4

    .line 61
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 62
    .line 63
    .line 64
    move-result p4

    .line 65
    div-float/2addr p4, p1

    .line 66
    and-long/2addr v0, v2

    .line 67
    long-to-int v0, v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    div-float/2addr v0, p1

    .line 73
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    int-to-long v4, p1

    .line 78
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    int-to-long v0, p1

    .line 83
    shl-long p1, v4, p2

    .line 84
    .line 85
    and-long/2addr v0, v2

    .line 86
    or-long/2addr p1, v0

    .line 87
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    iget-wide p3, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 92
    .line 93
    invoke-static {p3, p4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide p0

    .line 97
    return-wide p0

    .line 98
    :cond_2
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http1/HeadersReader;->mainAxis-k-4lQ0M(J)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 103
    .line 104
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http1/HeadersReader;->mainAxis-k-4lQ0M(J)F

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    mul-float/2addr p4, p3

    .line 113
    sub-float/2addr p1, p4

    .line 114
    iget-wide p3, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 115
    .line 116
    iget-object v0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Landroidx/compose/foundation/gestures/Orientation;

    .line 119
    .line 120
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 121
    .line 122
    if-ne v0, v1, :cond_3

    .line 123
    .line 124
    and-long/2addr p3, v2

    .line 125
    :goto_2
    long-to-int p3, p3

    .line 126
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    shr-long/2addr p3, p2

    .line 132
    goto :goto_2

    .line 133
    :goto_3
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    .line 136
    .line 137
    if-ne p0, v1, :cond_4

    .line 138
    .line 139
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    int-to-long p0, p0

    .line 144
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    int-to-long p3, p3

    .line 149
    shl-long/2addr p0, p2

    .line 150
    and-long/2addr p3, v2

    .line 151
    or-long/2addr p0, p3

    .line 152
    return-wide p0

    .line 153
    :cond_4
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    int-to-long p3, p0

    .line 158
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    int-to-long p0, p0

    .line 163
    shl-long p2, p3, p2

    .line 164
    .line 165
    and-long/2addr p0, v2

    .line 166
    or-long/2addr p0, p2

    .line 167
    return-wide p0

    .line 168
    :cond_5
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    return-wide p0
.end method

.method public insert(IZ)V
    .locals 9

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/http1/HeadersReader;->ensureNext()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lokhttp3/internal/http1/HeadersReader;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http1/HeadersReader;->insert(IZ)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 18
    .line 19
    const-wide/high16 v2, -0x8000000000000000L

    .line 20
    .line 21
    and-long/2addr v2, v0

    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move v2, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v2, v3

    .line 33
    :goto_0
    const-wide/16 v5, 0x1

    .line 34
    .line 35
    shl-long v7, v5, p1

    .line 36
    .line 37
    sub-long/2addr v7, v5

    .line 38
    and-long v5, v0, v7

    .line 39
    .line 40
    not-long v7, v7

    .line 41
    and-long/2addr v0, v7

    .line 42
    shl-long/2addr v0, v4

    .line 43
    or-long/2addr v0, v5

    .line 44
    iput-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lokhttp3/internal/http1/HeadersReader;->set(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p0, p1}, Lokhttp3/internal/http1/HeadersReader;->clear(I)V

    .line 53
    .line 54
    .line 55
    :goto_1
    if-nez v2, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lokhttp3/internal/http1/HeadersReader;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    return-void

    .line 65
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lokhttp3/internal/http1/HeadersReader;->ensureNext()V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lokhttp3/internal/http1/HeadersReader;

    .line 71
    .line 72
    invoke-virtual {p0, v3, v2}, Lokhttp3/internal/http1/HeadersReader;->insert(IZ)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public mainAxis-k-4lQ0M(J)F
    .locals 2

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x20

    .line 10
    .line 11
    shr-long p0, p1, p0

    .line 12
    .line 13
    long-to-int p0, p0

    .line 14
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    const-wide v0, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr p1, v0

    .line 25
    long-to-int p0, p1

    .line 26
    goto :goto_0
.end method

.method public readHeaders()Lokhttp3/Headers;
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lokio/BufferedSource;

    .line 10
    .line 11
    iget-wide v3, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 12
    .line 13
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-wide v3, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    int-to-long v5, v5

    .line 24
    sub-long/2addr v3, v5

    .line 25
    iput-wide v3, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    const/4 v3, 0x4

    .line 39
    const/16 v4, 0x3a

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-static {v4, v5, v3, v2}, Lkotlin/text/StringsKt;->indexOf$default(CIILjava/lang/CharSequence;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v6, -0x1

    .line 47
    if-eq v3, v6, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v4, v2}, Lorg/jsoup/Jsoup;->commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const-string v6, ""

    .line 68
    .line 69
    if-ne v3, v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v0, v6, v2}, Lorg/jsoup/Jsoup;->commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v0, v6, v2}, Lorg/jsoup/Jsoup;->commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0
.end method

.method public remove(I)Z
    .locals 10

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/http1/HeadersReader;->ensureNext()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lokhttp3/internal/http1/HeadersReader;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {p0, p1}, Lokhttp3/internal/http1/HeadersReader;->remove(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const-wide/16 v0, 0x1

    .line 19
    .line 20
    shl-long v2, v0, p1

    .line 21
    .line 22
    iget-wide v4, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 23
    .line 24
    and-long v6, v4, v2

    .line 25
    .line 26
    const-wide/16 v8, 0x0

    .line 27
    .line 28
    cmp-long p1, v6, v8

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    move p1, v6

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move p1, v7

    .line 37
    :goto_0
    not-long v8, v2

    .line 38
    and-long/2addr v4, v8

    .line 39
    iput-wide v4, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 40
    .line 41
    sub-long/2addr v2, v0

    .line 42
    and-long v0, v4, v2

    .line 43
    .line 44
    not-long v2, v2

    .line 45
    and-long/2addr v2, v4

    .line 46
    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    or-long/2addr v0, v2

    .line 51
    iput-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 52
    .line 53
    iget-object v0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lokhttp3/internal/http1/HeadersReader;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0, v7}, Lokhttp3/internal/http1/HeadersReader;->get(I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const/16 v0, 0x3f

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lokhttp3/internal/http1/HeadersReader;->set(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Lokhttp3/internal/http1/HeadersReader;

    .line 73
    .line 74
    invoke-virtual {p0, v7}, Lokhttp3/internal/http1/HeadersReader;->remove(I)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    return p1
.end method

.method public reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lokhttp3/internal/http1/HeadersReader;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lokhttp3/internal/http1/HeadersReader;->reset()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public set(I)V
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/http1/HeadersReader;->ensureNext()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lokhttp3/internal/http1/HeadersReader;

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {p0, p1}, Lokhttp3/internal/http1/HeadersReader;->set(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    shl-long/2addr v2, p1

    .line 22
    or-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 24
    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/HeadersReader;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lokhttp3/internal/http1/HeadersReader;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lokhttp3/internal/http1/HeadersReader;

    .line 32
    .line 33
    invoke-virtual {v1}, Lokhttp3/internal/http1/HeadersReader;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "xx"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v1, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 47
    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :goto_0
    return-object p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
